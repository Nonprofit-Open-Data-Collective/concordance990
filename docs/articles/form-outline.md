# Outline of forms, parts and schedules

The IRS 990 returns are divided into **parts** that group fields by
theme. This page outlines every part of the Form 990 (with the 990-EZ),
the Schedules A to R and the Form 990-PF, and the concordance tables
that hold their fields. Table names follow `FF-PNN-TNN-NAME`: form,
part, table number (by convention `T00` tables have one row per filing,
`T01` and higher one row per repeated item, `T99` supplemental
explanations) and a short name.

The part titles follow the IRS forms. Form 990-EZ lines are mapped into
the matching part of the Form 990. The 990-PF parts are numbered as on
the forms before the 2023 redesign, which moved most parts down by one
number; the 2023 number is given in parentheses.

Variable counts link to the data dictionaries: [Form 990 and
990-EZ](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.md)
and [Form
990-PF](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.md).

## Form 990 / 990-EZ: Return of Organization Exempt From Income Tax

*Filed with: 990 and 990-EZ.*

- **Heading (items A-O)**
  - `F9-P00-T00-HEADER`  ONE, 77 variables
  - `F9-P00-T01-AFFILIATE-LISTING`  MANY, 9 variables
- **Part I - Summary**
  - `F9-P01-T00-SUMMARY`  ONE, 41 variables
  - `F9-P01-T00-SUMMARY-EZ`  ONE, 2 variables
- **Part II - Signature Block**
  - `F9-P02-T00-SIGNATURE`  ONE, 24 variables
- **Part III - Statement of Program Service Accomplishments**
  - `F9-P03-T00-MISSION`  ONE, 3 variables
  - `F9-P03-T00-PROGRAM-ONE`  ONE, 5 variables
  - `F9-P03-T00-PROGRAM-THREE`  ONE, 5 variables
  - `F9-P03-T00-PROGRAM-TWO`  ONE, 5 variables
  - `F9-P03-T00-PROGRAMS`  ONE, 5 variables
  - `F9-P03-T01-PROGRAMS-OTHER`  MANY, 5 variables
  - `F9-P03-T02-PROGRAMS-EZ`  MANY, 4 variables
- **Part IV - Checklist of Required Schedules**
  - `F9-P04-T00-REQUIRED-SCHEDULES`  ONE, 56 variables
  - `F9-P04-T00-REQUIRED-SCHEDULES-EZ`  ONE, 3 variables
- **Part V - Statements Regarding Other IRS Filings and Tax Compliance**
  - `F9-P05-T00-OTHER-IRS-FILING`  ONE, 41 variables
- **Part VI - Governance, Management, and Disclosure**
  - `F9-P06-T00-GOVERNANCE`  ONE, 40 variables
  - `F9-P06-T00-GOVERNANCE-EZ`  ONE, 8 variables
- **Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent
  Contractors**
  - `F9-P07-T00-DIR-TRUST-KEY`  ONE, 17 variables
  - `F9-P07-T01-COMPENSATION`  MANY, 26 variables
  - `F9-P07-T01-COMPENSATION-HCE-EZ`  MANY, 12 variables
  - `F9-P07-T02-CONTRACTORS`  MANY, 11 variables
- **Part VIII - Statement of Revenue**
  - `F9-P08-T00-REVENUE`  ONE, 79 variables
  - `F9-P08-T01-REVENUE-PROGRAMS`  MANY, 6 variables
  - `F9-P08-T02-REVENUE-MISC`  MANY, 6 variables
- **Part IX - Statement of Functional Expenses**
  - `F9-P09-T00-EXPENSES`  ONE, 123 variables
  - `F9-P09-T01-EXPENSES-OTHER`  MANY, 5 variables
- **Part X - Balance Sheet**
  - `F9-P10-T00-BALANCE-SHEET`  ONE, 81 variables
- **Part XI - Reconciliation of Net Assets**
  - `F9-P11-T00-ASSETS`  ONE, 7 variables
- **Part XII - Financial Statements and Reporting**
  - `F9-P12-T00-FINANCIAL-REPORTING`  ONE, 16 variables

## Form 990-PF: Return of Private Foundation

*Filed with: 990-PF.*

- **Heading (items A-J)**
  - `PF-P00-T00-HEADER`  ONE, 18 variables
- **Part I - Analysis of Revenue and Expenses**
  - `PF-P01-T00-REVENUE-EXPENSE`  ONE, 91 variables
- **Part II - Balance Sheets**
  - `PF-P02-T00-BALANCE-SHEET`  ONE, 98 variables
