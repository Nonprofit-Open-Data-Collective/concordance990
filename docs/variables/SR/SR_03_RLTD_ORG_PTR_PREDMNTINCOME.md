# SR_03_RLTD_ORG_PTR_PREDMNTINCOME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_PREDMNTINCOME

Predominant income

- Description: Predominant income (related; investment; unrelated)

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

79k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/PredominantIncomeType` | SZ | 2009–2012 | 14,251 | 2.5% | 57.3% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/PredominantIncomeTypeTxt` | SZ | 2013–2024 | 64,777 | 1.22% | 58.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 3.8k | 4.3k | 4.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.6k | 5.0k | 5.2k | 5.4k | 5.7k | 5.8k | 6.0k | 6.1k | 6.0k | 5.9k | 5.9k | 3.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 79,028  | 5              | 20      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `RELATED`       | 34,520  | 42.3% |
| `N/A`           | 21,674  | 26.6% |
| `Related`       | 9,003   | 11.0% |
| `UNRELATED`     | 4,375   | 5.4%  |
| `EXCLUDED`      | 4,187   | 5.1%  |
| `Unrelated`     | 2,051   | 2.5%  |
| `INVESTMENT`    | 1,921   | 2.4%  |
| `related`       | 1,429   | 1.8%  |
| `Excluded`      | 1,259   | 1.5%  |
| `NONE`          | 434     | 0.5%  |
| `n/a`           | 306     | 0.4%  |
| `Investment`    | 262     | 0.3%  |
| `0`             | 119     | 0.1%  |
| `RENTAL INCOME` | 73      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HUNTERS POINT AFFORDABLE HOUSING INC | RELATED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502769349301530_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_PREDMNTINCOME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
