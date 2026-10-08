# SF_03_FRGN_INDIV_GRANT_REGION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_03_FRGN_INDIV_GRANT_REGION

Region

- Description: Region of the grant to the individuals outside the US

- Table:

  [`SF-P03-T01-FRGN-INDIV-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p03-t01-frgn-indiv-grants)
  (many)

- Part: Part III - Grants and Other Assistance to Individuals Outside
  the United States

- Location:

  `SCHED-F-PART-03-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

33k

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
| x1 | `IRS990ScheduleF/GrantsToIndOutsideUS/Region` | SZ | 2009–2012 | 4,105 | 0.785% | 59.5% |
| x2 | `IRS990ScheduleF/ForeignIndividualsGrantsGrp/RegionTxt` | SZ | 2013–2024 | 28,787 | 0.918% | 57.5% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartIII/GrantsToIndOutsideUS/Region` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 409 | 1.0k | 1.3k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.3k | 2.3k | 2.4k | 2.5k | 2.9k | 3.2k | 3.2k | 2.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 32,892  | 24             | 74      |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `Sub-Saharan Africa`                     | 4,784   | 13.1% |
| `South Asia`                             | 3,634   | 10.0% |
| `SUB-SAHARAN AFRICA`                     | 3,584   | 9.8%  |
| `East Asia and the Pacific`              | 3,578   | 9.8%  |
| `NORTH AMERICA`                          | 3,570   | 9.8%  |
| `South America`                          | 3,487   | 9.6%  |
| `EAST ASIA AND THE PACIFIC`              | 3,057   | 8.4%  |
| `SOUTH AMERICA`                          | 2,995   | 8.2%  |
| `Central America and the Caribbean`      | 2,325   | 6.4%  |
| `SOUTH ASIA`                             | 2,234   | 6.1%  |
| `EUROPE`                                 | 1,162   | 3.2%  |
| `North America`                          | 736     | 2.0%  |
| `EUROPE (INCLUDING ICELAND & GREENLAND)` | 520     | 1.4%  |
| `Middle East and North Africa`           | 488     | 1.3%  |
| `Europe/Iceland/Greenland`               | 191     | 0.5%  |
| `East Asia/Pacific`                      | 67      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | NORTH AMERICA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | Sub-Saharan Africa | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_03_FRGN_INDIV_GRANT_REGION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
