# SH_06_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule HPart VI - Explanation

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

34k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters; IRS990ScheduleH/Form990ScheduleHPartVI/Explanation: longest value is exactly 9000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/Explanation` | SZ | 2010–2012 | 7,350 | 1.36% | 96.9% |
| x2 | `IRS990ScheduleH/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 26,857 | 0.353% | 97.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.4k | 2.5k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.4k | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 978 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 34,207  | 1105           | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE BAD DEBT EXPENSE INCLUDED ON FORM 990, PART IX, LINE 25, COLUMN (A), BUT SUBTRACTED F…` | 2,319 | 18.8% |
| `N/A` | 1,726 | 14.0% |
| `CA` | 884 | 7.2% |
| `IL` | 851 | 6.9% |
| `WI` | 841 | 6.8% |
| `NY` | 809 | 6.6% |
| `PART I, LINE 7, COLUMN (F): THE BAD DEBT EXPENSE INCLUDED ON FORM 990, PART IX, LINE 25, …` | 752 | 6.1% |
| `The Bad Debt expense included on Form 990, Part IX, Line 25, Column (A), but subtracted f…` | 449 | 3.6% |
| `Part I, Line 7, Column (f): The Bad Debt expense included on Form 990, Part IX, Line 25, …` | 238 | 1.9% |
| `BASED ON THE ORGANIZATION'S ADMINISTRATION OF ITS FINANCIAL ASSISTANCE PROGRAM, NO ESTIMA…` | 236 | 1.9% |
| `A COST TO CHARGE RATIO IS APPLIED TO THE ORGANIZATION'S MEDICARE GROSS CHARGES TO CALCULA…` | 235 | 1.9% |
| `THE ORGANIZATION IS PART OF THE ASCENSION HEALTH ALLIANCE'S CONSOLIDATED AUDIT IN WHICH T…` | 226 | 1.8% |
| `TX` | 167 | 1.4% |
| `THE ORGANIZATION ADMINISTERS ITS FINANCIAL ASSISTANCE POLICY IN ACCORDANCE WITH THE TERMS…` | 157 | 1.3% |
| `THE ORGANIZATION IS PART OFASCENSION HEALTH ALLIANCE'S CONSOLIDATED AUDIT IN WHICH THE FO…` | 156 | 1.3% |
| `IN ADDITION TO FPG, THE ORGANIZATION USES MEDICAL INDIGENCY, ASSET TEST, INSURANCE STATUS…` | 154 | 1.2% |
| `THE COST OF PROVIDING CHARITY CARE, MEANS-TESTED GOVERNMENT PROGRAMS, AND OTHER COMMUNITY…` | 153 | 1.2% |
| `THE BEST AVAILABLE DATA WAS USED TO CALCULATE THE COST AMOUNTS REPORTED IN ITEM 7. FOR CE…` | 125 | 1.0% |
| `The cost of providing charity care, means-tested government programs, and other community…` | 119 | 1.0% |
| `PART VI, LINE 6: N/A` | 117 | 0.9% |
| `NOTIFICATION ABOUT THE AVAILABILITY OF FINANCIAL ASSISTANCE FROM CHI HOSPITAL ORGANIZATIO…` | 109 | 0.9% |
| `The cost of providing charity care, means tested government programs, and community benef…` | 97 | 0.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NAVICENT HEALTH BALDWIN INC | THE FINANCIAL ASSISTANCE PROGRAMS ARE DESIGNED TO ENSURE ASSISTANCE IS PROVIDED… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349301709_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | Part I, Line 3c: In addition to providing free or discounted care based on Fede… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
