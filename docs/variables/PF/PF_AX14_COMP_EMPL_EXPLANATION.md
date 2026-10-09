# PF_AX14_COMP_EMPL_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX14_COMP_EMPL_EXPLANATION

Employee compensation explanation

- Description: Employee Comp Explanation - Explanation

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

422

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `EmployeeCompensationExpln/EmployeeCompExplanation/Explanation` | EZ | 2009–2012 | 35 | 0.00542% | 57.1% |
| x2 | `EmployeeCompensationExpln/EmployeeCompExplanationGrp/ExplanationTxt` | EZ | 2013–2024 | 387 | 0.00683% | 43.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 10 | 6 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15 | 14 | 20 | 14 | 24 | 22 | 35 | 53 | 54 | 54 | 43 | 39 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 110     | 40             | 484     |
| 990-PF | 312     | 244            | 943     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `FOR THE COMPENSATED EMPLOYEES REPORTED IN PART VII, LINE 2 OF THE FORM 990-PF, THE BENEFI…` | 12 | 4.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | METROPOLITAN NEW YORK COLLEGE CAREER PL… | AS NEEDED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349202639_public.xml) |
| 2012 | 990EZ | x1 | THE ALLEN LILIA AND ALEXANDER VINE | none | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341639349200104_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX14_COMP_EMPL_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
