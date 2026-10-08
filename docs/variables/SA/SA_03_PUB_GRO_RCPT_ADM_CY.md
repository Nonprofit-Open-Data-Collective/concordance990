# SA_03_PUB_GRO_RCPT_ADM_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_GRO_RCPT_ADM_CY

Gross receipts from admissions, merchandise sold or service performed,
or facilities furnished during the current tax year

- Description: Current tax year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-02-COL-E`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.3M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.0x (IRS990ScheduleA/GrossReceiptsFromAdmissions/CurrentTaxYear, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossReceiptsFromAdmissions/CurrentTaxYear` | SZ | 2009–2012 | 164,377 | 21.9% |  |
| x2 | `IRS990ScheduleA/GrossReceiptsAdmissionsGrp/CurrentTaxYearAmt` | SZ | 2013–2024 | 1,106,789 | 20.9% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossReceiptsFromAdmissions/CurrentTaxYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 41k | 53k | 60k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 66k | 73k | 78k | 81k | 86k | 90k | 93k | 99k | 111k | 115k | 118k | 95k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 20 | 21 | 21 | 21 | 21 | 21 | 21 | 21 | 21 | 21 | 20 | 20 | 20 | 20 | 20 | 20 |
| 990-EZ | 28 | 24 | 24 | 24 | 24 | 24 | 23 | 23 | 23 | 23 | 23 | 21 | 22 | 22 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990    | 781,403 | 100.0%    | 1.8%   | 0.1%       | 81,723 | 258,787 | 1,068,834 | 62,389,581 |
| 990-EZ | 489,759 | 100.0%    | 8.0%   | 0.1%       | 12,886 | 36,109  | 66,748    | 175,162    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 115990 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 49386 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_GRO_RCPT_ADM_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
