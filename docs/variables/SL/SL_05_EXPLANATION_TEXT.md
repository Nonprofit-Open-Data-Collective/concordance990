# SL_05_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_05_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule LPart V - Explanation

- Table:

  [`SL-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p05-t99-supplemental-info)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-L-PART-05`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

61k

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartV/Explanation` | SZ | 2010–2012 | 7,602 | 1.19% | 9.9% |
| x2 | `IRS990ScheduleL/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 53,800 | 0.8% | 7.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.8k | 2.6k | 3.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.8k | 4.0k | 4.2k | 4.3k | 4.6k | 4.7k | 4.6k | 4.9k | 5.0k | 5.0k | 5.0k | 3.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 59,659  | 349            | 9,000   |
| 990-EZ | 1,743   | 250            | 6,115   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE CREDIT UNION PROVIDES SUPPLEMENTAL RETIREMENT BENEFITS THROUGH AN ARRANGEMENT REFERRE…` | 144 | 11.6% |
| `THE BOARD MEMBERS OF THE LOCAL PARTNERSHIP ARE REPRESENTATIVE OF VARIOUS ORGANIZATIONS TH…` | 126 | 10.2% |
| `DURING THE YEAR, THE ORGANIZATION EMPLOYS INDIVIDUALS WHO MAY BE RELATED TO AN OFFICER, D…` | 106 | 8.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | THE COMPENSATION COMMITTEE, AUTHORIZED BY THE BOARD OF DIRECTORS, OVERSEES ALL … | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | DURING FISCAL YEAR 2013 GARY D. SOWARDS, THE SPOUSE OF KEY EMPLOYEE, DOROTHY EH… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_05_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
