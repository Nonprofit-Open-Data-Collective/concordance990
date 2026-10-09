# PF_AX09_COMP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX09_COMP_NAME_ORG_L2

Compensation explanation - business name line 2

- Description: Business Name - BusinessNameLine2

- Table:

  [`PF-P99-T09-COMP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t09-comp)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-09`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: EZ

3 / 3

xpaths observed / mapped

1.1k

filings with a value

2009–2024

tax years observed

1 + 3 reviewed

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
| x1 | `CompensationExplanation/Compensation/BusinessName/BusinessNameLine2` | EZ | 2009–2012 | 766 | 0.089% | 47.3% |
| x2 | `CompensationExplanation/CompensationExplanationGrp/BusinessName/BusinessNameLine2` | EZ | 2013–2013 | 300 | 0.0859% | 33.0% |
| x3 | `CompensationExplanation/CompensationExplanationGrp/BusinessName/BusinessNameLine2Txt` | EZ | 2015–2024 | 18 | 0.000175% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 27 | 207 | 253 | 279 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 300 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  | 1 | 3 | 3 | 4 | 3 |  | 1 | 2 |  | 1 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 |  |  | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 |  |  |  |  | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 697     | 16             | 73      |
| 990-PF | 387     | 19             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 16      | 7.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | MARGARET CHRISTOPHERSON CHARITABLE TR | LS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521509349100612_public.xml) |
| 2013 | 990EZ | x2 | CAR WASH OPERATORS OF NJ INC | MEDIA SOLUTIONS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403189349203310_public.xml) |
| 2012 | 990EZ | x1 | SURETY ASSOCIATION OF ARIZONA | LOVITT TOUCHE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302209349200135_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX09_COMP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
