# SI_02_GRANT_US_ORG_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_ADDR_L2

Grantee street address line 2

- Description: Address Foreign - AddressLine2

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

41k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 15% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/AddressForeign/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/AddressUS/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleI/RecipientTable/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/AddressUS/AddressLine2` | SZ | 2009–2012 | 5,467 | 1.01% | 46.1% |
| x2 | `IRS990ScheduleI/RecipientTable/AddressForeign/AddressLine2` | SZ | 2009–2012 | 10 | 0.00167% | 30.0% |
| x3 | `IRS990ScheduleI/RecipientTable/USAddress/AddressLine2` | SZ | 2013–2013 | 2,048 | 1.03% | 42.8% |
| x4 | `IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 6 | 0.00302% |  |
| x5 | `IRS990ScheduleI/RecipientTable/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 33,459 | 1.07% | 42.7% |
| x6 | `IRS990ScheduleI/RecipientTable/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 148 | 0.00397% | 15.5% |
| x7 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 517 | 1.4k | 1.8k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 | 1 | 5 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 6 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 2.3k | 2.4k | 2.6k | 2.8k | 3.0k | 3.1k | 3.5k | 3.4k | 3.6k | 3.9k | 3.0k |
| x6 |  |  |  |  |  | 6 | 8 | 12 | 20 | 5 | 10 | 22 | 21 | 15 | 18 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 41,138  | 11             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 1,890   | 18.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | EDUCATIONAL CREDIT | 523 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503199349301740_public.xml) |
| 2024 | 990 | x5 | JAMESTOWN FOUNDATION INC | VONFURSTENBERG BLDG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349300506_public.xml) |
| 2013 | 990 | x4 | INSTITUTE OF HEARTMATH | CASERMA EDERLE BLDG 28 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422269349302387_public.xml) |
| 2013 | 990 | x3 | Mary Hitchcock Memorial Hospital | 1 Lane Drive | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541359349303384_public.xml) |
| 2012 | 990 | x2 | THE GLOBAL FUND FOR WOMEN INC | SUITE 140 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349305468_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | SUITE 825 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
