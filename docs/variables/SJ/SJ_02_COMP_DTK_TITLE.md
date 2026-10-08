# SJ_02_COMP_DTK_TITLE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_02_COMP_DTK_TITLE

Compensated person title

- Description: Form990 Schedule JPart II - Title

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

2 / 2

xpaths observed / mapped

727k

filings with a value

2012–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/TitleTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartII/Title` | SZ | 2012–2012 | 38,534 | 21.4% | 59.3% |
| x2 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/TitleTxt` | SZ | 2013–2024 | 688,315 | 19% | 60.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 39k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 42k | 45k | 48k | 50k | 55k | 56k | 59k | 65k | 68k | 72k | 76k | 53k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 21 | 21 | 21 | 21 | 21 | 21 | 21 | 21 | 20 | 20 | 21 | 21 | 19 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 726,847 | 18             | 100     |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `EXECUTIVE DIRECTOR`      | 89,290  | 18.9% |
| `PRESIDENT`               | 82,231  | 17.4% |
| `CEO`                     | 67,999  | 14.4% |
| `CFO`                     | 49,345  | 10.4% |
| `PRESIDENT & CEO`         | 38,544  | 8.2%  |
| `PRESIDENT/CEO`           | 33,728  | 7.1%  |
| `DIRECTOR`                | 31,099  | 6.6%  |
| `CHIEF FINANCIAL OFFICER` | 21,145  | 4.5%  |
| `CHIEF EXECUTIVE OFFICER` | 17,013  | 3.6%  |
| `TREASURER`               | 13,353  | 2.8%  |
| `President`               | 10,901  | 2.3%  |
| `PHYSICIAN`               | 7,623   | 1.6%  |
| `VICE PRESIDENT`          | 4,290   | 0.9%  |
| `COO`                     | 4,200   | 0.9%  |
| `SECRETARY`               | 2,149   | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | ASSISTANT MEDICAL DIRECTOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | President | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_02_COMP_DTK_TITLE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
