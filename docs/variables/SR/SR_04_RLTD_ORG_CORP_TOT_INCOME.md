# SR_04_RLTD_ORG_CORP_TOT_INCOME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_TOT_INCOME

Share of total income

- Description: Share of total income (\$)

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-F`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

72k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 28004.5x (IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ShareOfTotalIncomeAmt, 990, TY2016) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.4x (990: IRS990ScheduleR/Form990ScheduleRPartIV/ShareOfTotalIncome vs IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ShareOfTotalIncomeAmt) |
| ⓘ info | Sign convention | 18.4% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/ShareOfTotalIncome` | SZ | 2009–2012 | 14,526 | 2.44% | 40.1% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ShareOfTotalIncomeAmt` | SZ | 2013–2024 | 57,921 | 1.17% | 34.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 4.0k | 4.3k | 4.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.6k | 4.7k | 4.7k | 4.8k | 5.1k | 5.0k | 5.1k | 5.2k | 5.2k | 5.2k | 5.1k | 3.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99        |
|--------|---------|-----------|--------|------------|-----|--------|--------|------------|
| 990    | 72,447  | 100.0%    | 40.7%  | 18.4%      | 0   | 0      | 99,315 | 49,423,137 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 40000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | -1491387 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_TOT_INCOME, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
