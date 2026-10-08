# SH_05_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_EXPLANATION_TEXT

Form, part, and line number reference explanation

- Description: Form; part and line number reference explanation

- Table:

  [`SH-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t99-supplemental-info)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

26k

filings with a value

2013–2024

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
| x1 | `IRS990ScheduleH/SupplementalInformationGrp/ExplanationTxt` | SZ | 2013–2024 | 26,471 | 0.349% | 95.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 2.3k | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 969 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 26,471  | 1343           | 9,006   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `FACILITY REPORTING GROUP A` | 884 | 17.4% |
| `THE SIGNIFICANT HEALTH NEEDS ARE A PRIORITIZED DESCRIPTION OF THE SIGNIFICANT HEALTH NEED…` | 613 | 12.1% |
| `FINANCIAL ASSISTANCE POLICY WEBSITE AVAILABILITY` | 551 | 10.9% |
| `PART V, SECTION B, LINE 13H: THE HOSPITAL RECOGNIZES THAT NOT ALL PATIENTS ARE ABLE TO PR…` | 413 | 8.1% |
| `Facility Reporting Group A` | 392 | 7.7% |
| `AS PERMITTED IN THE FINAL SECTION 501(R) REGULATIONS, THE HOSPITAL'S IMPLEMENTATION STRAT…` | 260 | 5.1% |
| `Financial Assistance Policy Website Availability` | 248 | 4.9% |
| `TO BETTER TARGET COMMUNITY RESOURCES ON THE SERVICE AREA'S MOST PRESSING HEALTH NEEDS, TH…` | 188 | 3.7% |
| `NOT APPLICABLE.` | 181 | 3.6% |
| `To better target community resources on the service area's most pressing health needs, th…` | 117 | 2.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | THE CLEVELAND CLINIC FOUNDATION | PART V, SECTION B, LINE 5: DURING 2022, INPUT FROM THE COMMUNITY WAS RECEIVED T… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
