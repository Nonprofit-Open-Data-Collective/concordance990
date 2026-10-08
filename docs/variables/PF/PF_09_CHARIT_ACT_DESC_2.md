# PF_09_CHARIT_ACT_DESC_2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_CHARIT_ACT_DESC_2

Direct charitable activity 2: description

- Description: Summary of direct charitable activities, line 2:
  description

- Table:

  [`PF-P09-T00-CHARITABLE-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-charitable-activities)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-A-LINE-02-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

73k

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
| ⓘ info | No sign of truncation | IRS990PF/SummaryOfDirectCharitableActy/Description2: longest value is exactly 1000 characters; IRS990PF/SummaryOfDirectChrtblActyGrp/Description2Txt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SummaryOfDirectCharitableActy/Description2` | PF | 2009–2012 | 5,851 | 5.9% |  |
| x2 | `IRS990PF/SummaryOfDirectChrtblActyGrp/Description2Txt` | PF | 2013–2024 | 66,947 | 6.91% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 166 | 1.4k | 1.9k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.7k | 3.1k | 3.5k | 3.8k | 4.1k | 4.5k | 5.5k | 7.5k | 7.8k | 8.1k | 8.5k | 7.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 7 | 6 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 72,798  | 126            | 1,000   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 765     | 20.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | SUPPORTING EMERGING SPACE STATES - SECURE WORLD FOUNDATION HOSTED A PANEL OF SP… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | ALBANY GUARDIAN SOCIETY | TRAINING AND EDUCATION - NURSING SEMINARS DESIGNED TO PROVIDE EDUCATIONAL ASSIS… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101060_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_CHARIT_ACT_DESC_2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
