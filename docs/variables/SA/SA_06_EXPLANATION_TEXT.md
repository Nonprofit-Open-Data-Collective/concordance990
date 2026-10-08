# SA_06_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_06_EXPLANATION_TEXT

Additional explanations

- Description: Form; part and line number reference explanation

- Table:

  [`SA-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-A-PART-06`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

539k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleA/Form990ScheduleAPartIVGrp/ExplanationTxt: longest value is exactly 9000 characters; IRS990ScheduleA/GeneralExplanation: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GeneralExplanation` | SZ | 2009–2012 | 25,209 | 3.48% | 4.1% |
| x2 | `IRS990ScheduleA/Form990ScheduleAPartIVGrp/ExplanationTxt` | SZ | 2013–2013 | 22,589 | 7.45% | 17.7% |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartVIGrp/ExplanationTxt` | SZ | 2014–2024 | 491,389 | 9.41% | 14.6% |
| x4 | `IRS990ScheduleA/GeneralExplanationTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.2k | 6.1k | 7.4k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 31k | 34k | 35k | 38k | 40k | 43k | 52k | 59k | 59k | 58k | 43k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 4 | 4 | 9 | 11 | 12 | 12 | 12 | 12 | 12 | 13 | 13 | 13 | 13 | 12 |
| 990-EZ | 3 | 2 | 2 | 2 | 4 | 5 | 5 | 5 | 5 | 5 | 6 | 6 | 8 | 7 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 422,973 | 208            | 9,159   |
| 990-EZ | 116,213 | 149            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `| Year:, Amount:, Description:| 2017, , | 2018, | 2019, | 2020, | 2021, |` | 4,964 | 14.9% |
| `MISCELLANEOUS INCOME CONSISTS OF TENANT CHARGES, LAUNDRY AND VENDING CHARGES AND OTHER IN…` | 3,877 | 11.6% |
| `OTHER INCOME 0` | 2,917 | 8.7% |
| `| Year:, Amount:, Description:| 2016, , | 2017, | 2018, | 2019, | 2020, |` | 2,733 | 8.2% |
| `| Year:, Amount:, Description:| 2018, , | 2019, | 2020, | 2021, | 2022, |` | 2,653 | 8.0% |
| `MISCELLANEOUS INCOME` | 1,418 | 4.3% |
| `| Year:, Amount:, Description:| 2019, , | 2020, | 2021, | 2022, | 2023, |` | 1,344 | 4.0% |
| `| Year:, Amount:, Description:| -4, , | -3, | -2, | -1, | 0, |` | 1,223 | 3.7% |
| `OTHER INCOME` | 915 | 2.7% |
| `MISCELLANEOUS REVENUE` | 822 | 2.5% |
| `SCHEDULE A, PART IV, SUPPLEMENTAL INFORMATION: SCHEDULE A, PART III, LINE 12: MISCELLANEO…` | 805 | 2.4% |
| `| Year:, Amount:, Description:| 2015, , | 2016, | 2017, | 2018, | 2019, |` | 740 | 2.2% |
| `Other Income Part II, Line 10` | 627 | 1.9% |
| `The organization is a school as described under 170(b)(1)(A)(ii) and is not required to c…` | 588 | 1.8% |
| `MISCELLANEOUS` | 439 | 1.3% |
| `2011: 0.` | 434 | 1.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | YOUNG VISIONARIES BOARD INC | 2021 IS A SHORT YEAR FROM 2/4/2021 TO 12/31/2021. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521509349200107_public.xml) |
| 2013 | 990EZ | x2 | INTEGRATED SOCIAL SOLUTIONS INC | MISC REVENUES 2009 \$ 794 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423179349200242_public.xml) |
| 2012 | 990 | x1 | Arete Scholars Fund Inc | Schedule A, Part II, Line 10, Explanation of Other Income: Miscellaneous income… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411349349307356_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_06_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
