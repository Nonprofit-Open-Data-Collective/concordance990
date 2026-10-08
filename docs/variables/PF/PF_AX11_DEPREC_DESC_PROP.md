# PF_AX11_DEPREC_DESC_PROP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX11_DEPREC_DESC_PROP

Description of Property

- Description: Description of Property

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

76k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | DepreciationSchedule/Depreciation/DescriptionOfProperty: longest value is exactly 70 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DepreciationSchedule/Depreciation/DescriptionOfProperty` | PF | 2009–2012 | 7,906 | 7.88% | 78.1% |
| x2 | `DepreciationSchedule/DepreciationPropertyGrp/PropertyDesc` | PF | 2013–2024 | 67,891 | 5.59% | 76.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 236 | 1.9k | 2.6k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k | 4.2k | 4.6k | 4.8k | 5.1k | 5.2k | 5.7k | 7.0k | 7.1k | 7.1k | 7.1k | 6.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 75,797  | 17             | 80      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `COMPUTER`               | 11,966  | 19.4% |
| `LAND`                   | 10,130  | 16.4% |
| `BUILDING`               | 7,426   | 12.0% |
| `EQUIPMENT`              | 6,795   | 11.0% |
| `FURNITURE`              | 5,992   | 9.7%  |
| `COMPUTER EQUIPMENT`     | 4,856   | 7.9%  |
| `OFFICE FURNITURE`       | 4,002   | 6.5%  |
| `OFFICE EQUIPMENT`       | 3,780   | 6.1%  |
| `IMPROVEMENTS`           | 3,713   | 6.0%  |
| `LEASEHOLD IMPROVEMENTS` | 1,089   | 1.8%  |
| `PRINTER`                | 1,051   | 1.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | WICOMICO VALLEY FOUNDATION OF | IMPROVEMENTS 11350 ALLENS FRESH RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513199349101371_public.xml) |
| 2012 | 990PF | x1 | ST THOMAS MORE CENTER | 1998 CONSTRUCTION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302279349100615_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX11_DEPREC_DESC_PROP, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