- **Part III - Analysis of Changes in Net Assets or Fund Balances**
  - `PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE`  ONE, 6 variables
- **Part IV - Capital Gains and Losses for Tax on Investment Income**
  - `PF-P04-T00-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`  ONE, 2 variables
  - `PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`  MANY, 12 variables
- **Part V - Qualification Under Section 4940(e) for Reduced Tax on Net
  Investment Income (removed after 2019)**
  - `PF-P05-T00-NET-INVEST-INCOME-TAX-4940E`  ONE, 23 variables
- **Part VI - Excise Tax Based on Investment Income (2023: Part V)**
  - `PF-P06-T00-INVEST-INCOME-EXCISE-TAX`  ONE, 22 variables
- **Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A,
  VI-B)**
  - `PF-P07-T00-ACTIVITIES`  ONE, 45 variables
  - `PF-P07-T00-ACTIVITIES-4720`  ONE, 40 variables
- **Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)**
  - `PF-P08-T00-COMPENSATION-CONTRACTORS`  ONE, 2 variables
  - `PF-P08-T00-COMPENSATION-HIGHEST`  ONE, 2 variables
  - `PF-P08-T01-COMPENSATION`  MANY, 14 variables
  - `PF-P08-T02-COMPENSATION-HIGHEST`  MANY, 14 variables
  - `PF-P08-T03-COMPENSATION-CONTRACTORS`  MANY, 11 variables
- **Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)**
  - `PF-P09-T00-PROG-RELATED-INVESTMENTS`  ONE, 1 variables
  - `PF-P09-T01-CHARITABLE-ACTIVITIES`  ONE, 8 variables
  - `PF-P09-T02-PROG-RELATED-INVESTMENTS`  ONE, 5 variables
- **Part X - Minimum Investment Return (2023: Part IX)**
  - `PF-P10-T00-MINIMUM-INVESTMENT-RETURN`  ONE, 10 variables
- **Part XI - Distributable Amount (2023: Part X)**
  - `PF-P11-T00-DISTRIBUTABLE-AMOUNT`  ONE, 10 variables
- **Part XII - Qualifying Distributions (2023: Part XI)**
  - `PF-P12-T00-QUALIFYING-DISTRIBUTIONS`  ONE, 8 variables
- **Part XIII - Undistributed Income (2023: Part XII)**
  - `PF-P13-T00-UNDISTRIBUTED-INCOME`  ONE, 33 variables
- **Part XIV - Private Operating Foundations (2023: Part XIII)**
  - `PF-P14-T00-PRIVATE-OPERATING-FOUNDATIONS`  ONE, 63 variables
- **Part XV - Supplementary Information (2023: Part XIV)**
  - `PF-P15-T00-SUPPLEMENTARY-INFO`  ONE, 3 variables
  - `PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-APP`  MANY, 12 variables
  - `PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-FUTURE`  ONE, 1 variables
  - `PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-PAID`  ONE, 1 variables
  - `PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`  MANY, 13 variables
  - `PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`  MANY, 13 variables
- **Part XVI-A - Analysis of Income-Producing Activities; Part XVI-B -
  Relationship of Activities to the Accomplishment of Exempt Purposes
  (2023: Part XV)**
  - `PF-P16-T00-INCOME-PRODUCING-ACTS`  ONE, 59 variables
  - `PF-P16-T01-INCOME-PRODUCING-ACTS`  MANY, 6 variables
  - `PF-P16-T02-INCOME-PRODUCING-ACTS`  MANY, 6 variables
  - `PF-P16-T03-ACTS-RELATIONSHIP-EXEMPT-PURPOSE`  MANY, 2 variables
- **Part XVII - Information Regarding Transfers to and Transactions and
  Relationships With Noncharitable Exempt Organizations (2023: Part
  XVI)**
  - `PF-P17-T00-RELATIONSHIPS`  ONE, 1 variables
  - `PF-P17-T00-TRANSFERS-TRANSACTIONS`  ONE, 9 variables
  - `PF-P17-T01-TRANSFERS-TRANSACTIONS`  MANY, 5 variables
  - `PF-P17-T02-RELATIONSHIPS`  MANY, 4 variables
