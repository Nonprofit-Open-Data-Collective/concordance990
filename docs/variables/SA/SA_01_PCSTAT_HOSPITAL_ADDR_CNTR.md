# SA_01_PCSTAT_HOSPITAL_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_HOSPITAL_ADDR_CNTR

Hospital country

- Description: Foreign address Country

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

2 / 3

xpaths observed / mapped

128

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 9 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                     |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/HospitalNameAndAddress/Country` | SZ | 2009–2012 | 20 | 0.00183% | 20.0% |
| x2 | `IRS990ScheduleA/HospitalNameAndAddressGrp/CountryCd` | SZ | 2013–2024 | 108 | 0.00285% | 7.4% |
| x3 | `IRS990ScheduleA/HospitalNameAndAddress/Address/Country` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 7 | 6 | 5 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4 | 4 | 6 | 7 | 7 | 5 | 10 | 13 | 13 | 12 | 14 | 13 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `PK`  | 24      | 16.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Institute for Child Healthcare Africa | TZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522169349301967_public.xml) |
| 2012 | 990 | x1 | Rambam Health corporation | IS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313089349300206_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_HOSPITAL_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
