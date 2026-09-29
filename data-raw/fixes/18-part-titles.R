# Fix 18: part titles for parts.csv (empty since the v1 split), used by the
# form outline and the data dictionaries. Titles follow the IRS forms (the v1
# data dictionary outline, docs/data_dictionary.Rmd in the v1 repository);
# 990-PF parts are numbered as on the pre-2023 form, which the table ids use,
# with the part number of the 2023 redesign in parentheses.
#   Rscript data-raw/fixes/18-part-titles.R

source("data-raw/fixes/_helpers.R")

titles <- c(
  # Form 990 (990-EZ lines are mapped into the matching 990 parts)
  "F9-P00" = "Heading (items A-O)",
  "F9-P01" = "Part I - Summary",
  "F9-P02" = "Part II - Signature Block",
  "F9-P03" = "Part III - Statement of Program Service Accomplishments",
  "F9-P04" = "Part IV - Checklist of Required Schedules",
  "F9-P05" = "Part V - Statements Regarding Other IRS Filings and Tax Compliance",
  "F9-P06" = "Part VI - Governance, Management, and Disclosure",
  "F9-P07" = "Part VII - Compensation of Officers, Directors, Trustees, Key Employees, Highest Compensated Employees, and Independent Contractors",
  "F9-P08" = "Part VIII - Statement of Revenue",
  "F9-P09" = "Part IX - Statement of Functional Expenses",
  "F9-P10" = "Part X - Balance Sheet",
  "F9-P11" = "Part XI - Reconciliation of Net Assets",
  "F9-P12" = "Part XII - Financial Statements and Reporting",
  # Schedule A
  "SA-P00" = "Heading",
  "SA-P01" = "Part I - Reason for Public Charity Status",
  "SA-P02" = "Part II - Support Schedule for Organizations Described in Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)",
  "SA-P03" = "Part III - Support Schedule for Organizations Described in Section 509(a)(2)",
  "SA-P04" = "Part IV - Supporting Organizations",
  "SA-P05" = "Part V - Type III Non-Functionally Integrated 509(a)(3) Supporting Organizations",
  "SA-P06" = "Part VI - Supplemental Information",
  # Schedule B
  "SB-P00" = "Heading - Organization Type and Filing Rules",
  "SB-P01" = "Part I - Contributors",
  "SB-P02" = "Part II - Noncash Property",
  "SB-P03" = "Part III - Exclusively Religious, Charitable, etc., Contributions to Organizations Described in Section 501(c)(7), (8), or (10)",
  # Schedule C
  "SC-P01" = "Part I - Political Campaign Activities (I-A, I-B, I-C)",
  "SC-P02" = "Part II - Lobbying Activities (II-A electing 501(h), II-B non-electing)",
  "SC-P03" = "Part III - Lobbying and Political Activities of Section 501(c)(4), (5), and (6) Organizations (III-A, III-B)",
  "SC-P04" = "Part IV - Supplemental Information",
  # Schedule D
  "SD-P01" = "Part I - Organizations Maintaining Donor Advised Funds or Other Similar Funds or Accounts",
  "SD-P02" = "Part II - Conservation Easements",
  "SD-P03" = "Part III - Organizations Maintaining Collections of Art, Historical Treasures, or Other Similar Assets",
  "SD-P04" = "Part IV - Escrow and Custodial Arrangements",
  "SD-P05" = "Part V - Endowment Funds",
  "SD-P06" = "Part VI - Land, Buildings, and Equipment",
  "SD-P07" = "Part VII - Investments - Other Securities",
  "SD-P08" = "Part VIII - Investments - Program Related",
  "SD-P09" = "Part IX - Other Assets",
  "SD-P10" = "Part X - Other Liabilities",
  "SD-P11" = "Part XI - Reconciliation of Revenue per Audited Financial Statements With Revenue per Return",
  "SD-P12" = "Part XII - Reconciliation of Expenses per Audited Financial Statements With Expenses per Return",
  "SD-P13" = "Part XIII - Supplemental Information",
  "SD-P99" = "Lines from earlier versions of the schedule (reconciliation of net assets)",
  # Schedule E
  "SE-P01" = "Part I - Schools",
  "SE-P02" = "Part II - Supplemental Information",
  # Schedule F
  "SF-P01" = "Part I - General Information on Activities Outside the United States",
  "SF-P02" = "Part II - Grants and Other Assistance to Organizations or Entities Outside the United States",
  "SF-P03" = "Part III - Grants and Other Assistance to Individuals Outside the United States",
  "SF-P04" = "Part IV - Foreign Forms",
  "SF-P05" = "Part V - Supplemental Information",
  "SF-P99" = "Lines from earlier versions of the schedule",
  # Schedule G
  "SG-P01" = "Part I - Fundraising Activities",
  "SG-P02" = "Part II - Fundraising Events",
  "SG-P03" = "Part III - Gaming",
  "SG-P04" = "Part IV - Supplemental Information",
  # Schedule H
  "SH-P01" = "Part I - Financial Assistance and Certain Other Community Benefits at Cost",
  "SH-P02" = "Part II - Community Building Activities",
  "SH-P03" = "Part III - Bad Debt, Medicare, and Collection Practices",
  "SH-P04" = "Part IV - Management Companies and Joint Ventures",
  "SH-P05" = "Part V - Facility Information",
  "SH-P06" = "Part VI - Supplemental Information",
  "SH-P99" = "Lines from earlier versions of the schedule (Part V, Section B facility policies)",
  # Schedule I
  "SI-P01" = "Part I - General Information on Grants and Assistance",
  "SI-P02" = "Part II - Grants and Other Assistance to Domestic Organizations and Domestic Governments",
  "SI-P03" = "Part III - Grants and Other Assistance to Domestic Individuals",
  "SI-P04" = "Part IV - Supplemental Information",
  "SI-P99" = "Lines from earlier versions of the schedule",
  # Schedule J
  "SJ-P01" = "Part I - Questions Regarding Compensation",
  "SJ-P02" = "Part II - Officers, Directors, Trustees, Key Employees, and Highest Compensated Employees",
  "SJ-P03" = "Part III - Supplemental Information",
  # Schedule K
  "SK-P01" = "Part I - Bond Issues",
  "SK-P02" = "Part II - Proceeds",
  "SK-P03" = "Part III - Private Business Use",
  "SK-P04" = "Part IV - Arbitrage",
  "SK-P05" = "Part V - Procedures To Undertake Corrective Action",
  "SK-P06" = "Part VI - Supplemental Information",
  # Schedule L
  "SL-P01" = "Part I - Excess Benefit Transactions",
  "SL-P02" = "Part II - Loans to and/or From Interested Persons",
  "SL-P03" = "Part III - Grants or Assistance Benefiting Interested Persons",
  "SL-P04" = "Part IV - Business Transactions Involving Interested Persons",
  "SL-P05" = "Part V - Supplemental Information",
  # Schedule M
  "SM-P01" = "Part I - Types of Property",
  "SM-P02" = "Part II - Supplemental Information",
  # Schedule N
  "SN-P01" = "Part I - Liquidation, Termination, or Dissolution",
  "SN-P02" = "Part II - Sale, Exchange, Disposition, or Other Transfer of More Than 25% of the Organization's Assets",
  "SN-P03" = "Part III - Supplemental Information",
  "SN-P99" = "Lines from earlier versions of the schedule",
  # Schedule O
  "SO-P00" = "Supplemental Information to Form 990 or 990-EZ",
  # Schedule R
  "SR-P01" = "Part I - Identification of Disregarded Entities",
  "SR-P02" = "Part II - Identification of Related Tax-Exempt Organizations",
  "SR-P03" = "Part III - Identification of Related Organizations Taxable as a Partnership",
  "SR-P04" = "Part IV - Identification of Related Organizations Taxable as a Corporation or Trust",
  "SR-P05" = "Part V - Transactions With Related Organizations",
  "SR-P06" = "Part VI - Unrelated Organizations Taxable as a Partnership",
  "SR-P07" = "Part VII - Supplemental Information",
  # Form 990-PF (pre-2023 part numbers; 2023 redesign in parentheses)
  "PF-P00" = "Heading (items A-J)",
  "PF-P01" = "Part I - Analysis of Revenue and Expenses",
  "PF-P02" = "Part II - Balance Sheets",
  "PF-P03" = "Part III - Analysis of Changes in Net Assets or Fund Balances",
  "PF-P04" = "Part IV - Capital Gains and Losses for Tax on Investment Income",
  "PF-P05" = "Part V - Qualification Under Section 4940(e) for Reduced Tax on Net Investment Income (removed after 2019)",
  "PF-P06" = "Part VI - Excise Tax Based on Investment Income (2023: Part V)",
  "PF-P07" = "Part VII-A - Statements Regarding Activities; Part VII-B - Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)",
  "PF-P08" = "Part VIII - Information About Officers, Directors, Trustees, Foundation Managers, Highly Paid Employees, and Contractors (2023: Part VII)",
  "PF-P09" = "Part IX-A - Summary of Direct Charitable Activities; Part IX-B - Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)",
  "PF-P10" = "Part X - Minimum Investment Return (2023: Part IX)",
  "PF-P11" = "Part XI - Distributable Amount (2023: Part X)",
  "PF-P12" = "Part XII - Qualifying Distributions (2023: Part XI)",
  "PF-P13" = "Part XIII - Undistributed Income (2023: Part XII)",
  "PF-P14" = "Part XIV - Private Operating Foundations (2023: Part XIII)",
  "PF-P15" = "Part XV - Supplementary Information (2023: Part XIV)",
  "PF-P16" = "Part XVI-A - Analysis of Income-Producing Activities; Part XVI-B - Relationship of Activities to the Accomplishment of Exempt Purposes (2023: Part XV)",
  "PF-P17" = "Part XVII - Information Regarding Transfers to and Transactions and Relationships With Noncharitable Exempt Organizations (2023: Part XVI)",
  "PF-P99" = "Auxiliary schedules and attachments (statements filed with the 990-PF)")

fix_step(function(s) {
  stopifnot(setequal(names(titles), s$parts$part_id))
  s$parts[, title := unname(titles[part_id])]
  s
}, reason = "Add part titles to parts.csv (empty since the v1 split) from the IRS forms, for the form outline and the data dictionaries; 990-PF parts use the pre-2023 numbering of the table ids with the 2023 part number noted.",
   evidence = "IRS Forms 990, 990-PF and Schedules A-R; v1 docs/data_dictionary.Rmd", type = "relabel", affects = FALSE)
