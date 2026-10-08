# SI_02_GRANT_US_ORG_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_ADDR_STATE

Grantee state

- Description: Province or state

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

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 187 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AddressUS/State` | SZ | 2009–2012 | 68,775 | 13.7% | 51.5% |
| x2 | `IRS990ScheduleI/RecipientTable/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 139 | 0.0284% | 19.4% |
| x3 | `IRS990ScheduleI/RecipientTable/USAddress/State` | SZ | 2013–2013 | 27,474 | 13.8% | 50.2% |
| x4 | `IRS990ScheduleI/RecipientTable/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 71 | 0.0357% | 19.7% |
| x5 | `IRS990ScheduleI/RecipientTable/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 433,436 | 13.6% | 50.9% |
| x6 | `IRS990ScheduleI/RecipientTable/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 1,252 | 0.0422% | 19.4% |
| x7 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressUS/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 17k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5 | 39 | 44 | 51 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 71 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 30k | 32k | 34k | 37k | 38k | 40k | 43k | 45k | 47k | 49k | 38k |
| x6 |  |  |  |  |  | 84 | 75 | 89 | 111 | 110 | 96 | 122 | 153 | 151 | 144 | 117 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 89,727  | 17.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | LMSARCOMA DIRECT RESEARCH FOUNDATION | Quebec | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202621009349300947_public.xml) |
| 2024 | 990 | x5 | Associated Colleges of Illinois Inc | IL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349311118_public.xml) |
| 2013 | 990 | x4 | THE LYMPHATIC MALFORMATION INSTITUTE | SCANIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349302622_public.xml) |
| 2013 | 990 | x3 | EAST BALTIMORE COMMUNITY SCHOOL INC | MD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303049_public.xml) |
| 2012 | 990 | x2 | THE GREATER CINCINNATI FOUNDATION | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332269349302568_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
