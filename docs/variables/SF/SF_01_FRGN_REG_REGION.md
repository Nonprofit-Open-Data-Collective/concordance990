# SF_01_FRGN_REG_REGION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_REGION

Region

- Description: Region outside the US where activities are conducted

- Table:

  [`SF-P01-T01-FRGN-ACTS-BY-REGION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t01-frgn-acts-by-region)
  (many)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

157k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/AccountActivitiesOutsideUSGrp/RegionTxt: longest value is exactly 75 characters; IRS990ScheduleF/AcctsActvsOutUSTable/Region: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/AcctsActvsOutUSTable/Region` | SZ | 2009–2012 | 19,202 | 3.85% | 54.0% |
| x2 | `IRS990ScheduleF/AccountActivitiesOutsideUSGrp/RegionTxt` | SZ | 2013–2024 | 137,429 | 4.18% | 51.4% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartI/AcctsActvsOutUSTable/Region` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 4.6k | 6.0k | 6.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.8k | 8.7k | 9.6k | 10k | 11k | 11k | 12k | 13k | 13k | 14k | 15k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 156,631 | 26             | 75      |

### Most common values

| Value                                      | Filings | Share |
|--------------------------------------------|---------|-------|
| `Central America and the Caribbean`        | 19,307  | 12.0% |
| `Sub-Saharan Africa`                       | 17,950  | 11.2% |
| `SUB-SAHARAN AFRICA`                       | 16,731  | 10.4% |
| `NORTH AMERICA`                            | 15,853  | 9.9%  |
| `EAST ASIA AND THE PACIFIC`                | 15,813  | 9.9%  |
| `East Asia and the Pacific`                | 13,707  | 8.6%  |
| `CENTRAL AMERICA AND THE CARIBBEAN`        | 13,002  | 8.1%  |
| `EUROPE`                                   | 11,705  | 7.3%  |
| `SOUTH AMERICA`                            | 11,652  | 7.3%  |
| `SOUTH ASIA`                               | 8,391   | 5.2%  |
| `South America`                            | 5,274   | 3.3%  |
| `EUROPE (INCLUDING ICELAND & GREENLAND)`   | 3,550   | 2.2%  |
| `North America`                            | 3,372   | 2.1%  |
| `South Asia`                               | 3,189   | 2.0%  |
| `Middle East and North Africa`             | 341     | 0.2%  |
| `Europe (Including Iceland and Greenland)` | 288     | 0.2%  |
| `Europe`                                   | 164     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | CENTRAL AMERICA & THE CARIBBEAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | North America | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_REGION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
