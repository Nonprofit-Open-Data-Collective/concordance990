# Fix 26: labels that were only a column heading.
#
# Many 990-PF variables carried the form's column heading as their label
# ("Book Value", "Adjusted Net Income", "Net Investment Income", "Amount",
# "Year 1", ...), so dozens of variables shared one label and the label did
# not say which line the value comes from. The descriptions mostly read
# "<Line> - <Column>"; the new labels are built from that (or from the xpath
# and the IRS Form 990-PF line where the description is no better) as
# "<line> - <column>" in sentence case. The same pass fixes other labels
# that repeat within a table with no way to tell the variables apart: raw
# XML tag names (BusinessNameLine1), Schedule A support-schedule rows
# labeled with their column only, Schedule A Part V carryover years copied
# from year 2, and labels left blank in the 990 header and Schedule B.
#   Rscript data-raw/fixes/26-pf-column-labels.R

source("data-raw/fixes/_helpers.R")

# "Investments; Land; Etc." -> "Investments, land, etc."
sentence <- function(x) {
  x <- gsub(";", ",", x)
  paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))
}

# Apply a named vector of new labels, checking the old ones
relabel <- function(s, new, old) {
  v <- s$variables
  stopifnot(!anyDuplicated(names(new)), all(names(new) %in% v$variable_name))
  cur <- v$label[match(names(new), v$variable_name)]
  cur[is.na(cur)] <- ""
  bad <- names(new)[!cur %in% old]
  if (length(bad)) stop("unexpected current label: ", paste(bad, collapse = ", "))
  for (n in names(new)) s <- set_var(s, n, label = new[[n]])
  s
}

# ---- 990-PF Part I: analysis of revenue and expenses ----------------------

fix_step(function(s) {
  cols <- c("Revenue and Expenses per Books", "Net Investment Income",
            "Adjusted Net Income", "Disbursements for Charitable Purposes")
  v <- s$variables[table_id == "PF-P01-T00-REVENUE-EXPENSE" & label %in% cols]
  line <- sub(" - [^-]*$", "", v$description)
  col <- sub("^.* - ", "", v$description)
  stopifnot(all(col[line != v$description] %in% cols))
  line[line == "Total"] <- "Total revenue"
  new <- setNames(paste(sentence(line), "-", tolower(col)), v$variable_name)
  # Lines 27a-c have a single column
  new[c("PF_01_EXCESS_REV_OVER_EXP_BOOKS", "PF_01_INVEST_INCOME_NET", "PF_01_INCOME_NET_ADJ")] <-
    c("Excess of revenue over expenses and disbursements (line 27a)",
      "Net investment income (line 27b)", "Adjusted net income (line 27c)")
  new["PF_03_EXCESS_REV_OVER_EXP_BOOKS"] <- "Excess of revenue over expenses and disbursements (from Part I line 27a)"
  relabel(s, new, cols)
}, reason = "Relabel 990-PF Part I amounts that were labeled with the column heading alone (revenue and expenses per books, net investment income, adjusted net income, disbursements for charitable purposes) as '<line> - <column>', taken from the descriptions.",
   evidence = "IRS Form 990-PF Part I lines 1-27, columns (a)-(d); Part III line 2", type = "relabel", affects = FALSE)

# ---- 990-PF Part II: balance sheets ---------------------------------------

fix_step(function(s) {
  cols <- c("Book Value", "Fair Market Value")
  v <- s$variables[table_id == "PF-P02-T00-BALANCE-SHEET" & label %in% cols]
  m <- regmatches(v$description, regexec("^(.*) - (Beginning|End) of Year - (Book Value|Fair Market Value)$", v$description))
  stopifnot(all(lengths(m) == 4))
  line <- vapply(m, `[`, "", 2)
  line <- sub("^(Unrestricted|Temporarily Restricted|Permanently Restricted)$", "\\1 net assets", line)
  new <- setNames(sprintf("%s - %s, %s of year", sentence(line), tolower(vapply(m, `[`, "", 4)),
                          tolower(vapply(m, `[`, "", 3))), v$variable_name)
  relabel(s, new, cols)
}, reason = "Relabel 990-PF Part II balance-sheet amounts that were labeled 'Book Value' or 'Fair Market Value' alone as '<line> - <column>, <beginning|end> of year', taken from the descriptions.",
   evidence = "IRS Form 990-PF Part II lines 1-31, columns (a)-(c)", type = "relabel", affects = FALSE)

