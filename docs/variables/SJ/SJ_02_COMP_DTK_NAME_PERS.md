# SJ_02_COMP_DTK_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_02_COMP_DTK_NAME_PERS

Compensated person name

- Description: Name of officer - person

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

807k

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
| ⓘ info | No sign of truncation | IRS990ScheduleJ/Form990ScheduleJPartII/NamePerson: longest value is exactly 35 characters; IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/PersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartII/NamePerson` | SZ | 2009–2012 | 112,750 | 22.1% | 60.5% |
| x2 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/PersonNm` | SZ | 2013–2024 | 694,630 | 19.6% | 59.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.7k | 31k | 36k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 43k | 45k | 48k | 50k | 55k | 56k | 59k | 65k | 68k | 72k | 77k | 54k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 25 | 23 | 22 | 22 | 21 | 21 | 21 | 21 | 21 | 21 | 20 | 20 | 21 | 22 | 20 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 807,378 | 14             | 35      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `JOSEPH A BUDZYNSKI` | 1,478   | 6.3%  |
| `PATRICK SHERIDAN`   | 1,204   | 5.1%  |
| `THOMAS D TURNBULL`  | 1,120   | 4.7%  |
| `ROBIN KELLER`       | 1,081   | 4.6%  |
| `MICHAEL W KING`     | 1,058   | 4.5%  |
| `SHARON WILSON GENO` | 885     | 3.7%  |
| `SONYA BROWN`        | 848     | 3.6%  |
| `MATTHEW D RULE`     | 834     | 3.5%  |
| `JILL KOLB`          | 828     | 3.5%  |
| `DAVID T BOWMAN`     | 791     | 3.3%  |
| `NANCY GAVIN`        | 759     | 3.2%  |
| `DEBORAH PERRY`      | 758     | 3.2%  |
| `JOSEPH BUDZYNSKI`   | 729     | 3.1%  |
| `PETER DESJARDINS`   | 724     | 3.1%  |
| `JOSEPH R KASBERG`   | 709     | 3.0%  |
| `MICHELLE H NORRIS`  | 649     | 2.7%  |
| `TANYA KIM HAHN`     | 644     | 2.7%  |
| `KIMBERLY KING`      | 580     | 2.5%  |
| `DEBORAH J STOUFF`   | 568     | 2.4%  |
| `ERIC WALKER`        | 497     | 2.1%  |
| `JULIE M WOOLLEY`    | 496     | 2.1%  |
| `MARK R RICKETTS`    | 477     | 2.0%  |
| `JULIA A FRATIANNE`  | 473     | 2.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | ROLINDA SAMPLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | JAY COOGAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_02_COMP_DTK_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
