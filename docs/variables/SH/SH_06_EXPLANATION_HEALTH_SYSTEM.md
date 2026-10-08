# SH_06_EXPLANATION_HEALTH_SYSTEM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_HEALTH_SYSTEM

Additional explanation for the affiliated health care system

- Description: Affiliated health care system (see
  SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-07`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

937

filings with a value

2009–2009

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/AffiliatedHealthCareSystem: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/AffiliatedHealthCareSystem` | SZ | 2009–2009 | 937 | 2.81% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 937 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 937     | 1406           | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Part VI, Line 7: N/A` | 55 | 25.6% |
| `If the organization is part of an affiliated health care system, describe the respective …` | 47 | 21.9% |
| `N/A` | 40 | 18.6% |
| `Part VI, Line 7: n/a` | 16 | 7.4% |
| `GIVING BACK TO THE COMMUNITY PERMEATES EVERY ASPECT OF OUR ORGANIZATION. AS A MEMBER OF T…` | 14 | 6.5% |
| `Part VI, Line 7:` | 9 | 4.2% |
| `Part VI, Line 7: The organization is part of a large faith based integrated health care d…` | 9 | 4.2% |
| `The filing organization is part of the Sisters of Mercy Health System (""""Mercy""""). Me…` | 9 | 4.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | QUEEN OF THE VALLEY MEDICAL CENTER | GIVING BACK TO THE COMMUNITY PERMEATES EVERY ASPECT OF OUR ORGANIZATION. AS A M… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201101319349303155_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_HEALTH_SYSTEM, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
