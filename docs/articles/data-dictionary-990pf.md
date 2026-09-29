# Data dictionary: Form 990-PF

This dictionary documents every variable of the **990-PF research
database**: the Form 990-PF, the auxiliary schedules and statements
filed with it, Schedule B and the return header shared with the 990. It
is generated from the concordance with `data_dictionary("F990PF")`, the
variables of `concordance(form = "F990PF")`. The Form 990 and 990-EZ
have [their own
dictionary](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.md).

## Reading the dictionary

**Names** follow `PF_PP_NAME`, where `PP` is the part of the 990-PF,
numbered as on the forms before the 2023 redesign (the part titles give
the 2023 number). Two other prefixes appear:

- `F9_00_` for the **return header**, shared with the 990 and 990-EZ:
  the same variables in both databases.
- `PF_AXnn_` for **auxiliary schedule** `nn`, the statements a
  foundation attaches (depreciation, other income, grants approved for
  future payment, compensation explanations, and others), in tables
  `PF-P99-Tnn-...`.
- `SB_` for **Schedule B**, which foundations file too. Unlike the 990,
  990-PF Schedule B contributor names and addresses are public.

**Attachments filed with every form** (compensation explanations,
reasonable-cause statements) map to their `PF_AX` variables in this
database and to 990 variables in the 990 database.

**Tables.** *ONE* tables have one row per filing; *MANY* tables have one
row per repeated item (an officer, a grant paid, an asset sold). Fixed
line slots are columns of a one-row table, for example the four direct
charitable activities of Part IX-A (`PF_09_CHARIT_ACT_DESC_1` to `_4`).

**Type** is `numeric`, `text`, `checkbox` or `date`. A list marks a
field whose repeated values are joined into one cell (for example the
manager names of Part XV).

**Evidence.** The 990-PF mapping was checked against one year of filings
(TY2023, 114,559 returns) and the 2023 schemas. Xpaths of earlier schema
versions are kept from the v1 PF concordance.

## Contents

| Form | Filed with | Tables | Variables | Xpaths |
|:---|:---|---:|:---|:---|
| Return header (shared) | all returns | 2 | 64 | 139 |
| Schedule B: Schedule of Contributors | 990, 990-EZ, 990-PF | 5 | 38 | 61 |
| Form 990-PF: Return of Private Foundation | 990-PF | 77 | 952 | 2,265 |

## Return header (shared with the Form 990 and 990-EZ)

*Filed with: all returns. 64 variables.*

### Heading (items A-O)

`F9-P00-T00-HEADER`ONEone row per filing

[TABLE]

### Part II - Signature Block

`F9-P02-T00-SIGNATURE`ONEone row per filing

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

## Form 990-PF: Return of Private Foundation

*Filed with: 990-PF. 952 variables in 77 tables.*

### Heading (items A-J)

`PF-P00-T00-HEADER`ONEone row per filing

[TABLE]

### Part I - Analysis of Revenue and Expenses

`PF-P01-T00-REVENUE-EXPENSE`ONEone row per filing

[TABLE]

### Part II - Balance Sheets

`PF-P02-T00-BALANCE-SHEET`ONEone row per filing

[TABLE]

### Part III - Analysis of Changes in Net Assets or Fund Balances

`PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE`ONEone row per filing

[TABLE]

### Part IV - Capital Gains and Losses for Tax on Investment Income

`PF-P04-T00-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_04_CAP_GAINLOSS_NET_INCOME` | Capital Gain Net Income | F990-PF-PART-04-LINE-02 | numeric | 990-PF |
| `PF_04_CAP_GAINLOSS_NET_SHORTTERM` | Net Short-Term Capital Gain or Loss | F990-PF-PART-04-LINE-03 | numeric | 990-PF |

`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`MANYone row per repeated
item

[TABLE]

### Part V - Qualification Under Section 4940(e) for Reduced Tax on Net Investment Income (removed after 2019)

`PF-P05-T00-NET-INVEST-INCOME-TAX-4940E`ONEone row per filing

[TABLE]

### Part VI - Excise Tax Based on Investment Income (2023: Part V)

`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`ONEone row per filing

[TABLE]

### Part VII-A - Statements Regarding Activities; Part VII-B - Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

`PF-P07-T00-ACTIVITIES`ONEone row per filing

[TABLE]

`PF-P07-T00-ACTIVITIES-4720`ONEone row per filing

[TABLE]

### Part VIII - Information About Officers, Directors, Trustees, Foundation Managers, Highly Paid Employees, and Contractors (2023: Part VII)

