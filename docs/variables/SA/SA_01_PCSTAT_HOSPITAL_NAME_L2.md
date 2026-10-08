# SA_01_PCSTAT_HOSPITAL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_HOSPITAL_NAME_L2

Hospital name line 2

- Description: Name - BusinessNameLine2

- Table:

  [`SA-P01-T02-HOSPITAL-NAME-ADDRESS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p01-t02-hospital-name-address)
  (many)

- Part: Part I - Reason for Public Charity Status

- Location:

  `SCHED-A-PART-01-LINE-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

230

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

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
| x1 | `IRS990ScheduleA/HospitalNameAndAddress/Name/BusinessNameLine2` | SZ | 2009–2012 | 31 | 0.00512% |  |
| x2 | `IRS990ScheduleA/HospitalNameAndAddressGrp/SupportedOrganizationName/BusinessNameLine2` | SZ | 2013–2013 | 14 | 0.00462% |  |
| x3 | `IRS990ScheduleA/HospitalNameAndAddressGrp/SupportedOrganizationName/BusinessNameLine2Txt` | SZ | 2014–2024 | 185 | 0.00263% |  |
| x4 | `IRS990ScheduleA/Form990ScheduleAPartI/HospitalNameAndAddress/Name/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 7 | 9 | 14 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 16 | 18 | 18 | 18 | 16 | 16 | 15 | 20 | 19 | 17 | 12 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 138     | 25             | 48      |
| 990-EZ | 92      | 32             | 49      |

### Most common values

| Value                                        | Filings | Share |
|----------------------------------------------|---------|-------|
| `DETROIT MEDICAL CENTER HOSPITALS & CLINICS` | 14      | 9.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | NATIONAL ASSOCIATION OF MEDICAL | FOUNDATION INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520499349301522_public.xml) |
| 2013 | 990 | x2 | SPENDLOVE MEDICAL RESEARCH INSTITUT | UNIVERSITY OF UTAH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412129349301656_public.xml) |
| 2012 | 990 | x1 | UNITED CANCER RESEARCH INSTITUTE | UNITED CANCER RESEARCH INSTITUTE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341219349300004_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_HOSPITAL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
