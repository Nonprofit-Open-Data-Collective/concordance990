# SN_02_DOA_RECIP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_ADDR_STATE

Recipient state

- Description: Province or state

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 57 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/AddressUS/State` | SZ | 2009–2012 | 2,276 | 0.273% | 26.4% |
| x2 | `IRS990ScheduleN/DispositionTable/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 18 | 0.0011% | 44.4% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/State` | SZ | 2013–2013 | 868 | 0.286% | 29.4% |
| x4 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 10 | 0.0033% | 40.0% |
| x5 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 11,669 | 0.186% | 27.2% |
| x6 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 101 | 0.00241% | 23.8% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressUS/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 211 | 606 | 713 | 746 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 | 9 | 5 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 868 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 10 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 964 | 969 | 1.1k | 1.1k | 1.1k | 978 | 1.1k | 1.1k | 1.2k | 1.2k | 850 |
| x6 |  |  |  |  |  | 6 | 7 | 6 | 9 | 7 | 6 | 12 | 11 | 13 | 13 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 1,539   | 18.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | RENAND FOUNDATION INC | JACMEL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523009349302202_public.xml) |
| 2024 | 990 | x5 | MISSION HOPE | GA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503209349300375_public.xml) |
| 2013 | 990 | x4 | AMERICAN FRIENDS OF SDEI CHEMED | ISRAEL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412109349300331_public.xml) |
| 2013 | 990 | x3 | ELDERTRUST OF FLORIDA INC | TN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349301012_public.xml) |
| 2012 | 990 | x2 | DIVINE LOVE WORLD CHARITY INC | TAMIL NADU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349302236_public.xml) |
| 2012 | 990 | x1 | UNITE HERE IU LOCAL NO 54 | NJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312419349300241_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