- **Auxiliary schedules and attachments (statements filed with the
  990-PF)**
  - `PF-P99-T00-AUXILLIARY`  ONE, 17 variables
  - `PF-P99-T01-ACC-FEES`  MANY, 5 variables
  - `PF-P99-T03-PROG-INVEST-OTH`  MANY, 2 variables
  - `PF-P99-T04-AMORTIZATION`  MANY, 9 variables
  - `PF-P99-T06-FUND-BORROWED`  MANY, 12 variables
  - `PF-P99-T09-COMP`  MANY, 4 variables
  - `PF-P99-T10-COMP-KONTR`  MANY, 4 variables
  - `PF-P99-T11-DEPREC`  MANY, 11 variables
  - `PF-P99-T12-DISSOLUTION`  MANY, 11 variables
  - `PF-P99-T14-COMP-EMPL`  MANY, 2 variables
  - `PF-P99-T16-EXP-RESPONSIBILITY`  MANY, 17 variables
  - `PF-P99-T19-SALE-NONPUB-SEC`  MANY, 11 variables
  - `PF-P99-T20-SALE-OTH-ASSET`  MANY, 13 variables
  - `PF-P99-T21-SALE-PUB-SEC`  MANY, 4 variables
  - `PF-P99-T22-SUPPLEMENTAL-INFO`  MANY, 4 variables
  - `PF-P99-T23-INVEST-CORP-BOND`  MANY, 3 variables
  - `PF-P99-T24-INVEST-CORP-STOCK`  MANY, 3 variables
  - `PF-P99-T25-INVEST-GOVT-SEC`  ONE, 4 variables
  - `PF-P99-T26-INVEST-LAND`  MANY, 5 variables
  - `PF-P99-T27-INVEST-OTH`  MANY, 5 variables
  - `PF-P99-T28-LAND-ETC`  MANY, 5 variables
  - `PF-P99-T29-LEGAL-FEES`  MANY, 5 variables
  - `PF-P99-T31-LOAN-OFF`  MANY, 12 variables
  - `PF-P99-T32-MTG-NOTE`  MANY, 15 variables
  - `PF-P99-T33-ASSET-OTH`  MANY, 4 variables
  - `PF-P99-T34-NETASSET-CHANGE`  MANY, 2 variables
  - `PF-P99-T35-DECREASE-OTH`  MANY, 2 variables
  - `PF-P99-T36-EXP-OTH`  MANY, 5 variables
  - `PF-P99-T37-INCOME-OTH`  MANY, 4 variables
  - `PF-P99-T38-INCREASE-OTH`  MANY, 2 variables
  - `PF-P99-T39-LIAB-OTH`  MANY, 3 variables
  - `PF-P99-T40-NOTE-LOAN-OTH-LONG`  MANY, 14 variables
  - `PF-P99-T41-NOTE-LOAN-OTH-SHORT`  MANY, 3 variables
  - `PF-P99-T42-PROF-FEES-OTH`  MANY, 5 variables
  - `PF-P99-T43-OFF-OTH`  MANY, 12 variables
  - `PF-P99-T46-SALE-INV`  MANY, 4 variables
  - `PF-P99-T48-CONTRIBUTOR`  MANY, 9 variables
  - `PF-P99-T49-TAXES`  MANY, 5 variables
  - `PF-P99-T51-TRANSFER-FROM-CE`  MANY, 11 variables
  - `PF-P99-T52-TRANSFER-TO-CE`  MANY, 11 variables

## Schedule A: Public Charity Status and Public Support

*Filed with: 990, 990-EZ.*

- **Heading**
  - `SA-P00-T00-HEADER`  ONE, 1 variables
- **Part I - Reason for Public Charity Status**
  - `SA-P01-T00-PUBLIC-CHARITY-STATUS`  ONE, 25 variables
  - `SA-P01-T01-PUBLIC-CHARITY-STATUS`  MANY, 9 variables
  - `SA-P01-T02-HOSPITAL-NAME-ADDRESS`  MANY, 5 variables
  - `SA-P01-T03-AGRI-RESEARCH-UNIV`  MANY, 5 variables
- **Part II - Support Schedule for Organizations Described in Sections
  170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)**
  - `SA-P02-T00-SUPPORT_SCHEDULE_170`  ONE, 61 variables
- **Part III - Support Schedule for Organizations Described in Section
  509(a)(2)**
  - `SA-P03-T00-SUPPORT_SCHEDULE_509`  ONE, 105 variables
- **Part IV - Supporting Organizations**
  - `SA-P04-T00-SUPPORT-ORGS`  ONE, 35 variables
- **Part V - Type III Non-Functionally Integrated 509(a)(3) Supporting
  Organizations**
  - `SA-P05-T00-SUPPORT-ORGS`  ONE, 81 variables
