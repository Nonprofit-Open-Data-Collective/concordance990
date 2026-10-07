# Data dictionary: Form 990 and 990-EZ

This dictionary documents every variable of the **990 / 990-EZ research
database**: the Form 990, the 990-EZ and Schedules A to R. It is
generated from the concordance with `data_dictionary("F990")`, so it
always matches the package. The 990-PF has [its own
dictionary](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.md);
the
[outline](https://nonprofit-open-data-collective.github.io/concordance990/articles/form-outline.md)
lists every part and table on one page.

## Reading the dictionary

**Variables and fields.** A variable is not a field on one form. It
pools every xpath that records the same thing: the 990 and 990-EZ
versions of a line (for example total revenue), and the element names of
different schema years (the IRS renamed most elements in 2013). A
variable that exists only on the full 990 (the number of volunteers,
say) is missing for 990-EZ filers.

**Names** follow `FF_PP_NAME`:

- `FF` is the form: `F9` for the Form 990 and 990-EZ (and the return
  header), `SA` to `SR` for Schedules A to R.
- `PP` is the part of the form (`00` for the heading, `01` for Part I,
  …; `99` for lines from earlier versions of a schedule).
- `NAME` describes the field; `_X` marks a checkbox, `_CY`/`_PY` current
  and prior year, `_BOY`/`_EOY` beginning and end of year.

**Scope** says which returns report the variable: *header* (all returns,
including the 990-PF), *990* (full form only), *990-EZ* (EZ only) or
*990 + 990-EZ*. 990-EZ lines are mapped into the matching part of the
990.

**Tables.** Each variable is a column of one table. *ONE* tables have
one row per filing; *MANY* tables have one row per repeated item (a
person, a grant recipient, a facility). The Part III program tables
share variable names on purpose, so the programs can be stacked.

**Type** is `numeric`, `text`, `checkbox` or `date`; identifiers such as
EINs and ZIP codes are text. A list marks a field whose repeated values
are joined into one cell (for example the states where the return is
filed).

**Location** is the form, part and line code of the variable. Each table
is a block headed by its name and cardinality: ONE (one row per filing)
or MANY (one row per repeated item).

## Contents

| Form | Filed with | Tables | Variables | Xpaths |
|:---|:---|---:|:---|:---|
| Form 990 / 990-EZ: Return of Organization Exempt From Income Tax | 990 and 990-EZ | 29 | 704 | 2,443 |
| Schedule A: Public Charity Status and Public Support | 990, 990-EZ | 10 | 329 | 720 |
| Schedule B: Schedule of Contributors | 990, 990-EZ, 990-PF | 5 | 38 | 61 |
| Schedule C: Political Campaign and Lobbying Activities | 990, 990-EZ | 6 | 121 | 369 |
| Schedule D: Supplemental Financial Statements | 990 | 20 | 160 | 436 |
| Schedule E: Schools | 990, 990-EZ | 2 | 27 | 70 |
| Schedule F: Statement of Activities Outside the United States | 990 | 8 | 44 | 118 |
| Schedule G: Supplemental Information Regarding Fundraising or Gaming Activities | 990, 990-EZ | 6 | 139 | 482 |
| Schedule H: Hospitals | 990 | 11 | 371 | 876 |
| Schedule I: Grants and Other Assistance to Organizations, Governments, and Individuals in the United States | 990 | 6 | 29 | 102 |
| Schedule J: Compensation Information | 990 | 3 | 48 | 121 |
| Schedule K: Supplemental Information on Tax-Exempt Bonds | 990 | 6 | 71 | 152 |
| Schedule L: Transactions With Interested Persons | 990, 990-EZ | 7 | 39 | 108 |
| Schedule M: Noncash Contributions | 990 | 3 | 107 | 315 |
| Schedule N: Liquidation, Termination, Dissolution, or Significant Disposition of Assets | 990, 990-EZ | 6 | 50 | 220 |
| Schedule O: Supplemental Information to Form 990 or 990-EZ | 990, 990-EZ | 1 | 4 | 6 |
| Schedule R: Related Organizations and Unrelated Partnerships | 990 | 8 | 125 | 417 |

## Form 990 / 990-EZ: Return of Organization Exempt From Income Tax

*Filed with: 990 and 990-EZ. 704 variables in 29 tables.*

### Heading (items A-O)

`F9-P00-T00-HEADER`ONEone row per filing

[TABLE]

`F9-P00-T01-AFFILIATE-LISTING`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `F9_00_AFFIL_ADDR_CITY` | Group return - subordinate city | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_ADDR_L1` | Group return - subordinate street address line 1 | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_ADDR_L2` | Group return - subordinate street address line 2 | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_ADDR_STATE` | Group return - subordinate state | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_ADDR_ZIP` | Group return - subordinate ZIP code | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_EIN` | Group return - subordinate (affiliate) EIN | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_NAME_CTRL` | Group return - subordinate name control | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_NAME_L1` | Group return - subordinate name line 1 | F990-PC-PART-00 | text | header |
| `F9_00_AFFIL_NAME_L2` | Group return - subordinate name line 2 | F990-PC-PART-00 | text | header |

### Part I - Summary

`F9-P01-T00-SUMMARY`ONEone row per filing

[TABLE]

`F9-P01-T00-SUMMARY-EZ`ONEone row per filing

[TABLE]

### Part II - Signature Block

`F9-P02-T00-SIGNATURE`ONEone row per filing

[TABLE]

### Part III - Statement of Program Service Accomplishments

`F9-P03-T00-MISSION`ONEone row per filing

[TABLE]

`F9-P03-T00-PROGRAM-ONE`ONEone row per filing

[TABLE]

`F9-P03-T00-PROGRAM-THREE`ONEone row per filing

[TABLE]

`F9-P03-T00-PROGRAM-TWO`ONEone row per filing

[TABLE]

`F9-P03-T00-PROGRAMS`ONEone row per filing

[TABLE]

`F9-P03-T01-PROGRAMS-OTHER`MANYone row per repeated item

[TABLE]

`F9-P03-T02-PROGRAMS-EZ`MANYone row per repeated item

[TABLE]

### Part IV - Checklist of Required Schedules

`F9-P04-T00-REQUIRED-SCHEDULES`ONEone row per filing

[TABLE]

`F9-P04-T00-REQUIRED-SCHEDULES-EZ`ONEone row per filing

[TABLE]

### Part V - Statements Regarding Other IRS Filings and Tax Compliance

`F9-P05-T00-OTHER-IRS-FILING`ONEone row per filing

[TABLE]

### Part VI - Governance, Management, and Disclosure

`F9-P06-T00-GOVERNANCE`ONEone row per filing

[TABLE]

`F9-P06-T00-GOVERNANCE-EZ`ONEone row per filing

[TABLE]

### Part VII - Compensation of Officers, Directors, Trustees, Key Employees, Highest Compensated Employees, and Independent Contractors

`F9-P07-T00-DIR-TRUST-KEY`ONEone row per filing

[TABLE]

`F9-P07-T01-COMPENSATION`MANYone row per repeated item

[TABLE]

`F9-P07-T01-COMPENSATION-HCE-EZ`MANYone row per repeated item

[TABLE]

`F9-P07-T02-CONTRACTORS`MANYone row per repeated item

[TABLE]

### Part VIII - Statement of Revenue

`F9-P08-T00-REVENUE`ONEone row per filing

[TABLE]

`F9-P08-T01-REVENUE-PROGRAMS`MANYone row per repeated item

[TABLE]

`F9-P08-T02-REVENUE-MISC`MANYone row per repeated item

[TABLE]

### Part IX - Statement of Functional Expenses

`F9-P09-T00-EXPENSES`ONEone row per filing

[TABLE]

`F9-P09-T01-EXPENSES-OTHER`MANYone row per repeated item

[TABLE]

### Part X - Balance Sheet

`F9-P10-T00-BALANCE-SHEET`ONEone row per filing

[TABLE]

### Part XI - Reconciliation of Net Assets

`F9-P11-T00-ASSETS`ONEone row per filing

[TABLE]

### Part XII - Financial Statements and Reporting

`F9-P12-T00-FINANCIAL-REPORTING`ONEone row per filing

[TABLE]

## Schedule A: Public Charity Status and Public Support

*Filed with: 990, 990-EZ. 329 variables in 10 tables.*

### Heading

`SA-P00-T00-HEADER`ONEone row per filing

[TABLE]

### Part I - Reason for Public Charity Status

`SA-P01-T00-PUBLIC-CHARITY-STATUS`ONEone row per filing

[TABLE]

`SA-P01-T01-PUBLIC-CHARITY-STATUS`MANYone row per repeated item

[TABLE]

`SA-P01-T02-HOSPITAL-NAME-ADDRESS`MANYone row per repeated item

[TABLE]

`SA-P01-T03-AGRI-RESEARCH-UNIV`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SA_01_PCSTAT_AGRI_UNIV_CITY` | Agricultural research org - college/university city (Part I line 9) | SCHED-A-PART-01 | text | 990 + 990-EZ |
| `SA_01_PCSTAT_AGRI_UNIV_CNTR` | Agricultural research org - college/university country (Part I line 9) | SCHED-A-PART-01 | text | 990 + 990-EZ |
| `SA_01_PCSTAT_AGRI_UNIV_NAME_L1` | Agricultural research org - college/university name line 1 (Part I line 9) | SCHED-A-PART-01 | text | 990 + 990-EZ |
| `SA_01_PCSTAT_AGRI_UNIV_NAME_L2` | Agricultural research org - college/university name line 2 (Part I line 9) | SCHED-A-PART-01 | text | 990 + 990-EZ |
| `SA_01_PCSTAT_AGRI_UNIV_STATE` | Agricultural research org - college/university state (Part I line 9) | SCHED-A-PART-01 | text | 990 + 990-EZ |

### Part II - Support Schedule for Organizations Described in Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

`SA-P02-T00-SUPPORT_SCHEDULE_170`ONEone row per filing

[TABLE]

### Part III - Support Schedule for Organizations Described in Section 509(a)(2)

`SA-P03-T00-SUPPORT_SCHEDULE_509`ONEone row per filing

[TABLE]

### Part IV - Supporting Organizations

`SA-P04-T00-SUPPORT-ORGS`ONEone row per filing

[TABLE]

### Part V - Type III Non-Functionally Integrated 509(a)(3) Supporting Organizations

`SA-P05-T00-SUPPORT-ORGS`ONEone row per filing

[TABLE]

### Part VI - Supplemental Information

`SA-P06-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule B: Schedule of Contributors

*Filed with: 990, 990-EZ, 990-PF. 38 variables in 5 tables.*

### Part I - Contributors

`SB-P01-T01-CONTRIBUTORS`MANYone row per repeated item

[TABLE]

### Heading - Organization Type and Filing Rules

`SB-P00-T00-HEADER`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SB_00_GENERAL_RULE_X` | General Rule applies (contributor gave \$5,000 or more) | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |
| `SB_00_ORG_TYPE_4947A1_PF_X` | Organization type: 4947(a)(1) nonexempt charitable trust treated as a private foundation | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |
| `SB_00_ORG_TYPE_501C3_EXEMPT_PF_X` | Organization type: 501(c)(3) exempt private foundation | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |
| `SB_00_ORG_TYPE_501C3_TAX_PF_X` | Organization type: 501(c)(3) taxable private foundation | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |
| `SB_00_ORG_TYPE_501C_X` | Organization type: 501(c) organization (subsection in attribute organization501cTypeTxt) | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |
| `SB_00_SPECIAL_RULE_33PCT_X` | Special Rule: 501(c)(3) org meeting the 33-1/3% support test | SCHED-B-PART-01 | checkbox | 990 + 990-EZ |

### Part II - Noncash Property

`SB-P02-T01-NONCASH-PROPERTY`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SB_02_NONCASH_CONTRIBUTOR_NUM` | Noncash property: contributor number from Part I | SCHED-B-PART-01 | numeric | 990 + 990-EZ |
| `SB_02_NONCASH_DATE_RECEIVED` | Date noncash property received | SCHED-B-PART-01 | date | 990 + 990-EZ |
| `SB_02_NONCASH_PROP_DESC` | Description of noncash property given | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_02_NONCASH_PROP_FMV` | FMV (or estimate) of noncash property | SCHED-B-PART-01 | numeric | 990 + 990-EZ |

### Part III - Exclusively Religious, Charitable, etc., Contributions to Organizations Described in Section 501(c)(7), (8), or (10)

`SB-P03-T01-EXCLUSIVELY-RELIGIOUS`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SB_03_CONTRIBUTOR_NUM` | Exclusively religious etc. gift: contributor number from Part I | SCHED-B-PART-01 | numeric | 990 + 990-EZ |
| `SB_03_GIFT_HOW_HELD` | Description of how gift is held | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_GIFT_PURPOSE` | Purpose of gift | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_GIFT_USE` | Use of gift | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_ADDR_CITY` | Transferee address - city | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_ADDR_CNTR` | Transferee address - country | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_ADDR_L1` | Transferee address - line 1 | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_ADDR_STATE` | Transferee address - state/province | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_ADDR_ZIP` | Transferee address - ZIP/postal code | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_NAME_ORG_L1` | Transferee name - business, line 1 | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_NAME_PERS` | Transferee name - individual | SCHED-B-PART-01 | text | 990 + 990-EZ |
| `SB_03_TRANSFEREE_RELATIONSHIP` | Relationship of transferor to transferee | SCHED-B-PART-01 | text | 990 + 990-EZ |

`SB-P03-T00-EXCLUSIVELY-RELIGIOUS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SB_03_CONTR_UNDER_1000_TOT` | Total of exclusively religious, charitable, etc. contributions of \$1,000 or less | SCHED-B-PART-01 | numeric | 990 + 990-EZ |

## Schedule C: Political Campaign and Lobbying Activities

*Filed with: 990, 990-EZ. 121 variables in 6 tables.*

### Part I - Political Campaign Activities (I-A, I-B, I-C)

`SC-P01-T00-LOBBY`ONEone row per filing

[TABLE]

`SC-P01-T01-POLITICAL-ORGS-INFO`MANYone row per repeated item

[TABLE]

### Part II - Lobbying Activities (II-A electing 501(h), II-B non-electing)

`SC-P02-T00-LOBBY`ONEone row per filing

[TABLE]

`SC-P02-T01-AFFILIATED-GROUP`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SC_02_AFFIL_ADDR_CITY` | Affiliated group member city | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_ADDR_L1` | Affiliated group member street address line 1 | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_ADDR_L2` | Affiliated group member street address line 2 | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_ADDR_STATE` | Affiliated group member state | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_ADDR_ZIP` | Affiliated group member ZIP code | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_EIN` | Affiliated group member EIN (Schedule C Part II-A affiliated group schedule) | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_ELECTING_X` | Affiliated group member is an electing (501(h)) organization | SCHED-C-PART-02-A | checkbox | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_DIRECT_LOB` | Affiliated member - total direct lobbying expenditures (line 1b) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_GRASS_LOB` | Affiliated member - total grassroots lobbying expenditures (line 1a) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_GRASS_M_NONTAX` | Affiliated member - grassroots lobbying minus grassroots nontaxable amount (line 1h) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_GRASS_NONTAX` | Affiliated member - grassroots nontaxable amount (line 1g) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_LOB_M_NONTAX` | Affiliated member - total lobbying expenditures minus lobbying nontaxable amount (line 1i) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_LOB_NONTAX` | Affiliated member - lobbying nontaxable amount (line 1f) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_OTH_EXEMPT` | Affiliated member - other exempt purpose expenditures (line 1d) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_SHARE_EXCESS` | Affiliated member - share of excess lobbying expenditures | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_TOT_EXEMPT` | Affiliated member - total exempt purpose expenditures (line 1e) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_EXP_TOT_LOB` | Affiliated member - total lobbying expenditures (line 1c) | SCHED-C-PART-02-A | numeric | 990 + 990-EZ |
| `SC_02_AFFIL_NAME_L1` | Affiliated group member name line 1 | SCHED-C-PART-02-A | text | 990 + 990-EZ |
| `SC_02_AFFIL_NAME_L2` | Affiliated group member name line 2 | SCHED-C-PART-02-A | text | 990 + 990-EZ |

### Part III - Lobbying and Political Activities of Section 501(c)(4), (5), and (6) Organizations (III-A, III-B)

`SC-P03-T00-LOBBY`ONEone row per filing

[TABLE]

### Part IV - Supplemental Information

`SC-P04-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule D: Supplemental Financial Statements

*Filed with: 990. 160 variables in 20 tables.*

### Part I - Organizations Maintaining Donor Advised Funds or Other Similar Funds or Accounts

`SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`ONEone row per filing

[TABLE]

### Part II - Conservation Easements

`SD-P02-T00-CONSERV-EASEMENTS`ONEone row per filing

[TABLE]

### Part III - Organizations Maintaining Collections of Art, Historical Treasures, or Other Similar Assets

`SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`ONEone row per filing

[TABLE]

### Part IV - Escrow and Custodial Arrangements

`SD-P04-T00-ESCROW-CUSTODIAL-ARRANGEMENTS`ONEone row per filing

[TABLE]

### Part V - Endowment Funds

`SD-P05-T00-ENDOWMENT`ONEone row per filing

[TABLE]

### Part VI - Land, Buildings, and Equipment

`SD-P06-T00-LAND-BLDG-EQUIP`ONEone row per filing

[TABLE]

### Part VII - Investments - Other Securities

`SD-P07-T00-INVESTMENTS-SECURITIES`ONEone row per filing

[TABLE]

`SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES`ONEone row per filing

[TABLE]

`SD-P07-T01-INVESTMENTS-OTH-EQUITY`ONEone row per filing

[TABLE]

`SD-P07-T01-INVESTMENTS-OTH-SECURITIES`MANYone row per repeated item

[TABLE]

### Part VIII - Investments - Program Related

`SD-P08-T00-INVESTMENTS-PROG-RLTD`ONEone row per filing

[TABLE]

`SD-P08-T01-INVESTMENTS-PROG-RLTD`MANYone row per repeated item

[TABLE]

### Part IX - Other Assets

`SD-P09-T00-OTH-ASSETS`ONEone row per filing

[TABLE]

`SD-P09-T01-OTH-ASSETS`MANYone row per repeated item

[TABLE]

### Part X - Other Liabilities

`SD-P10-T00-OTH-LIABILITIES`ONEone row per filing

[TABLE]

`SD-P10-T01-OTH-LIABILITIES`MANYone row per repeated item

[TABLE]

### Part XI - Reconciliation of Revenue per Audited Financial Statements With Revenue per Return

`SD-P11-T00-RECONCILIATION-REVENUE`ONEone row per filing

[TABLE]

### Part XII - Reconciliation of Expenses per Audited Financial Statements With Expenses per Return

`SD-P12-T00-RECONCILIATION-EXPENSES`ONEone row per filing

[TABLE]

### Part XIII - Supplemental Information

`SD-P13-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

### Lines from earlier versions of the schedule (reconciliation of net assets)

`SD-P99-T00-RECONCILIATION-NETASSETS`ONEone row per filing

[TABLE]

## Schedule E: Schools

*Filed with: 990, 990-EZ. 27 variables in 2 tables.*

### Part I - Schools

`SE-P01-T00-SCHOOLS`ONEone row per filing

[TABLE]

### Part II - Supplemental Information

`SE-P02-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule F: Statement of Activities Outside the United States

*Filed with: 990. 44 variables in 8 tables.*

### Part I - General Information on Activities Outside the United States

`SF-P01-T00-FRGN-ACTS`ONEone row per filing

[TABLE]

`SF-P01-T01-FRGN-ACTS-BY-REGION`MANYone row per repeated item

[TABLE]

### Part II - Grants and Other Assistance to Organizations or Entities Outside the United States

`SF-P02-T00-FRGN-ORG-GRANTS`ONEone row per filing

[TABLE]

`SF-P02-T01-FRGN-ORG-GRANTS`MANYone row per repeated item

[TABLE]

### Part III - Grants and Other Assistance to Individuals Outside the United States

`SF-P03-T01-FRGN-INDIV-GRANTS`MANYone row per repeated item

[TABLE]

### Part IV - Foreign Forms

`SF-P04-T00-FRGN-INTERESTS`ONEone row per filing

[TABLE]

### Part V - Supplemental Information

`SF-P05-T99-EXPLANATION-TEXT`MANYone row per repeated item

[TABLE]

### Lines from earlier versions of the schedule

`SF-P99-T00-FRGN-ORG-GRANTS`ONEone row per filing

[TABLE]

## Schedule G: Supplemental Information Regarding Fundraising or Gaming Activities

*Filed with: 990, 990-EZ. 139 variables in 6 tables.*

### Part I - Fundraising Activities

`SG-P01-T00-FUNDRAISING-ACTS`ONEone row per filing

[TABLE]

`SG-P01-T01-FUNDRAISERS-INFO`MANYone row per repeated item

[TABLE]

### Part II - Fundraising Events

`SG-P02-T00-FUNDRAISING-EVENTS`ONEone row per filing

[TABLE]

`SG-P02-T01-FUNDRAISING-EVENTS`ONEone row per filing

[TABLE]

### Part III - Gaming

`SG-P03-T00-GAMING`ONEone row per filing

[TABLE]

### Part IV - Supplemental Information

`SG-P04-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule H: Hospitals

*Filed with: 990. 371 variables in 11 tables.*

### Part I - Financial Assistance and Certain Other Community Benefits at Cost

`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`ONEone row per filing

[TABLE]

### Part II - Community Building Activities

`SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`ONEone row per filing

[TABLE]

### Part III - Bad Debt, Medicare, and Collection Practices

`SH-P03-T00-FAP-COMMUNITY-BENEFIT-POLICY`ONEone row per filing

[TABLE]

### Part IV - Management Companies and Joint Ventures

`SH-P04-T01-COMPANY-JOINT-VENTURES`MANYone row per repeated item

[TABLE]

### Part V - Facility Information

`SH-P05-T00-FAP-COMMUNITY-BENEFIT-POLICY`ONEone row per filing

[TABLE]

`SH-P05-T01-HOSPITAL-FACILITY`MANYone row per repeated item

[TABLE]

`SH-P05-T02-NON-HOSPITAL-FACILITY`MANYone row per repeated item

[TABLE]

`SH-P05-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

`SH-P05-T03-FACILITY-POLICIES-PRACTICES`MANYone row per repeated item

[TABLE]

### Part VI - Supplemental Information

`SH-P06-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

### Lines from earlier versions of the schedule (Part V, Section B facility policies)

`SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY`MANYone row per repeated item

[TABLE]

## Schedule I: Grants and Other Assistance to Organizations, Governments, and Individuals in the United States

*Filed with: 990. 29 variables in 6 tables.*

### Part I - General Information on Grants and Assistance

`SI-P01-T00-GRANTS-INFO`ONEone row per filing

[TABLE]

### Part II - Grants and Other Assistance to Domestic Organizations and Domestic Governments

`SI-P02-T00-GRANTS-US-ORGS-GOVTS`ONEone row per filing

[TABLE]

`SI-P02-T01-GRANTS-US-ORGS-GOVTS`MANYone row per repeated item

[TABLE]

### Part III - Grants and Other Assistance to Domestic Individuals

`SI-P03-T01-GRANTS-US-INDIV`MANYone row per repeated item

[TABLE]

### Part IV - Supplemental Information

`SI-P04-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

### Lines from earlier versions of the schedule

`SI-P99-T00-GRANTS-US-ORGS-GOVTS`ONEone row per filing

[TABLE]

## Schedule J: Compensation Information

*Filed with: 990. 48 variables in 3 tables.*

### Part I - Questions Regarding Compensation

`SJ-P01-T00-COMPENSATION`ONEone row per filing

[TABLE]

### Part II - Officers, Directors, Trustees, Key Employees, and Highest Compensated Employees

`SJ-P02-T01-COMPENSATION-DTK`MANYone row per repeated item

[TABLE]

### Part III - Supplemental Information

`SJ-P03-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule K: Supplemental Information on Tax-Exempt Bonds

*Filed with: 990. 71 variables in 6 tables.*

### Part I - Bond Issues

`SK-P01-T01-BOND-ISSUES`MANYone row per repeated item

[TABLE]

### Part II - Proceeds

`SK-P02-T01-BOND-PROCEEDS`MANYone row per repeated item

[TABLE]

### Part III - Private Business Use

`SK-P03-T01-BOND-PRIVATE-BIZ-USE`MANYone row per repeated item

[TABLE]

### Part IV - Arbitrage

`SK-P04-T01-BOND-ARBITRAGE`MANYone row per repeated item

[TABLE]

### Part V - Procedures To Undertake Corrective Action

`SK-P05-T01-PROCEDURE-CORRECTIVE-ACT`MANYone row per repeated item

[TABLE]

### Part VI - Supplemental Information

`SK-P06-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule L: Transactions With Interested Persons

*Filed with: 990, 990-EZ. 39 variables in 7 tables.*

### Part I - Excess Benefit Transactions

`SL-P01-T00-EXCESS-BENEFIT-TRANSAC`ONEone row per filing

[TABLE]

`SL-P01-T01-EXCESS-BENEFIT-TRANSAC`MANYone row per repeated item

[TABLE]

### Part II - Loans to and/or From Interested Persons

`SL-P02-T00-LOANS-INTERESTED-PERS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `SL_02_LOAN_BALANCE_DUE_TOT` | Total balance due | SCHED-L-PART-02-COL-F-TOT | numeric | 990 + 990-EZ |

`SL-P02-T01-LOANS-INTERESTED-PERS`MANYone row per repeated item

[TABLE]

### Part III - Grants or Assistance Benefiting Interested Persons

`SL-P03-T01-GRANTS-INTERESTED-PERS`MANYone row per repeated item

[TABLE]

### Part IV - Business Transactions Involving Interested Persons

`SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`MANYone row per repeated item

[TABLE]

### Part V - Supplemental Information

`SL-P05-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule M: Noncash Contributions

*Filed with: 990. 107 variables in 3 tables.*

### Part I - Types of Property

`SM-P01-T00-NONCASH-CONTRIBUTIONS`ONEone row per filing

[TABLE]

`SM-P01-T01-NONCASH-CONTRIBUTIONS`MANYone row per repeated item

[TABLE]

### Part II - Supplemental Information

`SM-P02-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule N: Liquidation, Termination, Dissolution, or Significant Disposition of Assets

*Filed with: 990, 990-EZ. 50 variables in 6 tables.*

### Part I - Liquidation, Termination, or Dissolution

`SN-P01-T00-LIQUIDATION-TERMINATION-DISSOLUTION`ONEone row per filing

[TABLE]

`SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`MANYone row per repeated
item

[TABLE]

### Part II - Sale, Exchange, Disposition, or Other Transfer of More Than 25% of the Organization’s Assets

`SN-P02-T00-DISPOSITION-OF-ASSETS`ONEone row per filing

[TABLE]

`SN-P02-T01-DISPOSITION-OF-ASSETS`MANYone row per repeated item

[TABLE]

### Part III - Supplemental Information

`SN-P03-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

### Lines from earlier versions of the schedule

`SN-P99-T00-LIQUIDATION-TERMINATION-DISSOLUTION`ONEone row per filing

[TABLE]

## Schedule O: Supplemental Information to Form 990 or 990-EZ

*Filed with: 990, 990-EZ. 4 variables in 1 tables.*

### Supplemental Information to Form 990 or 990-EZ

`SO-P00-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

## Schedule R: Related Organizations and Unrelated Partnerships

*Filed with: 990. 125 variables in 8 tables.*

### Part I - Identification of Disregarded Entities

`SR-P01-T01-ID-DISREGARDED-ENTITIES`MANYone row per repeated item

[TABLE]

### Part II - Identification of Related Tax-Exempt Organizations

`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`MANYone row per repeated item

[TABLE]

### Part III - Identification of Related Organizations Taxable as a Partnership

`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`MANYone row per repeated
item

[TABLE]

### Part IV - Identification of Related Organizations Taxable as a Corporation or Trust

`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`MANYone row per repeated
item

[TABLE]

### Part V - Transactions With Related Organizations

`SR-P05-T00-TRANSACTIONS-RLTD-ORGS`ONEone row per filing

[TABLE]

`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`MANYone row per repeated item

[TABLE]

### Part VI - Unrelated Organizations Taxable as a Partnership

`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`MANYone row per repeated
item

[TABLE]

### Part VII - Supplemental Information

`SR-P07-T99-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]
