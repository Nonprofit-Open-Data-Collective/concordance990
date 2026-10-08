# F9_03_PROG_GRANT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_GRANT

Program accomplishment grants and allocations to others

- Description: Program Accomplishment Grants

- Table:

  [`F9-P03-T00-PROGRAM-ONE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-one)
  (one)  
  [`F9-P03-T00-PROGRAM-THREE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-three)
  (one)  
  [`F9-P03-T00-PROGRAM-TWO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-two)
  (one)  
  [`F9-P03-T01-PROGRAMS-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t01-programs-other)
  (many)  
  [`F9-P03-T02-PROGRAMS-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t02-programs-ez)
  (many)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04-ABCD`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

10 / 20

xpaths observed / mapped

2.9M

filings with a value

2009–2024

tax years observed

3 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 13.0x (IRS990EZ/ProgramSrvcAccomplishmentGrp/GrantsAndAllocationsAmt, 990EZ, TY2018) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 8.7x (990: IRS990/Grants vs IRS990/ProgSrvcAccomActyOtherGrp/GrantAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/ProgramServiceAccomplishment/GrantsAndAllocations` | EZ | 2009–2012 | 130,484 | 49.1% | 26.0% |
| x2 | `IRS990/Grants` | PC | 2009–2012 | 111,680 | 22.9% |  |
| x3 | `IRS990/Activity2/Grants` | PC | 2009–2012 | 34,079 | 6.73% |  |
| x4 | `IRS990/Activity3/Grants` | PC | 2009–2012 | 23,131 | 4.49% |  |
| x5 | `IRS990/ActivityOther/Grants` | PC | 2009–2012 | 14,275 | 2.93% | 19.1% |
| x6 | `IRS990EZ/ProgramSrvcAccomplishmentGrp/GrantsAndAllocationsAmt` | EZ | 2013–2024 | 990,979 | 49.4% | 26.5% |
| x7 | `IRS990/GrantAmt` | PC | 2013–2024 | 954,393 | 32.2% |  |
| x8 | `IRS990/ProgSrvcAccomActy2Grp/GrantAmt` | PC | 2013–2024 | 288,647 | 10.6% |  |
| x9 | `IRS990/ProgSrvcAccomActy3Grp/GrantAmt` | PC | 2013–2024 | 199,798 | 7.84% |  |
| x10 | `IRS990/ProgSrvcAccomActyOtherGrp/GrantAmt` | PC | 2013–2024 | 105,724 | 3.54% | 17.5% |
| x11 | `IRS990/Form990PartIII/Activity2/Grants` | PC | not observed | 0 |  |  |
| x12 | `IRS990/Form990PartIII/Activity3/Grants` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartIII/ActivityOther/Grants` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartIII/Grants` | PC | not observed | 0 |  |  |
| x15 | `IRS990/ProgramServiceAccomplishments/GrantsAndAllocations` | PC | not observed | 0 |  |  |
| x16 | `IRS990EZ/GrantAmt` | EZ | not observed | 0 |  |  |
| x17 | `IRS990EZ/Grants` | EZ | not observed | 0 |  |  |
| x18 | `IRS990EZ/ProgSrvcAccomActy2Grp/GrantAmt` | EZ | not observed | 0 |  |  |
| x19 | `IRS990EZ/ProgSrvcAccomActy3Grp/GrantAmt` | EZ | not observed | 0 |  |  |
| x20 | `IRS990EZ/ProgSrvcAccomActyOtherGrp/GrantAmt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.5k | 33k | 42k | 46k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 9.2k | 27k | 34k | 41k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 3.0k | 8.6k | 10k | 12k |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 2.2k | 5.9k | 7.0k | 8.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 | 1.4k | 3.5k | 4.1k | 5.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 57k | 63k | 67k | 68k | 71k | 85k | 87k | 97k | 107k | 100k | 101k | 88k |
| x7 |  |  |  |  | 46k | 51k | 54k | 58k | 63k | 79k | 84k | 99k | 106k | 111k | 115k | 89k |
| x8 |  |  |  |  | 13k | 15k | 16k | 16k | 18k | 22k | 24k | 30k | 33k | 35k | 37k | 29k |
| x9 |  |  |  |  | 8.9k | 9.8k | 10k | 11k | 12k | 15k | 16k | 21k | 23k | 25k | 27k | 22k |
| x10 |  |  |  |  | 5.7k | 6.3k | 6.7k | 6.9k | 7.4k | 8.7k | 9.1k | 10k | 11k | 12k | 12k | 9.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 28 | 22 | 21 | 23 | 23 | 23 | 23 | 24 | 24 | 29 | 30 | 31 | 31 | 32 | 32 | 32 |
| 990-EZ | 61 | 52 | 51 | 49 | 54 | 54 | 53 | 52 | 51 | 57 | 57 | 57 | 53 | 49 | 49 | 49 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 1,731,716 | 100.0%    | 28.6%  | 0.0%       | 162 | 20,000 | 150,490 | 12,570,194 |
| 990-EZ | 1,121,461 | 100.0%    | 54.0%  | 0.0%       | 0   | 0      | 8,000   | 137,311    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x7 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x9 | The Family YMCA | 14270 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349301161_public.xml) |
| 2024 | 990 | x8 | IAAI FOUNDATION INC | 11566 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x10 | UNITED WAY OF KNOX COUNTY INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532129349301338_public.xml) |
| 2024 | 990EZ | x6 | Science & Technology Education Project | 17648 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2012 | 990 | x2 | GodsKidsorg | 351480 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |
| 2012 | 990 | x4 | ARAB AMERICAN INSTITUTE FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312879349300866_public.xml) |
| 2012 | 990 | x3 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | 912 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_GRANT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
