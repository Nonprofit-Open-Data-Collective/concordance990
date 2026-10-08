# SI_03_GRANT_US_INDIV_AMT_NONCSH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_03_GRANT_US_INDIV_AMT_NONCSH

Amount of noncash assistance

- Description: Amount of non-cash assistance

- Table:

  [`SI-P03-T01-GRANTS-US-INDIV`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p03-t01-grants-us-indiv)
  (many)

- Part: Part III - Grants and Other Assistance to Domestic Individuals

- Location:

  `SCHED-I-PART-03-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

90k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.6x (IRS990ScheduleI/Form990ScheduleIPartIII/AmountOfNonCashAssistance, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIII/AmountOfNonCashAssistance` | SZ | 2009–2012 | 12,043 | 2.26% | 29.9% |
| x2 | `IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/NonCashAssistanceAmt` | SZ | 2013–2024 | 77,869 | 2.24% | 28.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 2.9k | 3.6k | 4.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.4k | 4.8k | 5.1k | 5.5k | 6.0k | 6.4k | 6.8k | 7.8k | 7.9k | 8.4k | 8.6k | 6.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 89,912  | 100.0%    | 29.4%  | 0.0%       | 0   | 17,820 | 121,028 | 13,778,151 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FaithBridge Foster Care Inc | 2000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2012 | 990 | x1 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_03_GRANT_US_INDIV_AMT_NONCSH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
