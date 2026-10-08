# SA_03_PUB_GRO_RCPT_ADM_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_GRO_RCPT_ADM_CY_M3

Gross receipts from admissions, merchandise sold or service performed,
or facilities furnished during the current tax year minus three years

- Description: Current tax year minus three years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-02-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.2M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.8x (IRS990ScheduleA/GrossReceiptsAdmissionsGrp/CurrentTaxYearMinus3YearsAmt, 990EZ, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossReceiptsFromAdmissions/CurrentTaxYearMinus3Years` | SZ | 2009–2012 | 149,353 | 20.2% |  |
| x2 | `IRS990ScheduleA/GrossReceiptsAdmissionsGrp/CurrentTaxYearMinus3YearsAmt` | SZ | 2013–2024 | 1,023,650 | 18.8% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossReceiptsFromAdmissions/CurrentTaxYearMinus3Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10k | 36k | 47k | 55k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 61k | 67k | 72k | 75k | 80k | 83k | 86k | 96k | 106k | 108k | 105k | 86k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 19 | 19 | 20 | 20 | 20 | 20 | 20 | 20 | 20 | 19 | 19 | 19 | 19 | 19 | 19 |
| 990-EZ | 25 | 20 | 21 | 21 | 21 | 21 | 21 | 20 | 20 | 20 | 20 | 21 | 21 | 20 | 19 | 19 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990    | 739,714 | 100.0%    | 1.8%   | 0.1%       | 76,075 | 244,047 | 1,048,699 | 53,246,140 |
| 990-EZ | 433,289 | 100.0%    | 9.2%   | 0.1%       | 14,691 | 38,222  | 70,971    | 221,782    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Randall Parr Organization | 115457 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523439349301237_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 62137 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_GRO_RCPT_ADM_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
