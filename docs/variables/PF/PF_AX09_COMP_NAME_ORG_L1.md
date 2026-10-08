# PF_AX09_COMP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX09_COMP_NAME_ORG_L1

Compensation explanation - business name line 1

- Description: Business Name - BusinessNameLine1

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

4.1k

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
| x1 | `CompensationExplanation/Compensation/BusinessName/BusinessNameLine1` | EZ | 2009–2012 | 1,978 | 0.242% | 40.6% |
| x2 | `CompensationExplanation/CompensationExplanationGrp/BusinessName/BusinessNameLine1` | EZ | 2013–2013 | 826 | 0.237% | 28.6% |
| x3 | `CompensationExplanation/CompensationExplanationGrp/BusinessName/BusinessNameLine1Txt` | EZ | 2014–2024 | 1,333 | 0.0271% | 11.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 78 | 492 | 651 | 757 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 826 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 26 | 46 | 129 | 130 | 91 | 98 | 131 | 156 | 183 | 188 | 155 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-PF | \<1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 1,959   | 15             | 69      |
| 990-PF | 2,178   | 19             | 52      |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `HUNTINGTON NATIONAL BANK` | 145     | 12.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | LOOKING AT THE UNSEEN TABERNACLE | LOOKING AT THE UNSEEN TABERNACLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540949349201374_public.xml) |
| 2013 | 990EZ | x2 | FAIRVIEW EAGLE'S NEST PRESCHOOL INC | CRISTY DILKS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402699349200010_public.xml) |
| 2012 | 990EZ | x1 | COLDWATER CARDINAL ATHLETIC | MONICA GRANGER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349202157_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX09_COMP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