- **Part VI - Supplemental Information**
  - `SA-P06-T99-SUPPLEMENTAL-INFO`  MANY, 2 variables

## Schedule B: Schedule of Contributors

*Filed with: 990, 990-EZ, 990-PF.*

- **Heading - Organization Type and Filing Rules**
  - `SB-P00-T00-HEADER`  ONE, 6 variables
- **Part I - Contributors**
  - `SB-P01-T01-CONTRIBUTORS`  MANY, 15 variables
- **Part II - Noncash Property**
  - `SB-P02-T01-NONCASH-PROPERTY`  MANY, 4 variables
- **Part III - Exclusively Religious, Charitable, etc., Contributions to
  Organizations Described in Section 501(c)(7), (8), or (10)**
  - `SB-P03-T00-EXCLUSIVELY-RELIGIOUS`  ONE, 1 variables
  - `SB-P03-T01-EXCLUSIVELY-RELIGIOUS`  MANY, 12 variables

## Schedule C: Political Campaign and Lobbying Activities

*Filed with: 990, 990-EZ.*

- **Part I - Political Campaign Activities (I-A, I-B, I-C)**
  - `SC-P01-T00-LOBBY`  ONE, 10 variables
  - `SC-P01-T01-POLITICAL-ORGS-INFO`  MANY, 11 variables
- **Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)**
  - `SC-P02-T00-LOBBY`  ONE, 67 variables
  - `SC-P02-T01-AFFILIATED-GROUP`  MANY, 19 variables
- **Part III - Lobbying and Political Activities of Section 501(c)(4),
  (5), and (6) Organizations (III-A, III-B)**
  - `SC-P03-T00-LOBBY`  ONE, 10 variables
- **Part IV - Supplemental Information**
  - `SC-P04-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule D: Supplemental Financial Statements

*Filed with: 990.*

- **Part I - Organizations Maintaining Donor Advised Funds or Other
  Similar Funds or Accounts**
  - `SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`  ONE, 10 variables
- **Part II - Conservation Easements**
  - `SD-P02-T00-CONSERV-EASEMENTS`  ONE, 15 variables
- **Part III - Organizations Maintaining Collections of Art, Historical
  Treasures, or Other Similar Assets**
  - `SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`  ONE, 11 variables
- **Part IV - Escrow and Custodial Arrangements**
  - `SD-P04-T00-ESCROW-CUSTODIAL-ARRANGEMENTS`  ONE, 7 variables
- **Part V - Endowment Funds**
  - `SD-P05-T00-ENDOWMENT`  ONE, 41 variables
- **Part VI - Land, Buildings, and Equipment**
  - `SD-P06-T00-LAND-BLDG-EQUIP`  ONE, 20 variables
- **Part VII - Investments - Other Securities**
  - `SD-P07-T00-INVESTMENTS-SECURITIES`  ONE, 1 variables
  - `SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES`  ONE, 2 variables
  - `SD-P07-T01-INVESTMENTS-OTH-EQUITY`  ONE, 2 variables
  - `SD-P07-T01-INVESTMENTS-OTH-SECURITIES`  MANY, 3 variables
- **Part VIII - Investments - Program Related**
  - `SD-P08-T00-INVESTMENTS-PROG-RLTD`  ONE, 1 variables
  - `SD-P08-T01-INVESTMENTS-PROG-RLTD`  MANY, 3 variables
- **Part IX - Other Assets**
  - `SD-P09-T00-OTH-ASSETS`  ONE, 1 variables
  - `SD-P09-T01-OTH-ASSETS`  MANY, 2 variables
- **Part X - Other Liabilities**
  - `SD-P10-T00-OTH-LIABILITIES`  ONE, 3 variables
  - `SD-P10-T01-OTH-LIABILITIES`  MANY, 2 variables
- **Part XI - Reconciliation of Revenue per Audited Financial Statements
  With Revenue per Return**
  - `SD-P11-T00-RECONCILIATION-REVENUE`  ONE, 11 variables
- **Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return**
  - `SD-P12-T00-RECONCILIATION-EXPENSES`  ONE, 11 variables
- **Part XIII - Supplemental Information**
  - `SD-P13-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables
- **Lines from earlier versions of the schedule (reconciliation of net
  assets)**
  - `SD-P99-T00-RECONCILIATION-NETASSETS`  ONE, 10 variables

## Schedule E: Schools

*Filed with: 990, 990-EZ.*

- **Part I - Schools**
  - `SE-P01-T00-SCHOOLS`  ONE, 23 variables
