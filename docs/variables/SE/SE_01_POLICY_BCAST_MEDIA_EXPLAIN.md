# SE_01_POLICY_BCAST_MEDIA_EXPLAIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_01_POLICY_BCAST_MEDIA_EXPLAIN

Explanation if has not publicized its racially nondiscriminatory policy
through broadcast media

- Description: If answered "Has the Organization Publicized the Policy
  through Broadcast Media?"; explain

- Table:

  [`SE-P01-T00-SCHOOLS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p01-t00-schools)
  (one)

- Part: Part I - Schools

- Location:

  `SCHED-E-PART-01-LINE-03`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

3.9k

filings with a value

2009–2009

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleE/PubViaBroadcastMediaExpln: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/PubViaBroadcastMediaExpln` | SZ | 2009–2009 | 3,876 | 7.95% |  |
| x2 | `IRS990ScheduleE/Form990ScheduleE/PubViaBroadcastMediaExpln` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.9k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 11 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 3,581   | 168            | 1,000   |
| 990-EZ | 295     | 134            | 744     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `A STATEMENT READING """"ALL EDUCATIONAL PROGRAMS ARE AVAILABLE WITHOUT REGARD TO RACE, CO…` | 14 | 14.7% |
| `OUR NONDISCRIMINATTION POLICY IS STATED ON OFFICIAL FORMS AND COMMUNICATIONS.` | 14 | 14.7% |
| `SEE SCHEDULE O` | 14 | 14.7% |
| `Summit Academy's nondiscrimination policy appears on all written marketing and promotiona…` | 11 | 11.6% |
| `THE NONDISCRIMINATION POLICIES ARE PUBLISHED FREQUENTLY IN LOCAL NEWSPAPERS AND ARE STATE…` | 10 | 10.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | MOORE COLLEGE OF ART AND DESIGN | The College has a racially nondiscriminatory policy which it publishes in the S… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201131059349300918_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_01_POLICY_BCAST_MEDIA_EXPLAIN, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
