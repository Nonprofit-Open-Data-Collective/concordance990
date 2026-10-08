# PF_AX42_PROF_FEE_DISBMT_CHARIT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX42_PROF_FEE_DISBMT_CHARIT

Disbursements for Charitable Purposes

- Description: Disbursements for Charitable Purposes

- Table:

  [`PF-P99-T42-PROF-FEES-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t42-prof-fees-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-42`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

264k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 6572.2x (OtherProfessionalFeesSchedule/OtherProfessionalFeesDetail/DisbursementsCharitablePrpsAmt, 990PF, TY2017) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 5.6x (990PF: OtherProfessionalFeesSchedule/OtherProfessionalFees/DisbursementsCharitablePrps vs OtherProfessionalFeesSchedule/OtherProfessionalFeesDetail/DisbursementsCharitablePrpsAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherProfessionalFeesSchedule/OtherProfessionalFees/DisbursementsCharitablePrps` | PF | 2009–2012 | 19,746 | 20.2% | 24.1% |
| x2 | `OtherProfessionalFeesSchedule/OtherProfessionalFeesDetail/DisbursementsCharitablePrpsAmt` | PF | 2013–2024 | 244,234 | 24.8% | 26.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 504 | 4.6k | 6.6k | 8.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 9.6k | 11k | 13k | 14k | 15k | 17k | 20k | 27k | 28k | 30k | 30k | 28k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 21 | 18 | 19 | 20 | 21 | 21 | 22 | 22 | 22 | 22 | 23 | 24 | 24 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 263,980 | 100.0%    | 59.9%  | 0.0%       | 0   | 0      | 3,129 | 381,715 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Robert W Woodruff Foundation Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | 14386 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX42_PROF_FEE_DISBMT_CHARIT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
