# PF_09_CHARIT_ACT_DESC_4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_CHARIT_ACT_DESC_4

Direct charitable activity 4: description

- Description: Summary of direct charitable activities, line 4:
  description

- Table:

  [`PF-P09-T00-CHARITABLE-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-charitable-activities)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-A-LINE-04-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

30k

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
| ⓘ info | No sign of truncation | IRS990PF/SummaryOfDirectCharitableActy/Description4: longest value is exactly 1000 characters; IRS990PF/SummaryOfDirectChrtblActyGrp/Description4Txt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SummaryOfDirectCharitableActy/Description4` | PF | 2009–2012 | 2,448 | 2.5% |  |
| x2 | `IRS990PF/SummaryOfDirectChrtblActyGrp/Description4Txt` | PF | 2013–2024 | 27,372 | 2.94% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 61 | 575 | 813 | 999 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.2k | 1.4k | 1.5k | 1.7k | 1.8k | 2.1k | 3.0k | 3.2k | 3.4k | 3.6k | 3.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 29,820  | 108            | 1,000   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 913     | 37.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHARLES & KIMBERLY HEMMER FOUNDATION | TRU INTERNATIONAL PO BOX 9364 PEORIA, IL 61612 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503199349100320_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | NEWSLETTER - THE FOUNDATION'S NEWSLETTER IS CIRCULATEDNATIONALLY TO WRITERS AND… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_CHARIT_ACT_DESC_4, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
