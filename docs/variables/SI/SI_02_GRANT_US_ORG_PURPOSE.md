# SI_02_GRANT_US_ORG_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_PURPOSE

Purpose of grant or assistance

- Description: Purpose of grant

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-H`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

503k

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
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/PurposeOfGrant: longest value is exactly 1000 characters; IRS990ScheduleI/RecipientTable/PurposeOfGrantTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/PurposeOfGrant` | SZ | 2009–2012 | 66,188 | 13.2% | 52.2% |
| x2 | `IRS990ScheduleI/RecipientTable/PurposeOfGrantTxt` | SZ | 2013–2024 | 437,182 | 12.7% | 51.4% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/PurposeOfGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.3k | 16k | 21k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 29k | 31k | 32k | 35k | 36k | 38k | 41k | 42k | 45k | 46k | 35k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 503,370 | 28             | 1,000   |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `GENERAL SUPPORT`           | 30,940  | 36.5% |
| `PROGRAM SUPPORT`           | 11,202  | 13.2% |
| `SCHOLARSHIPS`              | 7,962   | 9.4%  |
| `EDUCATION`                 | 6,818   | 8.1%  |
| `SUPPORT`                   | 6,298   | 7.4%  |
| `General Support`           | 5,800   | 6.9%  |
| `RESEARCH`                  | 4,618   | 5.5%  |
| `DONATION`                  | 4,166   | 4.9%  |
| `CHARITABLE`                | 3,037   | 3.6%  |
| `GENERAL OPERATING SUPPORT` | 1,750   | 2.1%  |
| `SEE PART IV`               | 496     | 0.6%  |
| `OPERATIONS`                | 478     | 0.6%  |
| `General support`           | 369     | 0.4%  |
| `SPONSORSHIP`               | 276     | 0.3%  |
| `GENERAL OPERATIONS`        | 254     | 0.3%  |
| `CONTRIBUTION`              | 102     | 0.1%  |
| `Scholarships`              | 59      | 0.1%  |
| `Education`                 | 33      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Associated Colleges of Illinois Inc | Educational Activities | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349311118_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | Orphanage Support | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
