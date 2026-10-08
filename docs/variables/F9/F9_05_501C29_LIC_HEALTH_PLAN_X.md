# F9_05_501C29_LIC_HEALTH_PLAN_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_501C29_LIC_HEALTH_PLAN_X

Licensed to issue qualified health plans in more than one state \[x\]

- Description: Is the organization licensed to issue qualified health
  plans in more than one state?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-13A`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

331k

filings with a value

2010–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 100% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 12.1x year-on-year (in 2019) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/LicensedMoreThanOneState` | PC | 2010–2012 | 75,135 | 16.2% |  |
| x2 | `IRS990/LicensedMoreThanOneStateInd` | PC | 2013–2024 | 255,508 | 1.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 20k | 26k | 29k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 32k | 35k | 37k | 39k | 41k | 42k | 3.6k | 4.8k | 4.4k | 5.0k | 6.0k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 16 | 16 | 16 | 16 | 16 | 16 | 16 | 16 | 16 | 1 | 1 | 1 | 1 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 328,558 | 99.4% |
| `0`     | 1,934   | 0.6%  |
| `true`  | 131     | 0.0%  |
| `1`     | 20      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | EAGLE OF HOPE INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512879349301206_public.xml) |
| 2012 | 990 | x1 | Oregon Council of the Blind | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_501C29_LIC_HEALTH_PLAN_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
