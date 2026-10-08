# F9_05_501C29_STATE_RESERVE_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_501C29_STATE_RESERVE_AMT

State required reserves

- Description: State required reserves amount

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-13B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

7.2k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/StateRequiredReserves` | PC | 2010–2012 | 51 | 0.0106% |  |
| x2 | `IRS990/StateRequiredReservesAmt` | PC | 2013–2024 | 7,142 | 0.511% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 15 | 17 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14 | 73 | 122 | 180 | 257 | 354 | 761 | 1.1k | 643 | 986 | 1.3k | 1.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99  |
|--------|---------|-----------|--------|------------|-----|--------|-----|------|
| 990    | 7,193   | 100.0%    | 98.6%  | 0.0%       | 0   | 0      | 0   | 0.93 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Stonewall Ball Club Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349320048_public.xml) |
| 2012 | 990 | x1 | GOOD NEIGHBOR FUND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313199349306431_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_501C29_STATE_RESERVE_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