# ---- 990-PF statements (PF_AXnn): column-only labels ----------------------

fix_step(function(s) {
  sched <- c(AX01 = "Accounting fees schedule", AX03 = "Other program-related investments schedule",
             AX04 = "Amortization schedule", AX11 = "Depreciation schedule", AX23 = "Corporate bonds schedule",
             AX24 = "Corporate stock schedule", AX26 = "Land investments schedule",
             AX27 = "Other investments schedule", AX28 = "Land, buildings, and equipment schedule",
             AX29 = "Legal fees schedule", AX33 = "Other assets schedule",
             AX34 = "Other changes in net assets schedule", AX35 = "Other decreases schedule",
             AX36 = "Other expenses schedule", AX37 = "Other income schedule",
             AX38 = "Other increases schedule", AX39 = "Other liabilities schedule",
             AX42 = "Other professional fees schedule", AX46 = "Sales of inventory schedule",
             AX49 = "Taxes schedule")
  col <- c("Revenue and Expenses per Books" = "revenue and expenses per books",
           "Net Investment Income" = "net investment income",
           "Adjusted Net Income" = "adjusted net income",
           "Disbursements for Charitable Purposes" = "disbursements for charitable purposes",
           "Amount" = "amount", "Category" = "category", "Description" = "description",
           "End of Year Book Value" = "book value, end of year",
           "End of Year Fair Market Value" = "fair market value, end of year")
  v <- s$variables[grepl("^PF_AX", variable_name) & label %in% c(names(col), "Book Value", "Fair Market Value")]
  v <- v[sub("^PF_(AX[0-9]+)_.*", "\\1", variable_name) %in% names(sched)]
  ax <- sub("^PF_(AX[0-9]+)_.*", "\\1", v$variable_name)
  cc <- col[v$label]
  # Other assets / other liabilities: "Beginning of Year - Book Value"
  bv <- v$label %in% c("Book Value", "Fair Market Value")
  cc[bv] <- sub("^(Beginning|End) of Year - (.*)$", "\\2, \\1 of year", v$description[bv])
  cc[bv] <- tolower(cc[bv])
  new <- setNames(paste(sched[ax], "-", cc), v$variable_name)
  # Government obligations: two lines, named in the descriptions
  new[c("PF_AX25_INVEST_GOVT_SEC_EOY_BV", "PF_AX25_INVEST_GOVT_SEC_EOY_FMV",
        "PF_AX25_INVEST_STATE_SEC_EOY_BV", "PF_AX25_INVEST_STATE_SEC_EOY_FMV")] <-
    c("US government obligations - book value, end of year", "US government obligations - fair market value, end of year",
      "State and local government obligations - book value, end of year", "State and local government obligations - fair market value, end of year")
  relabel(s, new, c(names(col), "Book Value", "Fair Market Value"))
}, reason = "Relabel 990-PF statement (PF_AXnn) columns that were labeled with the column heading alone ('Adjusted Net Income', 'Amount', 'Book Value', ...) as '<statement> - <column>'.",
   evidence = "Form 990-PF e-file statement schemas (AccountingFeesSchedule, TaxesSchedule, OtherAssetsSchedule, ...); xpaths in xpaths.csv", type = "relabel", affects = FALSE)