`PF-P08-T00-COMPENSATION-CONTRACTORS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_08_COMP_KONTR_NONE` | If there are none; enter "None" | F990-PF-PART-08-LINE-03 | text | 990-PF |
| `PF_08_COMP_KONTR_NUM_GT_50K` | Total number of other contractors paid over \$50;000 | F990-PF-PART-08-LINE-03 | numeric | 990-PF |

`PF-P08-T00-COMPENSATION-HIGHEST`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_08_COMP_DTK_NONE_HCE` | If there are none; enter "None" | F990-PF-PART-08-LINE-02 | text | 990-PF |
| `PF_08_COMP_DTK_NUM_GT_50K_HCE` | Total number of other employees paid over \$50;000 | F990-PF-PART-08-LINE-02 | numeric | 990-PF |

`PF-P08-T01-COMPENSATION`MANYone row per repeated item

[TABLE]

`PF-P08-T02-COMPENSATION-HIGHEST`MANYone row per repeated item

[TABLE]

`PF-P08-T03-COMPENSATION-CONTRACTORS`MANYone row per repeated item

[TABLE]

### Part IX-A - Summary of Direct Charitable Activities; Part IX-B - Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

`PF-P09-T00-PROG-RELATED-INVESTMENTS`ONEone row per filing

[TABLE]

`PF-P09-T01-CHARITABLE-ACTIVITIES`ONEone row per filing

[TABLE]

`PF-P09-T02-PROG-RELATED-INVESTMENTS`ONEone row per filing

[TABLE]

### Part X - Minimum Investment Return (2023: Part IX)

`PF-P10-T00-MINIMUM-INVESTMENT-RETURN`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_10_FMV_ASSET_NOCHARIT_SEC` | Average Monthly FMV of Securities | F990-PF-PART-10-LINE-01A | numeric | 990-PF |
| `PF_10_FMV_ASSET_NOCHARIT_CASH` | Average Monthly Cash Balances | F990-PF-PART-10-LINE-01B | numeric | 990-PF |
| `PF_10_FMV_ASSET_NOCHARIT_OTH` | FMV of All Other Noncharitable Assets | F990-PF-PART-10-LINE-01C | numeric | 990-PF |
| `PF_10_FMV_ASSET_NOCHARIT_TOT` | Total FMV of Unused Assets | F990-PF-PART-10-LINE-01D | numeric | 990-PF |
| `PF_10_FMV_ASSET_NOCHARIT_REDUCT` | Reduction Claimed | F990-PF-PART-10-LINE-01E | numeric | 990-PF |
| `PF_10_FMV_ASSET_ACQUISITION` | Acquisition Indebtedness | F990-PF-PART-10-LINE-02 | numeric | 990-PF |
| `PF_10_FMV_ASSET_NOCHARIT_TOT_ADJ` | Adjusted Total FMV of Unused Assets (subtract line 2 from line 1d) | F990-PF-PART-10-LINE-03 | numeric | 990-PF |
| `PF_10_CASH_DEEMED_CHARIT` | Cash Deemed Charitable | F990-PF-PART-10-LINE-04 | numeric | 990-PF |
| `PF_10_ASSET_NOCHARIT_NET` | Net Noncharitable Assets | F990-PF-PART-10-LINE-05 | numeric | 990-PF |
| `PF_10_INVEST_RETURN_MINIMUM` | Minimum Investment Return | F990-PF-PART-10-LINE-06 | numeric | 990-PF |

### Part XI - Distributable Amount (2023: Part X)

