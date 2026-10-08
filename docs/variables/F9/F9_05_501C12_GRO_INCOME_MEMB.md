# F9_05_501C12_GRO_INCOME_MEMB

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_501C12_GRO_INCOME_MEMB

Gross income from members or shareholders

- Description: Gross income from members

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-11A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

31k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.8x (IRS990/MembersAndShrGrossIncomeAmt, 990, TY2014) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 3.3x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossIncomeFromMembers` | PC | 2009–2012 | 4,254 | 0.853% |  |
| x2 | `IRS990/MembersAndShrGrossIncomeAmt` | PC | 2013–2024 | 26,482 | 0.886% |  |
| x3 | `IRS990/Form990PartV/GrossIncomeFromMembers` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 99 | 1.2k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.7k | 1.8k | 1.8k | 1.9k | 2.0k | 2.2k | 2.2k | 2.6k | 2.6k | 2.6k | 2.7k | 2.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 30,736 | 100.0% | 7.1% | 0.0% | 248,446 | 844,805 | 13,451,106 | 327,412,902 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Alger Delta Cooperative Electric | 18727117 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202542129349300829_public.xml) |
| 2012 | 990 | x1 | RUSSELL UTILITIES INC | 279730 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331789349300423_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_501C12_GRO_INCOME_MEMB, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
