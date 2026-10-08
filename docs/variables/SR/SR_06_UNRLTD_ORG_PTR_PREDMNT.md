# SR_06_UNRLTD_ORG_PTR_PREDMNT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_PREDMNT

Predominant income

- Description: Form990 Schedule RPart VI - PredominateIncomeDesc

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

1.9k

filings with a value

2011–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/PredominateIncomeDesc` | SZ | 2011–2012 | 180 | 0.0601% | 23.9% |
| x2 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/PredominateIncomeDesc` | SZ | 2013–2024 | 1,729 | 0.0328% | 22.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 72 | 108 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 125 | 134 | 132 | 136 | 154 | 151 | 160 | 180 | 167 | 153 | 146 | 91 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,909   | 12             | 49      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| `RELATED` | 698     | 43.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | TAX CREDIT BENEVOLENT ASSOCIATION | RELATED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349305984_public.xml) |
| 2012 | 990 | x1 | MERCY MEDICAL CENTER INC | RELATED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349302296_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_PREDMNT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