`PF-P11-T00-DISTRIBUTABLE-AMOUNT`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_11_4942J3J5_POF_FRGN_X` | Section 4942(j)(3)&(j)(5) Private Operating Foundations and Certain Foreign Organizations | F990-PF-PART-11-LINE-00 | checkbox | header |
| `PF_11_INVEST_RETURN_MINIMUM` | Minimum Investment Return | F990-PF-PART-11-LINE-01 | numeric | 990-PF |
| `PF_11_TAX_INVEST_INCOME` | Tax Based on Investment Income | F990-PF-PART-11-LINE-02A | numeric | 990-PF |
| `PF_11_TAX_INCOME_CY` | Income Tax for This Year | F990-PF-PART-11-LINE-02B | numeric | 990-PF |
| `PF_11_TAX_TOT` | Total Tax (add lines 2a and 2b) | F990-PF-PART-11-LINE-02C | numeric | 990-PF |
| `PF_11_DIST_AMT_BEFORE_ADJ` | Distributable Amount Before Adjustments | F990-PF-PART-11-LINE-03 | numeric | 990-PF |
| `PF_11_RECOVERIES_DIST_QUAL` | Recoveries of Qualified Distributions | F990-PF-PART-11-LINE-04 | numeric | 990-PF |
| `PF_11_DIST_AMT_BEFORE_DEDUCT` | Distributable Amount Before Deduction (add lines 3 and 4) | F990-PF-PART-11-LINE-05 | numeric | 990-PF |
| `PF_11_DEDUCT_DIST_AMT` | Deduction from Distributable Amount | F990-PF-PART-11-LINE-06 | numeric | 990-PF |
| `PF_11_DIST_AMT_ADJ` | Distributable Amount as Adjusted | F990-PF-PART-11-LINE-07 | numeric | 990-PF |

### Part XII - Qualifying Distributions (2023: Part XI)

`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`ONEone row per filing

[TABLE]

### Part XIII - Undistributed Income (2023: Part XII)

`PF-P13-T00-UNDISTRIBUTED-INCOME`ONEone row per filing

[TABLE]

### Part XIV - Private Operating Foundations (2023: Part XIII)

`PF-P14-T00-PRIVATE-OPERATING-FOUNDATIONS`ONEone row per filing

[TABLE]

### Part XV - Supplementary Information (2023: Part XIV)

`PF-P15-T00-SUPPLEMENTARY-INFO`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_15_MGR_CONTR` list | Contributing Manager | F990-PF-PART-15-LINE-01A | text | 990-PF |
| `PF_15_MGR_SHAREHOLDER` list | Shareholder Manager | F990-PF-PART-15-LINE-01B | text | 990-PF |
| `PF_15_CONTR_PRESELECTED_X` | Only Contributes to Preselected Charitable Organizations | F990-PF-PART-15-LINE-02 | checkbox | 990-PF |

`PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-APP`MANYone row per repeated item

[TABLE]

`PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-FUTURE`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_15_G_FUTURE_AMT_TOT` | Total Grant or Contribution Approved for Future Payment | F990-PF-PART-15-LINE-03B-COL-05-TOT | numeric | 990-PF |

`PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-PAID`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_15_G_PAID_AMT_TOT` | Total Grant or Contribution Paid During Year | F990-PF-PART-15-LINE-03A-COL-05-TOT | numeric | 990-PF |

`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`MANYone row per repeated item

[TABLE]

`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`MANYone row per repeated
item

[TABLE]

### Part XVI-A - Analysis of Income-Producing Activities; Part XVI-B - Relationship of Activities to the Accomplishment of Exempt Purposes (2023: Part XV)

`PF-P16-T00-INCOME-PRODUCING-ACTS`ONEone row per filing

[TABLE]

`PF-P16-T01-INCOME-PRODUCING-ACTS`MANYone row per repeated item

[TABLE]

`PF-P16-T02-INCOME-PRODUCING-ACTS`MANYone row per repeated item

[TABLE]

`PF-P16-T03-ACTS-RELATIONSHIP-EXEMPT-PURPOSE`MANYone row per repeated
item

[TABLE]

### Part XVII - Information Regarding Transfers to and Transactions and Relationships With Noncharitable Exempt Organizations (2023: Part XVI)

`PF-P17-T00-RELATIONSHIPS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_17_RELATIONSHIP_X` | Relationships with noncharitable EOs | F990-PF-PART-17-LINE-02A | checkbox | 990-PF |