fix_step(function(s) {
  new <- c(PF_AX02_ACT_NEW_EXPLANATION = "Activities not previously reported - explanation",
           PF_AX07_CASH_DEEMED_EXPLANATION = "Cash deemed charitable - explanation",
           PF_AX08_CASH_DIST_EXPLANATION = "Cash distributions - explanation",
           PF_AX09_COMP_EXPLANATION = "Compensation explanation",
           PF_AX10_COMP_KONTR_EXPLANATION = "Contractor compensation explanation",
           PF_AX12_DISSOLUTION_EXPLANATION = "Dissolution - explanation",
           PF_AX14_COMP_EMPL_EXPLANATION = "Employee compensation explanation",
           PF_AX17_POLI_ACT_EXPLANATION = "Legislative and political activities explanation",
           PF_AX22_EXPLANATION_TEXT = "General explanation",
           PF_AX44_CAUSE_EXPLANATION = "Reasonable cause explanation",
           PF_AX45_REDUCT_EXPLANATION = "Reduction explanation",
           PF_AX47_4942A2_EXPLANATION = "Section 4942(a)(2) statement - explanation")
  s <- relabel(s, new, "Explanation")
  relabel(s, c(PF_AX22_FORM_LINE_REFERENCE = "Form and line reference"), "Return reference")
}, reason = "Name the statement in the 990-PF explanation labels ('Explanation' x12), and tell apart the two General Explanation columns that were both 'Return reference'.",
   evidence = "Form 990-PF e-file statement schemas; xpaths GeneralExplanationGrp/FormAndLineReferenceDesc and GeneralExplanation/ReturnReference", type = "relabel", affects = FALSE)

# ---- 990-PF names and addresses -------------------------------------------

fix_step(function(s) {
  who <- c(PF_07_BOOK_IN_CARE_OF = "Books in care of", PF_07_BOOK_PERS = "Person with books",
           PF_08_COMP_DTK = "Officer, director, trustee, or key employee",
           PF_08_COMP_DTK_HCE = "Highest paid employee", PF_08_COMP_KONTR = "Highest paid contractor",
           PF_15_G_FUTURE_RECIP = "Recipient of grant approved for future payment",
           PF_15_G_PAID_RECIP = "Recipient of grant paid during the year",
           PF_17_RELATIONSHIP = "Related organization (relationship schedule)",
           PF_17_TRANSFER = "Noncharitable exempt organization (transfer schedule)",
           PF_AX06_FUND_BORROW = "Borrowed funds", PF_AX09_COMP = "Compensation explanation",
           PF_AX10_COMP_KONTR = "Contractor", PF_AX12_DISSOLUTION = "Dissolution",
           PF_AX16_EXP_RESP = "Expenditure responsibility grantee",
           PF_AX19_SALE_SEC_P = "Purchaser of nonpublic securities", PF_AX20_SALE_ASSET_P = "Purchaser of other assets",
           PF_AX32_NOTE_LENDER = "Lender (mortgages and notes payable)",
           PF_AX40_NOTE_OTH_L = "Borrower (other notes and loans receivable)",
           PF_AX41_NOTE_OTH_S = "Section 501(c)(3) borrower (other notes and loans receivable)",
           PF_AX48_CONTRIBUTOR = "Substantial contributor",
           PF_AX51_TRANSF_FR_CE = "Controlled entity (transfers from)",
           PF_AX52_TRANSF_TO_CE = "Controlled entity (transfers to)")
  v <- s$variables[label %in% c("BusinessNameLine1", "BusinessNameLine2")]
  key <- sub("_NAME(_ORG)?_L[12]", "", v$variable_name)
  stopifnot(all(key %in% names(who)))
  new <- setNames(sprintf("%s - business name line %s", who[key], sub(".*([12])$", "\\1", v$label)), v$variable_name)
  s <- relabel(s, new, c("BusinessNameLine1", "BusinessNameLine2"))
  ind <- c("PF_AX19_SALE_SEC_P", "PF_AX20_SALE_ASSET_P", "PF_AX32_NOTE_LENDER", "PF_AX40_NOTE_OTH_L")
  s <- relabel(s, setNames(paste(who[ind], "- individual name"), paste0(ind, "_NAME_PERS")), "Individual")
  addr <- c(ADDR_L1 = "foreign address line 1", ADDR_L2 = "foreign address line 2", ADDR_CITY = "foreign city",
            ADDR_CNTR = "foreign country", ADDR_ZIP = "foreign postal code")
  new <- c(setNames(paste("Books in care of -", addr), paste0("PF_07_BOOK_IN_CARE_OF_", names(addr))),
           setNames(paste("Location of books -", addr), paste0("PF_07_BOOK_LOCATION_", names(addr))))
  relabel(s, new, c("AddressLine1", "AddressLine2", "City", "Country", "Postal code"))
}, reason = "Replace raw XML tag labels (BusinessNameLine1/2, 22 variables each) and bare 'Individual', 'AddressLine1', 'City', ... labels with labels that say whose name or address it is.",
   evidence = "xpaths in xpaths.csv (e.g. SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine1); IRS Form 990-PF Parts VII-A, VIII, XV, XVII", type = "relabel", affects = FALSE)

