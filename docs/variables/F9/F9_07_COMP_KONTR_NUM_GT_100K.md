# F9_07_COMP_KONTR_NUM_GT_100K

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_NUM_GT_100K

Number of independent contractors who received more than \$100,000 of
compensation

- Description: Total number of independent contractors who received
  100K+ from org

- Table:

  [`F9-P07-T00-DIR-TRUST-KEY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t00-dir-trust-key)
  (one)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-B-LINE-02`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.4M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990/NumberOfContractorsGT100K, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NumberOfContractorsGT100K` | PC | 2009–2012 | 333,538 | 65.2% |  |
| x2 | `IRS990EZ/TotNumCntrctPdOver100KProfSer` | EZ | 2009–2012 | 3,247 | 1.49% |  |
| x3 | `IRS990/CntrctRcvdGreaterThan100KCnt` | PC | 2013–2024 | 1,988,748 | 55.7% |  |
| x4 | `IRS990EZ/CntrctRcvdGreaterThan100KCnt` | EZ | 2013–2024 | 42,017 | 4.05% |  |
| x5 | `IRS990/Form990PartVIISectionB/NumberOfContractorsGT100K` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26k | 84k | 106k | 117k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 210 | 648 | 992 | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 127k | 138k | 145k | 150k | 159k | 163k | 168k | 185k | 193k | 201k | 204k | 154k |
| x4 |  |  |  |  | 1.6k | 1.8k | 1.8k | 2.0k | 2.6k | 2.8k | 2.5k | 2.6k | 4.5k | 5.6k | 7.0k | 7.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 79 | 68 | 66 | 65 | 64 | 63 | 62 | 61 | 61 | 60 | 59 | 58 | 57 | 58 | 58 | 56 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99  |
|--------|-----------|-----------|--------|------------|-----|--------|-----|------|
| 990    | 2,322,286 | 100.0%    | 78.8%  | 0.0%       | 0   | 0      | 0   | 41   |
| 990-EZ | 45,264    | 100.0%    | 99.2%  | 0.0%       | 0   | 0      | 0   | 0.06 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Releve Dance Company Booster Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520639349200807_public.xml) |
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x2 | THE ALLEN LILIA AND ALEXANDER VINE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341639349200104_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_NUM_GT_100K, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
