# SN_02_DOA_RECIP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_ADDR_CNTR

Recipient country

- Description: Foreign Address - Country

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

3 / 4

xpaths observed / mapped

238

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 17 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/AddressForeign/Country` | SZ | 2009–2012 | 38 | 0.00293% | 34.2% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/Country` | SZ | 2013–2013 | 15 | 0.00495% | 40.0% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/CountryCd` | SZ | 2014–2024 | 185 | 0.00504% | 32.4% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressForeign/Country` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4 | 15 | 11 | 8 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 13 | 12 | 10 | 19 | 11 | 11 | 24 | 16 | 26 | 20 | 23 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 36      | 17.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | DECENTRALIZED PICTURES FOUNDATION INC | SZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349313599_public.xml) |
| 2013 | 990 | x2 | AMERICAN FRIENDS OF SDEI CHEMED | IS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412109349300331_public.xml) |
| 2012 | 990 | x1 | THE EXUMA FOUNDATION | BF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342199349300229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
