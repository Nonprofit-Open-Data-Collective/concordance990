# PF_07_BOOK_LOCATION_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_LOCATION_ADDR_STATE

Province or state

- Description: Province or state

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-14`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

4 / 4

xpaths observed / mapped

1.0M

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 75 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/State` | PF | 2013–2013 | 45,652 | 99.5% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/ProvinceOrState` | PF | 2013–2013 | 23 | 0.0501% |  |
| x3 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/StateAbbreviationCd` | PF | 2014–2024 | 996,913 | 99.2% |  |
| x4 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 816 | 0.105% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 53k | 58k | 63k | 68k | 75k | 87k | 114k | 119k | 122k | 124k | 114k |
| x4 |  |  |  |  |  | 26 | 25 | 33 | 33 | 38 | 42 | 98 | 125 | 139 | 136 | 121 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 99 | 100 | 99 | 100 | 100 | 100 | 100 | 99 | 99 | 99 | 99 | 99 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 115,236 | 18.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THELMA WEBB SCHOLARSHIP | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2024 | 990PF | x4 | Impact Hub Americas Corp | ANTIOQUIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541479349100109_public.xml) |
| 2013 | 990PF | x1 | ALEXANDRA R MCCORMICK REVOCABLE TRUST | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402619349100500_public.xml) |
| 2013 | 990PF | x2 | FRIENDS OF THE ROYAL SOCIETY OF | ENGLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531959349100408_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_LOCATION_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
