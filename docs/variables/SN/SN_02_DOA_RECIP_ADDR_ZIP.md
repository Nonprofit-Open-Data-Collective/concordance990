# SN_02_DOA_RECIP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_ADDR_ZIP

Recipient zip

- Description: Foreign Address - Postal code

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

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.5% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 6 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/AddressUS/ZIPCode` | SZ | 2009–2012 | 2,276 | 0.273% | 26.4% |
| x2 | `IRS990ScheduleN/DispositionTable/AddressForeign/PostalCode` | SZ | 2009–2012 | 19 | 0.00219% | 36.8% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/ZIPCode` | SZ | 2013–2013 | 868 | 0.286% | 29.4% |
| x4 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/PostalCode` | SZ | 2013–2013 | 7 | 0.00231% | 28.6% |
| x5 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/ZIPCd` | SZ | 2014–2024 | 11,669 | 0.186% | 27.2% |
| x6 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 84 | 0.00197% | 21.4% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 211 | 606 | 713 | 746 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 | 6 | 6 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 868 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 7 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 964 | 969 | 1.1k | 1.1k | 1.1k | 978 | 1.1k | 1.1k | 1.2k | 1.2k | 850 |
| x6 |  |  |  |  |  | 8 | 5 | 3 | 8 | 5 | 7 | 11 | 7 | 11 | 10 | 9 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 14,231  | 94.6% |
| `999999999` | 733     | 4.9%  |
| `9999`      | 9       | 0.1%  |
| `9999999`   | 9       | 0.1%  |
| `A9A 9A9`   | 9       | 0.1%  |
| `999999`    | 8       | 0.1%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | Team Frank Africa USA | 0181 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523079349301032_public.xml) |
| 2024 | 990EZ | x5 | OPTOMETRIC COUNCIL ON REFRACTIVE TECHNO… | 32792 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349200212_public.xml) |
| 2013 | 990 | x4 | CLEAN CARIBBEAN CORPORATION | W1H 7AL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441349349305119_public.xml) |
| 2013 | 990 | x3 | ELDERTRUST OF FLORIDA INC | 37130 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349301012_public.xml) |
| 2012 | 990 | x2 | NISHIMACHI FOUNDATION | 1060046 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349300314_public.xml) |
| 2012 | 990 | x1 | UNITE HERE IU LOCAL NO 54 | 08401 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312419349300241_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
