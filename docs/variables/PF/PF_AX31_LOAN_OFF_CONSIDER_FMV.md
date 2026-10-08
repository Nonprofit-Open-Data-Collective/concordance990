# PF_AX31_LOAN_OFF_CONSIDER_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX31_LOAN_OFF_CONSIDER_FMV

Consideration FMV

- Description: Consideration FMV

- Table:

  [`PF-P99-T31-LOAN-OFF`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t31-loan-off)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-31`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.3k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `LoansFromOfficersSchedule/LoansFromOfficer/ConsiderationFmv` | PF | 2009–2012 | 78 | 0.0927% | 16.7% |
| x2 | `LoansFromOfficersSchedule/LoansFromOfficerGrp/ConsiderationFMVAmt` | PF | 2013–2024 | 1,267 | 0.107% | 14.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4 | 18 | 19 | 37 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 56 | 45 | 61 | 68 | 90 | 98 | 102 | 157 | 170 | 154 | 143 | 123 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 1,345   | 100.0%    | 34.2%  | 0.0%       | 919 | 6,500  | 46,039 | 1,046,466 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | John D Eccles Family Foundation | 6749 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512059349101211_public.xml) |
| 2012 | 990PF | x1 | VERENA FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302859349100600_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX31_LOAN_OFF_CONSIDER_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
