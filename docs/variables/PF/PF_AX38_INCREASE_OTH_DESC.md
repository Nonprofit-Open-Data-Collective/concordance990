# PF_AX38_INCREASE_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX38_INCREASE_OTH_DESC

Other increases schedule - description

- Description: Other Increases - Description

- Table:

  [`PF-P99-T38-INCREASE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t38-increase-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-38`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

284k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | OtherIncreasesSchedule/OtherIncreasesDetail/Desc: longest value is exactly 100 characters; OtherIncreasesSchedule/OtherIncreasesDetail/Description: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherIncreasesSchedule/OtherIncreases/Description` | PF | 2009–2012 | 19,734 | 18.7% | 21.3% |
| x2 | `OtherIncreasesSchedule/OtherIncreasesDetail/Description` | PF | 2013–2013 | 8,874 | 19.3% | 19.3% |
| x3 | `OtherIncreasesSchedule/OtherIncreasesDetail/Desc` | PF | 2014–2024 | 255,664 | 29% | 25.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 535 | 5.4k | 6.3k | 7.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.9k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 11k | 11k | 15k | 15k | 16k | 24k | 33k | 33k | 29k | 36k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 23 | 21 | 18 | 19 | 19 | 20 | 19 | 23 | 22 | 21 | 27 | 29 | 28 | 24 | 29 | 29 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 284,272 | 24             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `ROUNDING`                       | 38,506  | 32.9% |
| `MUTUAL FUND TIMING ADJ`         | 9,932   | 8.5%  |
| `UNREALIZED GAIN ON INVESTMENTS` | 7,638   | 6.5%  |
| `PRIOR PERIOD ADJUSTMENT`        | 6,239   | 5.3%  |
| `COST BASIS ADJUSTMENT`          | 5,974   | 5.1%  |
| `ROUNDING ADJUSTMENT`            | 5,763   | 4.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | ROUNDING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x2 | EZCORP FOUNDATION | INVESTMENT GAINS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | PRIOR PERIOD ADJUSTMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX38_INCREASE_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