# ---- 990-PF multi-column parts -------------------------------------------

fix_step(function(s) {
  # Part V (pre-2019): section 4940(e) base period years
  p5 <- c(DIST_QUAL = "Adjusted qualifying distributions", ASSET_NOCHARIT = "Net value of noncharitable-use assets",
          DIST_RATIO = "Distribution ratio")
  g <- expand.grid(k = names(p5), y = 1:5, stringsAsFactors = FALSE)
  new <- setNames(sprintf("%s - base period year %d", p5[g$k], g$y), sprintf("PF_05_4940E_%s_CY_M%d", g$k, g$y))
  # Part XIII line 3: excess distributions carryover from prior years
  new <- c(new, setNames(sprintf("Excess distributions carryover - year %d", 1:5), sprintf("PF_13_EXCESS_DIST_CY_M%d", 1:5)))
  # Part XIV: private operating foundations, columns (a)-(e)
  p14 <- c(LESSOR_ADJ_NET = "Lesser of adjusted net income or minimum investment return",
           LESSOR_85PCT = "85% of lesser of adjusted net income or minimum investment return",
           DIST_QUAL = "Qualifying distributions",
           DIST_QUAL_UNUSED = "Qualifying distributions not used directly for exempt activities",
           DIST_QUAL_MADE = "Qualifying distributions made directly for exempt activities",
           ASSET_TOT = "Assets test: value of all assets",
           ASSET_TOT_4942J3 = "Assets test: assets qualifying under section 4942(j)(3)(B)(i)",
           ENDOW = "Endowment test: 2/3 of minimum investment return",
           SUPPORT_TOT = "Support test: total support other than gross investment income",
           SUPPORT_PUB = "Support test: public support",
           SUPPORT_LARGEST = "Support test: largest support from an exempt organization",
           SUPPORT_INVEST = "Support test: gross investment income")
  c14 <- c(CY = "current year", CY_M1 = "current year minus 1", CY_M2 = "current year minus 2",
           CY_M3 = "current year minus 3", TOT = "total")
  g <- expand.grid(k = names(p14), c = names(c14), stringsAsFactors = FALSE)
  new <- c(new, setNames(paste(p14[g$k], "-", c14[g$c]), sprintf("PF_14_POF_%s_%s", g$k, g$c)))
  new["PF_09_PROG_RLTD_INVEST_AMT_TOT"] <- "Total program-related investments"
  new[c("PF_15_G_PAID_AMT", "PF_15_G_FUTURE_AMT")] <-
    c("Grant or contribution paid during the year - amount", "Grant or contribution approved for future payment - amount")
  relabel(s, new, c(paste("Year", 1:5), "Current Year", "Total", "Amount"))
}, reason = "Relabel 990-PF amounts labeled with a column heading only ('Year 1'..'Year 5', 'Current Year', 'Total', 'Amount') in Part V (4940(e) base period), Part IX-B, Part XIII line 3, Part XIV and Part XV as '<line> - <column>'.",
   evidence = "IRS Form 990-PF Part V (2018 and earlier), Part IX-B line 3, Part XIII line 3, Part XIV lines 2-3, Part XV line 3", type = "relabel", affects = FALSE)