`PF-P17-T00-TRANSFERS-TRANSACTIONS`ONEone row per filing

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_17_TRANSFER_CASH_X` | Transfers of cash to noncharitable EO | F990-PF-PART-17-LINE-01A(1) | checkbox | 990-PF |
| `PF_17_TRANSFER_OTH_ASSET_X` | Transfers of other assets to noncharitable EO | F990-PF-PART-17-LINE-01A(2) | checkbox | 990-PF |
| `PF_17_TRANSAC_SALE_ASSET_X` | Other transactions : Sales or exchanges of assets with a noncharitable exempt organization | F990-PF-PART-17-LINE-01B(1) | checkbox | 990-PF |
| `PF_17_TRANSAC_PURCHASE_ASSET_X` | Other transactions : Purchases of assets from a noncharitable exempt organization | F990-PF-PART-17-LINE-01B(2) | checkbox | 990-PF |
| `PF_17_TRANSAC_RENT_FACILITIES_X` | Other transactions : Rental of facilities; equipment; or other assets | F990-PF-PART-17-LINE-01B(3) | checkbox | 990-PF |
| `PF_17_TRANSAC_REIMBURSE_X` | Other transactions : Reimbursement arrangements | F990-PF-PART-17-LINE-01B(4) | checkbox | 990-PF |
| `PF_17_TRANSAC_LOAN_X` | Other transactions : Loans or loan guarantees | F990-PF-PART-17-LINE-01B(5) | checkbox | 990-PF |
| `PF_17_TRANSAC_PERFORM_SVC_X` | Other transactions : Performance of Services or membership or fundraising solicitations | F990-PF-PART-17-LINE-01B(6) | checkbox | 990-PF |
| `PF_17_TRANSAC_SHARE_FACILITIES_X` | Other transactions : Sharing of facilities; equipment; mailing lists; other assets; or paid employees | F990-PF-PART-17-LINE-01C | checkbox | 990-PF |

`PF-P17-T01-TRANSFERS-TRANSACTIONS`MANYone row per repeated item

[TABLE]

`PF-P17-T02-RELATIONSHIPS`MANYone row per repeated item

[TABLE]

### Auxiliary schedules and attachments (statements filed with the 990-PF)

`PF-P99-T00-AUXILLIARY`ONEone row per filing

[TABLE]

`PF-P99-T01-ACC-FEES`MANYone row per repeated item

[TABLE]

`PF-P99-T03-PROG-INVEST-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T04-AMORTIZATION`MANYone row per repeated item

| Variable | Description | Location | Type | Scope |
|:---|:---|:---|:---|:---|
| `PF_AX04_AMORT_AMT_AMORTIZED` | Amount Amortized | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_AMT_CY` | Current Year Amortization | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_AMT_TOT` | Total Amount of Amortization | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_DATE_ACQUIRED` | Date Acquired; Completed; or Expended | F990-PF-PART-99-AUX-SCHED-04 | date | 990-PF |
| `PF_AX04_AMORT_DEDUCT_PYZ` | Deduction for Prior Years | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_EXP_DESC` | Description of Amortized Expenses | F990-PF-PART-99-AUX-SCHED-04 | text | 990-PF |
| `PF_AX04_AMORT_INCOME_NET_ADJ` | Adjusted Net Income | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_INVEST_NET` | Net Investment Income | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |
| `PF_AX04_AMORT_METHOD` | Amortization Method | F990-PF-PART-99-AUX-SCHED-04 | numeric | 990-PF |

`PF-P99-T06-FUND-BORROWED`MANYone row per repeated item

[TABLE]

`PF-P99-T09-COMP`MANYone row per repeated item

[TABLE]

`PF-P99-T10-COMP-KONTR`MANYone row per repeated item

[TABLE]

`PF-P99-T11-DEPREC`MANYone row per repeated item

[TABLE]

`PF-P99-T12-DISSOLUTION`MANYone row per repeated item

[TABLE]

`PF-P99-T16-EXP-RESPONSIBILITY`MANYone row per repeated item

[TABLE]

`PF-P99-T19-SALE-NONPUB-SEC`MANYone row per repeated item

[TABLE]

`PF-P99-T20-SALE-OTH-ASSET`MANYone row per repeated item

[TABLE]

`PF-P99-T21-SALE-PUB-SEC`MANYone row per repeated item

[TABLE]

`PF-P99-T22-SUPPLEMENTAL-INFO`MANYone row per repeated item

[TABLE]

`PF-P99-T23-INVEST-CORP-BOND`MANYone row per repeated item

[TABLE]

`PF-P99-T24-INVEST-CORP-STOCK`MANYone row per repeated item

[TABLE]

`PF-P99-T25-INVEST-GOVT-SEC`ONEone row per filing

[TABLE]

`PF-P99-T26-INVEST-LAND`MANYone row per repeated item

[TABLE]

`PF-P99-T27-INVEST-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T28-LAND-ETC`MANYone row per repeated item

[TABLE]

`PF-P99-T29-LEGAL-FEES`MANYone row per repeated item

[TABLE]

`PF-P99-T31-LOAN-OFF`MANYone row per repeated item

[TABLE]

`PF-P99-T32-MTG-NOTE`MANYone row per repeated item

[TABLE]

`PF-P99-T33-ASSET-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T34-NETASSET-CHANGE`MANYone row per repeated item

[TABLE]

`PF-P99-T35-DECREASE-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T36-EXP-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T37-INCOME-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T38-INCREASE-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T39-LIAB-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T40-NOTE-LOAN-OTH-LONG`MANYone row per repeated item

[TABLE]

`PF-P99-T41-NOTE-LOAN-OTH-SHORT`MANYone row per repeated item

[TABLE]

`PF-P99-T42-PROF-FEES-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T43-OFF-OTH`MANYone row per repeated item

[TABLE]

`PF-P99-T46-SALE-INV`MANYone row per repeated item

[TABLE]

`PF-P99-T48-CONTRIBUTOR`MANYone row per repeated item

[TABLE]

`PF-P99-T49-TAXES`MANYone row per repeated item

[TABLE]

`PF-P99-T51-TRANSFER-FROM-CE`MANYone row per repeated item

[TABLE]

`PF-P99-T52-TRANSFER-TO-CE`MANYone row per repeated item

[TABLE]

`PF-P99-T14-COMP-EMPL`MANYone row per repeated item

[TABLE]
