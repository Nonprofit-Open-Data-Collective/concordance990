# SG_03_THIRD_PARTY_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_ADDR_CITY

Thirty party - city

- Description: Third Party Foreign Address - City

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

6.5k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfThirdPartyUS/City` | SZ | 2009–2012 | 660 | 0.0896% |  |
| x2 | `IRS990ScheduleG/AddressOfThirdPartyForeign/City` | SZ | 2010–2010 | 1 | 0.000537% |  |
| x3 | `IRS990ScheduleG/ThirdPartyUSAddress/City` | SZ | 2013–2013 | 266 | 0.0877% |  |
| x4 | `IRS990ScheduleG/ThirdPartyForeignAddress/City` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x5 | `IRS990ScheduleG/ThirdPartyUSAddress/CityNm` | SZ | 2014–2024 | 5,498 | 0.137% |  |
| x6 | `IRS990ScheduleG/ThirdPartyForeignAddress/CityNm` | SZ | 2014–2024 | 55 | 0.0011% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressUS/City` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29 | 162 | 224 | 245 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 266 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 308 | 347 | 374 | 392 | 408 | 434 | 542 | 640 | 682 | 746 | 625 |
| x6 |  |  |  |  |  | 5 | 4 | 3 | 4 | 6 | 7 | 5 | 3 | 7 | 6 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 5,150   | 9              | 22      |
| 990-EZ | 1,331   | 8              | 17      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `ANCHORAGE` | 537     | 25.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | JEWISH COMMUNITY CENTRE OF GREATER VANC… | Victoria | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610279349300216_public.xml) |
| 2024 | 990 | x5 | EAGLE RIVER LIONS FOUNDATION INC | EAGLE RIVER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349311605_public.xml) |
| 2013 | 990 | x4 | THE RED SOX FOUNDATION INC | THORNHILL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403189349304650_public.xml) |
| 2013 | 990EZ | x3 | EXETER AREA CHARITABLE FOUNDATION | HAMPTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403179349202330_public.xml) |
| 2012 | 990 | x1 | AMERICAN LEGION POST \#18 | Mitchell | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341639349300129_public.xml) |
| 2010 | 990 | x2 | THE RED SOX FOUNDATION INC | SUMMERSIDE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201133199349306528_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