- **Part II - Supplemental Information**
  - `SE-P02-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule F: Statement of Activities Outside the United States

*Filed with: 990.*

- **Part I - General Information on Activities Outside the United
  States**
  - `SF-P01-T00-FRGN-ACTS`  ONE, 10 variables
  - `SF-P01-T01-FRGN-ACTS-BY-REGION`  MANY, 6 variables
- **Part II - Grants and Other Assistance to Organizations or Entities
  Outside the United States**
  - `SF-P02-T00-FRGN-ORG-GRANTS`  ONE, 2 variables
  - `SF-P02-T01-FRGN-ORG-GRANTS`  MANY, 7 variables
- **Part III - Grants and Other Assistance to Individuals Outside the
  United States**
  - `SF-P03-T01-FRGN-INDIV-GRANTS`  MANY, 8 variables
- **Part IV - Foreign Forms**
  - `SF-P04-T00-FRGN-INTERESTS`  ONE, 6 variables
- **Part V - Supplemental Information**
  - `SF-P05-T99-EXPLANATION-TEXT`  MANY, 4 variables
- **Lines from earlier versions of the schedule**
  - `SF-P99-T00-FRGN-ORG-GRANTS`  ONE, 1 variables

## Schedule G: Supplemental Information Regarding Fundraising or Gaming Activities

*Filed with: 990, 990-EZ.*

- **Part I - Fundraising Activities**
  - `SG-P01-T00-FUNDRAISING-ACTS`  ONE, 12 variables
  - `SG-P01-T01-FUNDRAISERS-INFO`  MANY, 14 variables
- **Part II - Fundraising Events**
  - `SG-P02-T00-FUNDRAISING-EVENTS`  ONE, 11 variables
  - `SG-P02-T01-FUNDRAISING-EVENTS`  ONE, 30 variables
- **Part III - Gaming**
  - `SG-P03-T00-GAMING`  ONE, 68 variables
- **Part IV - Supplemental Information**
  - `SG-P04-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule H: Hospitals

*Filed with: 990.*

- **Part I - Financial Assistance and Certain Other Community Benefits
  at Cost**
  - `SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`  ONE, 91 variables
- **Part II - Community Building Activities**
  - `SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`  ONE, 60 variables
- **Part III - Bad Debt, Medicare, and Collection Practices**
  - `SH-P03-T00-FAP-COMMUNITY-BENEFIT-POLICY`  ONE, 11 variables
- **Part IV - Management Companies and Joint Ventures**
  - `SH-P04-T01-COMPANY-JOINT-VENTURES`  MANY, 6 variables
- **Part V - Facility Information**
  - `SH-P05-T00-FAP-COMMUNITY-BENEFIT-POLICY`  ONE, 2 variables
  - `SH-P05-T01-HOSPITAL-FACILITY`  MANY, 24 variables
  - `SH-P05-T02-NON-HOSPITAL-FACILITY`  MANY, 9 variables
  - `SH-P05-T03-FACILITY-POLICIES-PRACTICES`  MANY, 98 variables
  - `SH-P05-T99-SUPPLEMENTAL-INFO`  MANY, 2 variables
- **Part VI - Supplemental Information**
  - `SH-P06-T99-SUPPLEMENTAL-INFO`  MANY, 20 variables
- **Lines from earlier versions of the schedule (Part V, Section B
  facility policies)**
  - `SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY`  MANY, 48 variables

## Schedule I: Grants and Other Assistance to Organizations, Governments, and Individuals in the United States

*Filed with: 990.*

- **Part I - General Information on Grants and Assistance**
  - `SI-P01-T00-GRANTS-INFO`  ONE, 1 variables
- **Part II - Grants and Other Assistance to Domestic Organizations and
  Domestic Governments**
  - `SI-P02-T00-GRANTS-US-ORGS-GOVTS`  ONE, 2 variables
  - `SI-P02-T01-GRANTS-US-ORGS-GOVTS`  MANY, 15 variables
- **Part III - Grants and Other Assistance to Domestic Individuals**
  - `SI-P03-T01-GRANTS-US-INDIV`  MANY, 6 variables
- **Part IV - Supplemental Information**
  - `SI-P04-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables
- **Lines from earlier versions of the schedule**
  - `SI-P99-T00-GRANTS-US-ORGS-GOVTS`  ONE, 1 variables

## Schedule J: Compensation Information

*Filed with: 990.*

- **Part I - Questions Regarding Compensation**
  - `SJ-P01-T00-COMPENSATION`  ONE, 26 variables
- **Part II - Officers, Directors, Trustees, Key Employees, and Highest
  Compensated Employees**
  - `SJ-P02-T01-COMPENSATION-DTK`  MANY, 18 variables
- **Part III - Supplemental Information**
  - `SJ-P03-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule K: Supplemental Information on Tax-Exempt Bonds

