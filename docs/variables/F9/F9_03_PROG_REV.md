# F9_03_PROG_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_REV

Program service accomplishment revenue

- Description: Program Accomplishment Revenue

- Table:

  [`F9-P03-T00-PROGRAM-ONE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-one)
  (one)  
  [`F9-P03-T00-PROGRAM-THREE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-three)
  (one)  
  [`F9-P03-T00-PROGRAM-TWO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-two)
  (one)  
  [`F9-P03-T01-PROGRAMS-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t01-programs-other)
  (many)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04-ABCD`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

8 / 12

xpaths observed / mapped

3.1M

filings with a value

2009–2024

tax years observed

3 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.6x (IRS990/Revenue, 990, TY2010) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 12.0x (990: IRS990/Revenue vs IRS990/ProgSrvcAccomActyOtherGrp/RevenueAmt) |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Revenue` | PC | 2009–2012 | 250,352 | 49.2% |  |
| x2 | `IRS990/Activity2/Revenue` | PC | 2009–2012 | 75,754 | 14.5% |  |
| x3 | `IRS990/Activity3/Revenue` | PC | 2009–2012 | 53,499 | 10% |  |
| x4 | `IRS990/ActivityOther/Revenue` | PC | 2009–2012 | 28,532 | 5.4% | 20.8% |
| x5 | `IRS990/RevenueAmt` | PC | 2013–2024 | 1,721,388 | 50.7% |  |
| x6 | `IRS990/ProgSrvcAccomActy2Grp/RevenueAmt` | PC | 2013–2024 | 477,396 | 14.6% |  |
| x7 | `IRS990/ProgSrvcAccomActy3Grp/RevenueAmt` | PC | 2013–2024 | 328,264 | 10.4% |  |
| x8 | `IRS990/ProgSrvcAccomActyOtherGrp/RevenueAmt` | PC | 2013–2024 | 159,230 | 4.54% | 17.3% |
| x9 | `IRS990/Form990PartIII/Activity2/Revenue` | PC | not observed | 0 |  |  |
| x10 | `IRS990/Form990PartIII/Activity3/Revenue` | PC | not observed | 0 |  |  |
| x11 | `IRS990/Form990PartIII/ActivityOther/Revenue` | PC | not observed | 0 |  |  |
| x12 | `IRS990/Form990PartIII/Revenue` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 20k | 62k | 79k | 88k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 7.2k | 19k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 5.4k | 14k | 16k | 18k |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 3.1k | 7.1k | 8.6k | 9.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 97k | 106k | 119k | 125k | 134k | 142k | 149k | 167k | 175k | 182k | 185k | 141k |
| x6 |  |  |  |  | 28k | 30k | 32k | 33k | 35k | 38k | 40k | 46k | 49k | 51k | 53k | 41k |
| x7 |  |  |  |  | 19k | 21k | 22k | 22k | 24k | 26k | 27k | 32k | 34k | 36k | 38k | 29k |
| x8 |  |  |  |  | 10k | 11k | 12k | 12k | 13k | 13k | 14k | 15k | 15k | 16k | 16k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 61 | 51 | 50 | 49 | 49 | 49 | 51 | 51 | 51 | 52 | 53 | 52 | 52 | 52 | 52 | 51 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|---------|---------|------------|
| 990    | 3,094,405 | 100.0%    | 11.2%  | 0.2%       | 15,933 | 118,411 | 594,661 | 41,744,058 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x5 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x7 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2024 | 990 | x6 | IAAI FOUNDATION INC | 61468 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x8 | RISEWELL COMMUNITY SERVICES INC FKA | 35012 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 902653 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |
| 2012 | 990 | x3 | ROCKLIN LITTLE LEAGUE | 7796 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432279349301008_public.xml) |
| 2012 | 990 | x2 | DAVIS MADRIGALS INC | 18898 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |
| 2012 | 990 | x4 | BACH SOCIETY OF SAINT LOUIS | 4257 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410379349301556_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_REV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