fix_step(function(s) {
  # Part XVI-A: analysis of income-producing activities
  line <- c(PROG = "Program service revenue", PROG_FEES = "Fees and contracts from government agencies",
            MEMBSHIP_DUE = "Membership dues and assessments",
            INT_SAVING = "Interest on savings and temporary cash investments",
            DIVIDEND_SEC = "Dividends and interest from securities",
            RENT_DEBT = "Net rental income from debt-financed property",
            RENT_NODEBT = "Net rental income from non-debt-financed property",
            RENT_PROP = "Net rental income from personal property", OTH_INVEST = "Other investment income",
            SALE_ASSET = "Gain from sales of assets other than inventory",
            EVNT_NET = "Net income from special events", INV_GRO_SALE = "Gross profit from sales of inventory",
            OTH = "Other revenue", SUBTOT = "Subtotal")
  col <- c(UBIZ_CODE = "business code", UBIZ_AMT = "unrelated business income", EXCL_CODE = "exclusion code",
           EXCL_AMT = "excluded amount", RLTD = "related or exempt function income", DESC = "description")
  old <- c("Amount", "Business code", "Exclusion code (01 through 41)",
           "Excluded by section 512; 513; or 514: Amount", "Related or exempt function income", "Description")
  v <- s$variables[grepl("^PF_16_REV_", variable_name) & label %in% old]
  m <- regmatches(v$variable_name, regexec(sprintf("^PF_16_REV_(.*)_(%s)$", paste(names(col), collapse = "|")), v$variable_name))
  stopifnot(all(lengths(m) == 3))
  k <- vapply(m, `[`, "", 2)
  stopifnot(all(k %in% names(line)))
  new <- setNames(paste(line[k], "-", col[vapply(m, `[`, "", 3)]), v$variable_name)
  relabel(s, new, old)
}, reason = "Relabel 990-PF Part XVI-A amounts and codes that were labeled with the column heading alone ('Amount', 'Business code', 'Exclusion code', ...) as '<line> - <column>'.",
   evidence = "IRS Form 990-PF Part XVI-A lines 1-12, columns (a)-(e); xpaths AnalysisIncomeProducingActy/<line>/<column>", type = "relabel", affects = FALSE)

# ---- Other forms ------------------------------------------------------------

fix_step(function(s) {
  per <- c(CY = "current tax year", CY_M1 = "current tax year minus one year", CY_M2 = "current tax year minus two years",
           CY_M3 = "current tax year minus three years", CY_M4 = "current tax year minus four years",
           TOT = "total, current and four prior years")
  rows <- c(SA_02_PUB_TOT_L123 = "Total of lines 1 through 3 (Part II line 4)",
            SA_02_TOT_AMT_L4 = "Amounts from line 4 (Part II line 7)",
            SA_03_PUB_TOT_L1_5 = "Total of lines 1 through 5 (Part III line 6)",
            SA_03_TOT_AMT_L6 = "Amounts from line 6 (Part III line 9)")
  g <- expand.grid(r = names(rows), p = names(per), stringsAsFactors = FALSE)
  nm <- sprintf("%s_%s", g$r, g$p)
  nm[nm == "SA_02_TOT_AMT_L4_TOT"] <- "SA_02_TOT_AMT_L4_CY_TOT"
  s <- relabel(s, setNames(paste(rows[g$r], "-", per[g$p]), nm),
               c("Total public support during the current tax year",
                 paste("Total public support during the current tax year minus", c("one year", "two years", "three years", "four years")),
                 "Total public support during the current tax year and the four years prior"))
  # Part V Section E: carryover years were copied from year 2 (labels) or year 3 (descriptions)
  for (y in 1:5) {
    s <- set_var(s, sprintf("SA_05_DIST_ALLOC_EXCESS_CY_M%d", y),
                 label = sprintf("Excess distributions carryover - year %d", y),
                 description = sprintf("Excess distributions carryover - year %d", y))
    s <- set_var(s, sprintf("SA_05_DIST_ALLOC_EXCESS_NY_M%d", y),
                 label = sprintf("Excess distributions carryover to next year - excess from year %d", y),
                 description = sprintf("Excess from year %d", y))
  }
  s
}, reason = "Schedule A: the Part II/III support-schedule totals were labeled 'Total public support during the current tax year ...' for both the total row and the 'amounts from line 4/6' row; label them by row and column. Part V Section E carryover years 2-5 had copies of the year-2 label (and year-3 description); label each by its year as in the xpath.",
   evidence = "IRS Schedule A (Form 990) Part II lines 4 and 7, Part III lines 6 and 9; xpaths ExcessDistributionCyovYr1-5Amt and ExcessFromYear1-5Amt", type = "relabel", affects = FALSE)

