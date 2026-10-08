# SH_04_CO_PROFIT_PCT_OFF

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_04_CO_PROFIT_PCT_OFF

Officers, directs, trustees, of key employees' profit % or stock
ownership %

- Description: Officers; etc. profit % or ownership %

- Table:

  [`SH-P04-T01-COMPANY-JOINT-VENTURES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p04-t01-company-joint-ventures)
  (many)

- Part: Part IV - Management Companies and Joint Ventures

- Location:

  `SCHED-H-PART-04-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

3.2k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleH/Form990ScheduleHPartIV/OfficersEtcProfitOrOwnership: fraction (0-1); IRS990ScheduleH/ManagementCoAndJntVenturesGrp/OfcrEtcProfitOrOwnershipPct: fraction (0-1) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartIV/OfficersEtcProfitOrOwnership` | SZ | 2009–2012 | 893 | 0.134% | 44.5% |
| x2 | `IRS990ScheduleH/ManagementCoAndJntVenturesGrp/OfcrEtcProfitOrOwnershipPct` | SZ | 2013–2024 | 2,319 | 0.0411% | 37.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 133 | 258 | 262 | 240 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 246 | 243 | 222 | 208 | 199 | 188 | 177 | 178 | 183 | 180 | 181 | 114 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99  |
|--------|---------|-----------|--------|------------|-----|--------|-----|------|
| 990    | 3,212   | 100.0%    | 86.1%  | 0.0%       | 0   | 0      | 0   | 0.50 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Hackensack Meridian Health Inc-Subordin… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523199349302402_public.xml) |
| 2012 | 990 | x1 | ST JOSEPHS HOSPITAL HEALTH CENTER | 0.00000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349305472_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_04_CO_PROFIT_PCT_OFF, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
