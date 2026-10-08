# SI_02_GRANT_US_ORG_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_ADDR_CITY

Grantee city

- Description: Address Foreign - City

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

532k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AddressUS/City` | SZ | 2009–2012 | 68,775 | 13.7% | 51.5% |
| x2 | `IRS990ScheduleI/RecipientTable/AddressForeign/City` | SZ | 2009–2012 | 185 | 0.0351% | 21.1% |
| x3 | `IRS990ScheduleI/RecipientTable/USAddress/City` | SZ | 2013–2013 | 27,474 | 13.8% | 50.2% |
| x4 | `IRS990ScheduleI/RecipientTable/ForeignAddress/City` | SZ | 2013–2013 | 91 | 0.0458% | 13.2% |
| x5 | `IRS990ScheduleI/RecipientTable/USAddress/CityNm` | SZ | 2014–2024 | 433,436 | 13.6% | 50.9% |
| x6 | `IRS990ScheduleI/RecipientTable/ForeignAddress/CityNm` | SZ | 2014–2024 | 1,584 | 0.0519% | 23.3% |
| x7 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressUS/City` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 17k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 16 | 48 | 58 | 63 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 91 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 30k | 32k | 34k | 37k | 38k | 40k | 43k | 45k | 47k | 49k | 38k |
| x6 |  |  |  |  |  | 92 | 93 | 126 | 150 | 146 | 132 | 140 | 179 | 195 | 187 | 144 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 531,545 | 9              | 37      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 33,780  | 18.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | EDUCATIONAL CREDIT | PONCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503199349301740_public.xml) |
| 2024 | 990 | x5 | Associated Colleges of Illinois Inc | Rock Island | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349311118_public.xml) |
| 2013 | 990 | x4 | THE GREATER CINCINNATI FOUNDATION | KINGSTON ON K7L 3N6 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432759349300738_public.xml) |
| 2013 | 990 | x3 | EAST BALTIMORE COMMUNITY SCHOOL INC | BALTIMORE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303049_public.xml) |
| 2012 | 990 | x2 | ESSEX COUNTY COMMUNITY FOUNDATION INC | KRAKOWAUL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312889349300126_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | SAN DIEGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
