# PF_AX14_COMP_EMPL_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX14_COMP_EMPL_NAME

Employee name

- Description: Employee Comp Explanation - Employee name

- Table:

  [`PF-P99-T14-COMP-EMPL`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t14-comp-empl)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-14`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: EZ

2 / 2

xpaths observed / mapped

888

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | EmployeeCompensationExpln/EmployeeCompExplanationGrp/EmployeeNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `EmployeeCompensationExpln/EmployeeCompExplanation/EmployeeName` | EZ | 2009–2012 | 256 | 0.0258% | 47.7% |
| x2 | `EmployeeCompensationExpln/EmployeeCompExplanationGrp/EmployeeNm` | EZ | 2013–2024 | 632 | 0.0117% | 34.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13 | 104 | 58 | 81 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 84 | 14 | 20 | 16 | 29 | 22 | 42 | 85 | 90 | 92 | 71 | 67 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 125     | 14             | 34      |
| 990-PF | 763     | 13             | 35      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 152     | 30.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | METROPOLITAN NEW YORK COLLEGE CAREER PL… | JOCELYN COALTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349202639_public.xml) |
| 2012 | 990EZ | x1 | ASHA RAY OF HOPE | PAYAL GUPTA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341089349200304_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX14_COMP_EMPL_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
