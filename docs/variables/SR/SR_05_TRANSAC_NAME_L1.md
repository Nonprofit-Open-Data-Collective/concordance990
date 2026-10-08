# SR_05_TRANSAC_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_NAME_L1

Related organization name line 1

- Description: Name Of Other Organization - BusinessNameLine1

- Table:

  [`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t01-transactions-rltd-orgs)
  (many)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

471k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990ScheduleR/TransactionsRelatedOrgsTable/NameOfOtherOrganization/BusinessNameLine1: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/TransactionsRelatedOrgsTable/NameOfOtherOrganization/BusinessNameLine1` | SZ | 2009–2012 | 79,374 | 14.6% | 63.2% |
| x2 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine1` | SZ | 2013–2013 | 27,750 | 14% | 61.9% |
| x3 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine1Txt` | SZ | 2014–2024 | 363,536 | 8.94% | 58.9% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartV/TransactionsRelatedOrgsTable/NameOfOtherOrganization/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.7k | 20k | 24k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 30k | 31k | 32k | 33k | 33k | 34k | 36k | 37k | 37k | 37k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 26 | 17 | 15 | 15 | 14 | 14 | 13 | 13 | 13 | 12 | 12 | 11 | 11 | 11 | 10 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 470,660 | 29             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| (blank) | 874 | 12.8% |
| `ACCESSIBLE SPACE INC` | 863 | 12.6% |
| `TRINITY HEALTH CORPORATION` | 791 | 11.6% |
| `CSI SUPPORT & DEVELOPMENT SERVICES` | 611 | 8.9% |
| `NONE` | 383 | 5.6% |
| `BAPTIST MEMORIAL HEALTH CARE CORPORATION` | 363 | 5.3% |
| `MHM SUPPORT SERVICES` | 338 | 4.9% |
| `Baylor Scott & White Health` | 322 | 4.7% |
| `NATIONAL CHURCH RESIDENCES` | 307 | 4.5% |
| `THE COLUMBUS FOUNDATION` | 255 | 3.7% |
| `Ascension Health` | 188 | 2.7% |
| `BAPTIST MEMORIAL MEDICAL MINISTRIES EMPLOYEE HEALTH AND WELFARE TRUST` | 167 | 2.4% |
| `EHDOC` | 141 | 2.1% |
| `SOUTH CAROLINA FIRST STEPS TO SCHOO` | 137 | 2.0% |
| `MHM Support Services` | 120 | 1.8% |
| `UNITED CHURCH HOMES INC` | 116 | 1.7% |
| `MERCY HOUSING MANAGEMENT GROUP` | 89 | 1.3% |
| `NATIONAL CHRISTIAN CHARITABLE FOUNDATION INC` | 62 | 0.9% |
| `PROVIDENCE HEALTH & SERVICES - WASHINGTON` | 62 | 0.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | IAAI FOUNDATION INC | INT'L ASSOC OF ARSON INVESTIGATORS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2013 | 990 | x2 | SHELTER ROCK TENNIS CLUB INC | SEARINGTOWN ASSOCIATES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201502539349300805_public.xml) |
| 2012 | 990 | x1 | ASSOCIATION OF VA SURGEONS CO SUE LENTZ | ASSOC OF VA SURGEONS FOUNDATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349308545_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
