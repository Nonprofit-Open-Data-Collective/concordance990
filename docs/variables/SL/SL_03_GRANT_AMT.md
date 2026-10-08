# SL_03_GRANT_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_03_GRANT_AMT

Amount of assistance

- Description: Amount of grant

- Table:

  [`SL-P03-T01-GRANTS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p03-t01-grants-interested-pers)
  (many)

- Part: Part III - Grants or Assistance Benefiting Interested Persons

- Location:

  `SCHED-L-PART-03-COL-C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

15k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/CashGrantAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIII/AmountOfGrant` | SZ | 2009–2012 | 2,577 | 0.327% | 34.0% |
| x2 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/CashGrantAmt` | SZ | 2013–2024 | 12,521 | 0.161% | 33.1% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartIII/AmtOfGrantOrTypeOfAssistance/AmountOfGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 159 | 676 | 847 | 895 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 946 | 954 | 1.0k | 1.0k | 1.1k | 1.0k | 1.1k | 1.2k | 1.1k | 1.2k | 1.2k | 734 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 15,030  | 100.0%    | 0.1%   | 0.0%       | 1,500 | 7,075  | 26,929 | 441,718 |
| 990-EZ | 68      | 100.0%    | 1.9%   | 0.0%       | 3,896 | 5,500  | 8,928  | 15,000  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Angel Christian Television Trust Inc | 120000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x1 | GALVESTON COUNTY FAIR & RODEO INC | 6500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349300205_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_03_GRANT_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
