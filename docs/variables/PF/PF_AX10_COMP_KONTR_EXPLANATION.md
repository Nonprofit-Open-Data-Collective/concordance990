# PF_AX10_COMP_KONTR_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX10_COMP_KONTR_EXPLANATION

Explanation

- Description: Contractor Comp Explanation - Explanation

- Table:

  [`PF-P99-T10-COMP-KONTR`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t10-comp-kontr)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-10`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

2.7k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ContractorCompensationExpln/ContractorCompExplanation/Explanation` | PF | 2009–2012 | 182 | 0.2% | 25.8% |
| x2 | `ContractorCompensationExpln/ContractorCompExplnGrp/ExplanationTxt` | PF | 2013–2024 | 2,549 | 0.28% | 31.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5 | 39 | 58 | 80 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 110 | 128 | 129 | 148 | 151 | 167 | 198 | 254 | 309 | 321 | 312 | 322 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 2,731   | 48             | 760     |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `INVESTMENT MANAGEMENT` | 75      | 12.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Rita and Burt Tansky Foundation | PROVIDES INVESTMENT MANAGEMENT SERVICES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600129349100250_public.xml) |
| 2012 | 990PF | x1 | GOOD HOPE MEDICAL FOUNDATION | FOUNDATION ADMINISTRATION INCLUDING GRANTS AND ACCOUNTING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321569349100607_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX10_COMP_KONTR_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
