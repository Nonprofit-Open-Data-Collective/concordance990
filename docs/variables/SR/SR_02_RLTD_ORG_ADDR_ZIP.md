# SR_02_RLTD_ORG_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_ZIP

Related organization zip

- Description: Foreign Address - Postal code

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

840k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.4% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 5 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/ZIPCode` | SZ | 2009–2012 | 132,312 | 24.8% | 51.3% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/PostalCode` | SZ | 2009–2012 | 973 | 0.188% | 29.1% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 47,596 | 23.9% | 49.2% |
| x4 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 399 | 0.201% | 26.6% |
| x5 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 651,290 | 16.3% | 47.9% |
| x6 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 7,808 | 0.211% | 29.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 34k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 102 | 224 | 309 | 338 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 48k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 399 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 51k | 54k | 55k | 59k | 59k | 61k | 66k | 67k | 67k | 67k | 45k |
| x6 |  |  |  |  |  | 459 | 531 | 585 | 654 | 708 | 757 | 850 | 873 | 896 | 911 | 584 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 26 | 25 | 24 | 23 | 23 | 23 | 23 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 792,471 | 92.2% |
| `999999999` | 62,257  | 7.2%  |
| `A9A 9A9`   | 1,671   | 0.2%  |
| `999999`    | 1,286   | 0.1%  |
| `9999`      | 1,252   | 0.1%  |
| `AA9A 9AA`  | 782     | 0.1%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | ACCION INTERNATIONAL | 560025 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349301700_public.xml) |
| 2024 | 990 | x5 | IAAI FOUNDATION INC | 21050 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2013 | 990 | x4 | INDEPENDENT DIPLOMAT INC | EC4Y 0HA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2013 | 990 | x3 | SAN MATEO ELECTRICAL WORKERS HEALTH PLAN | 95119 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540919349300024_public.xml) |
| 2012 | 990 | x2 | THE CARTER CENTER COLLABORATIVE INC | PF9 2DF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431969349300433_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 857021089 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
