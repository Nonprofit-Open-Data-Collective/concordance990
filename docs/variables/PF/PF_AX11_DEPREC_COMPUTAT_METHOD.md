# PF_AX11_DEPREC_COMPUTAT_METHOD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX11_DEPREC_COMPUTAT_METHOD

Computation Method

- Description: Computation Method

- Table:

  [`PF-P99-T11-DEPREC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t11-deprec)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-11`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

72k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DepreciationSchedule/Depreciation/ComputationMethod` | PF | 2009–2012 | 7,500 | 7.5% | 79.3% |
| x2 | `DepreciationSchedule/DepreciationPropertyGrp/ComputationMethodTxt` | PF | 2013–2024 | 64,639 | 5.29% | 77.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 222 | 1.8k | 2.5k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.4k | 4.0k | 4.4k | 4.6k | 4.8k | 5.0k | 5.5k | 6.6k | 6.7k | 6.8k | 6.7k | 6.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 7 | 7 | 8 | 8 | 7 | 8 | 7 | 7 | 7 | 6 | 6 | 6 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 72,139  | 3              | 51      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `SL`            | 37,668  | 37.0% |
| `200DB`         | 26,635  | 26.2% |
| `S/L`           | 12,342  | 12.1% |
| `L`             | 10,521  | 10.3% |
| `150DB`         | 5,633   | 5.5%  |
| `M`             | 2,121   | 2.1%  |
| `NC`            | 1,483   | 1.5%  |
| `91`            | 917     | 0.9%  |
| `ADS`           | 875     | 0.9%  |
| `NDA`           | 850     | 0.8%  |
| `M5`            | 745     | 0.7%  |
| `53`            | 599     | 0.6%  |
| `87`            | 435     | 0.4%  |
| `57`            | 385     | 0.4%  |
| `54`            | 318     | 0.3%  |
| `STRAIGHT LINE` | 265     | 0.3%  |
| `M7`            | 51      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL AND SUZANNE HANIFL FOUNDATION | SL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620409349100417_public.xml) |
| 2012 | 990PF | x1 | ST THOMAS MORE CENTER | S/L | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302279349100615_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX11_DEPREC_COMPUTAT_METHOD, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
