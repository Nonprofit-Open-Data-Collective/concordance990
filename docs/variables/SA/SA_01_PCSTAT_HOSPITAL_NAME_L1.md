# SA_01_PCSTAT_HOSPITAL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_HOSPITAL_NAME_L1

Hospital name line 1

- Description: Name - BusinessNameLine1

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

5.2k

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
| x1 | `IRS990ScheduleA/HospitalNameAndAddress/Name/BusinessNameLine1` | SZ | 2009–2012 | 801 | 0.101% | 6.2% |
| x2 | `IRS990ScheduleA/HospitalNameAndAddressGrp/SupportedOrganizationName/BusinessNameLine1` | SZ | 2013–2013 | 321 | 0.106% | 6.5% |
| x3 | `IRS990ScheduleA/HospitalNameAndAddressGrp/SupportedOrganizationName/BusinessNameLine1Txt` | SZ | 2014–2024 | 4,029 | 0.0638% | 8.0% |
| x4 | `IRS990ScheduleA/Form990ScheduleAPartI/HospitalNameAndAddress/Name/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 66 | 199 | 260 | 276 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 321 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 338 | 354 | 365 | 376 | 369 | 367 | 381 | 406 | 393 | 389 | 291 |
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
| 990    | 3,882   | 29             | 60      |
| 990-EZ | 1,269   | 26             | 64      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `VA MEDICAL CENTER` | 61      | 14.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | INTERNATIONAL SOCIETY FOR GENETIC | CLEVLEAND CLINIC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530509349301808_public.xml) |
| 2013 | 990EZ | x2 | PALM BEACH SHOULDER AND SPORTS | JFK MEDICAL CENTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442239349200849_public.xml) |
| 2012 | 990EZ | x1 | HEART OF AMERICA DIABETES RESEARCH FOUN… | NORTH KANSAS CITY HOSPITAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349202611_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_HOSPITAL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
