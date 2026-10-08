# SI_02_GRANT_US_ORG_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_ADDR_ZIP

Grantee zip

- Description: Address Foreign - Postal code

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

531k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.9% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 6 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AddressUS/ZIPCode` | SZ | 2009–2012 | 68,775 | 13.7% | 51.5% |
| x2 | `IRS990ScheduleI/RecipientTable/AddressForeign/PostalCode` | SZ | 2009–2012 | 134 | 0.0273% | 19.4% |
| x3 | `IRS990ScheduleI/RecipientTable/USAddress/ZIPCode` | SZ | 2013–2013 | 27,474 | 13.8% | 50.2% |
| x4 | `IRS990ScheduleI/RecipientTable/ForeignAddress/PostalCode` | SZ | 2013–2013 | 57 | 0.0287% | 14.0% |
| x5 | `IRS990ScheduleI/RecipientTable/USAddress/ZIPCd` | SZ | 2014–2024 | 433,436 | 13.6% | 50.9% |
| x6 | `IRS990ScheduleI/RecipientTable/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 1,229 | 0.0444% | 21.4% |
| x7 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 17k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 10 | 32 | 43 | 49 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 57 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 30k | 32k | 34k | 37k | 38k | 40k | 43k | 45k | 47k | 49k | 38k |
| x6 |  |  |  |  |  | 65 | 60 | 88 | 111 | 104 | 95 | 117 | 152 | 160 | 154 | 123 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 516,276 | 91.0% |
| `999999999` | 50,561  | 8.9%  |
| `A9A 9A9`   | 239     | 0.0%  |
| `9999`      | 110     | 0.0%  |
| `999999`    | 105     | 0.0%  |
| `A9A9A9`    | 58      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | EDUCATIONAL CREDIT | 00717 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503199349301740_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | 33309 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | OUR SUNDAY VISITOR INC | 00729 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443189349307149_public.xml) |
| 2013 | 990 | x3 | EAST BALTIMORE COMMUNITY SCHOOL INC | 21213 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303049_public.xml) |
| 2012 | 990 | x2 | JEWISH FEDERATION OF SILICON VALLEY | 10075 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440439349301924_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 857021089 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
