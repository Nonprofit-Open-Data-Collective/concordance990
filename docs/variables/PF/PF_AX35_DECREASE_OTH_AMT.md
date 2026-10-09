# PF_AX35_DECREASE_OTH_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX35_DECREASE_OTH_AMT

Other decreases schedule - amount

- Description: Other Decreases - Amount

- Table:

  [`PF-P99-T35-DECREASE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t35-decrease-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-35`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

297k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 5.8x (OtherDecreasesSchedule/OtherDecreasesDetail/Amt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherDecreasesSchedule/OtherDecreases/Amount` | PF | 2009–2012 | 18,563 | 16.1% | 22.4% |
| x2 | `OtherDecreasesSchedule/OtherDecreasesDetail/Amount` | PF | 2013–2013 | 7,576 | 16.5% | 23.8% |
| x3 | `OtherDecreasesSchedule/OtherDecreasesDetail/Amt` | PF | 2014–2024 | 270,527 | 27.6% | 34.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 434 | 4.6k | 7.1k | 6.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.6k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 13k | 15k | 14k | 16k | 22k | 23k | 31k | 34k | 39k | 33k | 32k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 19 | 18 | 21 | 16 | 17 | 24 | 25 | 22 | 23 | 30 | 26 | 27 | 28 | 32 | 26 | 28 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 296,666 | 100.0%    | 0.9%   | 0.3%       | 122 | 1,207  | 19,187 | 3,793,430 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | 18 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x2 | CHRISTIAN MISSION SCHOLARSHIP FOUND | 232079 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432399349100703_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 17668 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX35_DECREASE_OTH_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
