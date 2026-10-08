# SJ_02_COMP_DTK_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_02_COMP_DTK_NAME_ORG_L1

Compensated organization name line 1

- Description: Name Business - BusinessNameLine1

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

25k

filings with a value

2009–2024

tax years observed

1 + 1 reviewed

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
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartII/NameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 8,258 | 0.049% | 61.8% |
| x2 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 110 | 0.0553% | 20.0% |
| x3 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 16,519 | 0.0325% | 83.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.0k | 105 | 115 | 88 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 110 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.2k | 1.3k | 1.4k | 1.5k | 1.6k | 1.6k | 1.7k | 2.0k | 2.4k | 1.9k | 90 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 24 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 24,887  | 15             | 45      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `June Pickett` | 138     | 4.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE ORGANIZATION OF LIBERIANS IN MINNES… | LYEE KAMATY DIAHN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543429349300229_public.xml) |
| 2013 | 990 | x2 | GENESEE AREA FOCUS FUND INC | TIMOTHY HERMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421349349301407_public.xml) |
| 2012 | 990 | x1 | IIAO INSURANCE FOUNDATION | DAN RAMSEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420229349300237_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_02_COMP_DTK_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
