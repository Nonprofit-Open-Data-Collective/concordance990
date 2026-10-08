# F9_07_COMP_DTK_EXPL_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_EXPL_NAME_PERS

Officer, director, trustee, key employee, or highest compensated
employee person name

- Description: Name - Name - Person (F990-PC-PART-07-SECTION-A:
  F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01A-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

4 / 4

xpaths observed / mapped

167k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | CompensationExplanation/Compensation/PersonName: longest value is exactly 35 characters; CompensationExplanation/CompensationExplanationGrp/PersonNm: longest value is exactly 35 characters; EmployeeCompensationExpln/EmployeeCompExplanationGrp/EmployeeNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `CompensationExplanation/Compensation/PersonName` | EZ | 2009–2012 | 65,609 | 8.13% | 90.7% |
| x2 | `EmployeeCompensationExpln/EmployeeCompExplanation/EmployeeName` | EZ | 2009–2012 | 256 | 0.0258% | 47.7% |
| x3 | `CompensationExplanation/CompensationExplanationGrp/PersonNm` | EZ | 2013–2024 | 100,069 | 0.653% | 70.8% |
| x4 | `EmployeeCompensationExpln/EmployeeCompExplanationGrp/EmployeeNm` | EZ | 2013–2024 | 632 | 0.0117% | 34.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.0k | 16k | 21k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 13 | 104 | 58 | 81 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 29k | 2.6k | 3.0k | 3.3k | 3.4k | 2.8k | 3.6k | 35k | 4.3k | 4.1k | 4.4k | 3.7k |
| x4 |  |  |  |  | 84 | 14 | 20 | 16 | 29 | 22 | 42 | 85 | 90 | 92 | 71 | 67 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 19 | 19 | 19 | 20 | 21 | 1 | 2 | 2 | 2 | 1 | 1 | 20 | 1 | 1 | 1 | 1 |
| 990-PF | 1 | 16 | 15 | 16 | 17 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 126,948 | 13             | 35      |
| 990-PF | 39,618  | 15             | 35      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `BANK OF AMERICA` | 3,925   | 46.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | DAVID DIVELBISS MINISTRIES INC | DAVID A DIVELBISS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511539349200906_public.xml) |
| 2024 | 990EZ | x4 | METROPOLITAN NEW YORK COLLEGE CAREER PL… | JOCELYN COALTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349202639_public.xml) |
| 2012 | 990EZ | x1 | FACTORY WORKERS LABORERS | KENNETH COGAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311349349203371_public.xml) |
| 2012 | 990EZ | x2 | ASHA RAY OF HOPE | PAYAL GUPTA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341089349200304_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_EXPL_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
