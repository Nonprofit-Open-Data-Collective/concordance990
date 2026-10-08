# SH_06_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_IDENTIFIER

Identifier

- Description: Form990 Schedule HPart VI - Identifier

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

6.5k

filings with a value

2010–2012

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/Identifier: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/Identifier` | SZ | 2010–2012 | 6,500 | 1.32% | 81.0% |
| x2 | `IRS990ScheduleH/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.8k | 2.3k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 6,500   | 29             | 100     |

### Most common values

| Value                                             | Filings | Share |
|---------------------------------------------------|---------|-------|
| `REPORTS FILED WITH STATES`                       | 1,276   | 16.3% |
| `COMMUNITY INFORMATION`                           | 1,158   | 14.8% |
| `NEEDS ASSESSMENT`                                | 1,130   | 14.5% |
| `PATIENT EDUCATION OF ELIGIBILITY FOR ASSISTANCE` | 1,063   | 13.6% |
| `PROMOTION OF COMMUNITY HEALTH`                   | 699     | 9.0%  |
| `STATE FILING OF COMMUNITY BENEFIT REPORT`        | 684     | 8.8%  |
| `Reports Filed With States`                       | 498     | 6.4%  |
| `BAD DEBT EXPENSE`                                | 457     | 5.9%  |
| `COMMUNITY BUILDING ACTIVITIES`                   | 457     | 5.9%  |
| `AFFILIATED HEALTH CARE SYSTEM`                   | 276     | 3.5%  |
| `BAD DEBT EXPENSE EXPLANATION`                    | 108     | 1.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | Powell Valley Health Care Inc | Powell Valley Hospital | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
