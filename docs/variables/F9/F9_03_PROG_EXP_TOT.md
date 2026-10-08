# F9_03_PROG_EXP_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_EXP_TOT

Total program service expenses

- Description: Total Program Service Revenue (Accomplishments Summary)

- Table:

  [`F9-P03-T00-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-programs)
  (one)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04E`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

5.0M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.1x (IRS990/TotalProgramServiceExpense, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalProgramServiceExpense` | PC | 2009–2012 | 431,808 | 86.8% |  |
| x2 | `IRS990EZ/TotalProgramServiceExpenses` | EZ | 2009–2012 | 194,383 | 75.1% |  |
| x3 | `IRS990/TotalProgramServiceExpensesAmt` | PC | 2013–2024 | 2,886,132 | 86% |  |
| x4 | `IRS990EZ/TotalProgramServiceExpensesAmt` | EZ | 2013–2024 | 1,521,306 | 81.4% |  |
| x5 | `IRS990/Form990PartIII/TotalProgramServiceExpense` | PC | not observed | 0 |  |  |
| x6 | `IRS990/TotalProgramServicesExpenses` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 107k | 138k | 156k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 13k | 49k | 62k | 70k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 173k | 190k | 202k | 210k | 225k | 233k | 244k | 275k | 289k | 301k | 307k | 238k |
| x4 |  |  |  |  | 85k | 95k | 102k | 104k | 111k | 121k | 123k | 136k | 164k | 168k | 168k | 146k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 91 | 87 | 87 | 87 | 87 | 87 | 86 | 86 | 86 | 86 | 86 | 86 | 86 | 86 | 86 | 86 |
| 990-EZ | 81 | 77 | 76 | 75 | 81 | 81 | 81 | 80 | 80 | 81 | 81 | 80 | 81 | 81 | 81 | 81 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 3,317,927 | 100.0% | 1.0% | 0.0% | 145,444 | 380,584 | 1,295,568 | 109,133,594 |
| 990-EZ | 1,715,683 | 100.0% | 15.3% | 0.0% | 7,860 | 35,601 | 72,990 | 191,196 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KYLE GOLDBERG MEMORIAL FOUNDATION | 2420 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 28758 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 530866 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_EXP_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