fix_step(function(s) {
  hd <- c(F9_00_DISASTER_RELIEF = "Disaster relief text",
          F9_00_FORM_8822B_X = "Form 8822-B (change of address) attached",
          F9_00_IRS_RESP_PARTY_INFO_CURR_X = "IRS responsible party information current",
          F9_00_IRS_SEC_FILING_LIC_TYPE = "Filing license type code",
          F9_00_IRS_SEC_IP_ADDR = "Filer IP address", F9_00_IRS_SEC_IP_DATE = "Filer IP date",
          F9_00_IRS_SEC_IP_TIME = "Filer IP time", F9_00_IRS_SEC_IP_TIME_ZONE = "Filer IP time zone",
          F9_00_IRS_TRUST_AUTENTICATED_X = "Authentication assurance level",
          F9_00_IRS_TRUST_CUSTOMER_X = "Trusted customer code",
          F9_00_IRS_TRUST_FED_ASSURANCE_X = "Federated assurance level",
          F9_00_IRS_TRUST_IDENTITY_X = "Identity assurance level",
          F9_00_IRS_TRUST_OOB_VERIFIED_X = "Out-of-band security verification code",
          F9_00_IRS_TRUST_PROFILE_CHANGE_X = "Profile email address changed",
          F9_00_IRS_TRUST_PW_CHANGE_X = "Profile password changed",
          F9_00_IRS_TRUST_RQR_OOB_X = "Last submission required out-of-band verification",
          F9_00_IRS_TRUST_USRNAME_CHANGE_X = "Profile user name changed")
  s <- relabel(s, hd, "")
  sb <- c(SB_01_CONTRIBUTOR_ADDR_CITY = "Contributor address - city",
          SB_01_CONTRIBUTOR_ADDR_L1 = "Contributor address - line 1",
          SB_01_CONTRIBUTOR_ADDR_L2 = "Contributor address - line 2",
          SB_01_CONTRIBUTOR_ADDR_STATE = "Contributor address - state",
          SB_01_CONTRIBUTOR_ADDR_ZIP = "Contributor address - ZIP code",
          SB_01_CONTRIBUTOR_AMOUNT = "Contributor total contributions",
          SB_01_CONTRIBUTOR_NAME_L1 = "Contributor name - business, line 1")
  s <- relabel(s, sb, "")
  for (n in names(sb)) if (s$variables[variable_name == n, is.na(description) | description == ""]) s <- set_var(s, n, description = sb[[n]])
  s <- relabel(s, c(SH_05_EXPLANATION_TEXT = "Form, part, and line number reference explanation"),
               "Form, part, and line number reference")
  relabel(s, c(SH_06_EXPLANATION_ADDITIONAL = "Additional explanations (2009 form)"), "Additional explanations")
}, reason = "Fill blank labels in the 990 header (e-file security and trusted-customer fields) and Schedule B Part I (contributor name, address and total contributions), and tell apart two Schedule H supplemental-information pairs that shared a label.",
   evidence = "xpaths in xpaths.csv (ReturnHeader/FilingSecurityInformation, AdditionalFilerInformation/TrustedCustomerGrp; IRS990ScheduleB/ContributorInfo); IRS Schedule B Part I columns (b)-(c); Schedule H Parts V-C and VI", type = "relabel", affects = FALSE)
