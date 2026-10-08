# SJ_02_COMP_DTK_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_02_COMP_DTK_NAME_ORG_L2

Compensated organization name line 2

- Description: Name Business - BusinessNameLine2

- Table:

  [`SJ-P02-T01-COMPENSATION-DTK`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p02-t01-compensation-dtk)
  (many)

- Part: Part II - Officers, Directors, Trustees, Key Employees, and
  Highest Compensated Employees

- Location:

  `SCHED-J-PART-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

154

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
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartII/NameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 55 | 0.00723% | 29.1% |
| x2 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 14 | 0.00704% | 14.3% |
| x3 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 85 | 0.00325% | 5.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8 | 14 | 20 | 13 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 7 | 8 | 7 | 5 | 7 | 4 | 9 | 10 | 5 | 14 | 9 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 154     | 19             | 36      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `J MICHAEL HAEMMERLE` | 11      | 7.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CENTRAL AND EASTERN EUROPEAN SCHOOL | KATHRYN STETSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620769349301137_public.xml) |
| 2013 | 990 | x2 | HAYWOOD VOCATIONAL | GEORGE MARSHALL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423179349301522_public.xml) |
| 2012 | 990 | x1 | LEXINGTON COUNTY SCHOOL DISTRICT | LEXINGTON COUNTY SCHOOL DISTRICT ONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410379349301321_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_02_COMP_DTK_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
