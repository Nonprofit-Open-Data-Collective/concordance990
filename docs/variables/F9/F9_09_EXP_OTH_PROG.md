# F9_09_EXP_OTH_PROG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_OTH_PROG

Other expenses - program service expenses

- Description: Program services

- Table:

  [`F9-P09-T01-EXPENSES-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t01-expenses-other)
  (many)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-24-ABCD-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.9M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (IRS990/OtherExpenses/ProgramServices, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/OtherExpenses/ProgramServices` | PC | 2009–2012 | 377,031 | 75.8% | 90.1% |
| x2 | `IRS990/OtherExpensesGrp/ProgramServicesAmt` | PC | 2013–2024 | 2,517,045 | 74.2% | 88.1% |
| x3 | `IRS990/Form990PartIX/OtherExpenses/ProgramServices` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 27k | 93k | 120k | 136k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 151k | 165k | 176k | 184k | 198k | 205k | 214k | 239k | 251k | 261k | 266k | 206k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 82 | 76 | 75 | 76 | 76 | 76 | 76 | 75 | 75 | 76 | 76 | 75 | 75 | 75 | 75 | 74 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 2,894,067 | 100.0%    | 3.9%   | 0.2%       | 3,361 | 14,779 | 62,597 | 6,154,550 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | 38240 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 679 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_OTH_PROG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