*Filed with: 990.*

- **Part I - Bond Issues**
  - `SK-P01-T01-BOND-ISSUES`  MANY, 11 variables
- **Part II - Proceeds**
  - `SK-P02-T01-BOND-PROCEEDS`  MANY, 18 variables
- **Part III - Private Business Use**
  - `SK-P03-T01-BOND-PRIVATE-BIZ-USE`  MANY, 17 variables
- **Part IV - Arbitrage**
  - `SK-P04-T01-BOND-ARBITRAGE`  MANY, 19 variables
- **Part V - Procedures To Undertake Corrective Action**
  - `SK-P05-T01-PROCEDURE-CORRECTIVE-ACT`  MANY, 2 variables
- **Part VI - Supplemental Information**
  - `SK-P06-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule L: Transactions With Interested Persons

*Filed with: 990, 990-EZ.*

- **Part I - Excess Benefit Transactions**
  - `SL-P01-T00-EXCESS-BENEFIT-TRANSAC`  ONE, 2 variables
  - `SL-P01-T01-EXCESS-BENEFIT-TRANSAC`  MANY, 6 variables
- **Part II - Loans to and/or From Interested Persons**
  - `SL-P02-T00-LOANS-INTERESTED-PERS`  ONE, 1 variables
  - `SL-P02-T01-LOANS-INTERESTED-PERS`  MANY, 12 variables
- **Part III - Grants or Assistance Benefiting Interested Persons**
  - `SL-P03-T01-GRANTS-INTERESTED-PERS`  MANY, 7 variables
- **Part IV - Business Transactions Involving Interested Persons**
  - `SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`  MANY, 7 variables
- **Part V - Supplemental Information**
  - `SL-P05-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule M: Noncash Contributions

*Filed with: 990.*

- **Part I - Types of Property**
  - `SM-P01-T00-NONCASH-CONTRIBUTIONS`  ONE, 98 variables
  - `SM-P01-T01-NONCASH-CONTRIBUTIONS`  MANY, 5 variables
- **Part II - Supplemental Information**
  - `SM-P02-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule N: Liquidation, Termination, Dissolution, or Significant Disposition of Assets

*Filed with: 990, 990-EZ.*

- **Part I - Liquidation, Termination, or Dissolution**
  - `SN-P01-T00-LIQUIDATION-TERMINATION-DISSOLUTION`  ONE, 10 variables
  - `SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`  MANY, 15 variables
- **Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization’s Assets**
  - `SN-P02-T00-DISPOSITION-OF-ASSETS`  ONE, 4 variables
  - `SN-P02-T01-DISPOSITION-OF-ASSETS`  MANY, 15 variables
- **Part III - Supplemental Information**
  - `SN-P03-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables
- **Lines from earlier versions of the schedule**
  - `SN-P99-T00-LIQUIDATION-TERMINATION-DISSOLUTION`  ONE, 2 variables

## Schedule O: Supplemental Information to Form 990 or 990-EZ

*Filed with: 990, 990-EZ.*

- **Supplemental Information to Form 990 or 990-EZ**
  - `SO-P00-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables

## Schedule R: Related Organizations and Unrelated Partnerships

*Filed with: 990.*

- **Part I - Identification of Disregarded Entities**
  - `SR-P01-T01-ID-DISREGARDED-ENTITIES`  MANY, 17 variables
- **Part II - Identification of Related Tax-Exempt Organizations**
  - `SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`  MANY, 18 variables
- **Part III - Identification of Related Organizations Taxable as a
  Partnership**
  - `SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`  MANY, 22 variables
- **Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust**
  - `SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`  MANY, 20 variables
- **Part V - Transactions With Related Organizations**
  - `SR-P05-T00-TRANSACTIONS-RLTD-ORGS`  ONE, 19 variables
  - `SR-P05-T01-TRANSACTIONS-RLTD-ORGS`  MANY, 5 variables
- **Part VI - Unrelated Organizations Taxable as a Partnership**
  - `SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`  MANY, 20 variables
- **Part VII - Supplemental Information**
  - `SR-P07-T99-SUPPLEMENTAL-INFO`  MANY, 4 variables
