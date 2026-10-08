# F9_09_EXP_BEN_PAID_MEMB_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_BEN_PAID_MEMB_TOT

Benefits paid to or for members - total expenses

- Description: Benefits Paid to or for Members - Total Expense

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-04-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 4

xpaths observed / mapped

1.0M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 73.9x (IRS990/BenefitsToMembersGrp/TotalAmt, 990, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/BenefitsToMembers/Total` | PC | 2009–2012 | 143,475 | 28.9% |  |
| x2 | `IRS990/BenefitsToMembersGrp/TotalAmt` | PC | 2013–2024 | 867,835 | 25.9% |  |
| x3 | `IRS990/BenefitsPaidToOrForMembers/Total` | PC | not observed | 0 |  |  |
| x4 | `IRS990/Form990PartIX/BenefitsToMembers/Total` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.3k | 36k | 47k | 52k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 56k | 61k | 63k | 65k | 68k | 69k | 71k | 80k | 85k | 88k | 89k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 28 | 29 | 29 | 29 | 28 | 28 | 27 | 27 | 26 | 26 | 25 | 25 | 25 | 25 | 25 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|-----|------------|
| 990    | 1,011,308 | 100.0%    | 83.9%  | 0.0%       | 0   | 0      | 0   | 33,471,635 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_BEN_PAID_MEMB_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
