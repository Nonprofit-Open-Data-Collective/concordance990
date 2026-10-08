# SH_04_CO_ENTITY_ACT_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_04_CO_ENTITY_ACT_DESC

Description of primary activity of entity

- Description: Description of entity's primary activity

- Table:

  [`SH-P04-T01-COMPANY-JOINT-VENTURES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p04-t01-company-joint-ventures)
  (many)

- Part: Part IV - Management Companies and Joint Ventures

- Location:

  `SCHED-H-PART-04-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

7.2k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartIV/DescriptionEntPrimaryActivity: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartIV/DescriptionEntPrimaryActivity` | SZ | 2009–2012 | 1,941 | 0.312% | 51.9% |
| x2 | `IRS990ScheduleH/ManagementCoAndJntVenturesGrp/PrimaryActivitiesTxt` | SZ | 2013–2024 | 5,252 | 0.0689% | 46.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 299 | 535 | 547 | 560 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 547 | 533 | 504 | 467 | 467 | 440 | 441 | 429 | 421 | 419 | 393 | 191 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 7,193   | 21             | 94      |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `AMBULATORY SURGERY CENTER` | 490     | 22.0% |
| `SURGERY CENTER`            | 285     | 12.8% |
| `MEDICAL SERVICES`          | 231     | 10.4% |
| `OUTPATIENT SURGERY CENTER` | 219     | 9.8%  |
| `IMAGING SERVICES`          | 192     | 8.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Bozeman Deaconess Health Services | Outpatient Surgical Center | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349302630_public.xml) |
| 2012 | 990 | x1 | Christus Santa Rosa Health Care Corpora… | Medical Equipment Leasing | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411329349303611_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_04_CO_ENTITY_ACT_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
