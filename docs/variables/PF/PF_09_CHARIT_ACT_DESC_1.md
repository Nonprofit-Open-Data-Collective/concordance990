# PF_09_CHARIT_ACT_DESC_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_CHARIT_ACT_DESC_1

Direct charitable activity 1: description

- Description: Summary of direct charitable activities, line 1:
  description

- Table:

  [`PF-P09-T00-CHARITABLE-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-charitable-activities)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-A-LINE-01-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

337k

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
| ⓘ info | No sign of truncation | IRS990PF/SummaryOfDirectCharitableActy/Description1: longest value is exactly 1000 characters; IRS990PF/SummaryOfDirectChrtblActyGrp/Description1Txt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SummaryOfDirectCharitableActy/Description1` | PF | 2009–2012 | 33,460 | 33.3% |  |
| x2 | `IRS990PF/SummaryOfDirectChrtblActyGrp/Description1Txt` | PF | 2013–2024 | 303,401 | 28.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 865 | 7.9k | 11k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 15k | 17k | 19k | 20k | 21k | 25k | 34k | 35k | 35k | 36k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 37 | 31 | 33 | 33 | 33 | 29 | 28 | 30 | 29 | 28 | 28 | 29 | 29 | 29 | 29 | 28 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 336,861 | 108            | 1,000   |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `N/A`  | 46,230  | 50.0% |
| `NONE` | 28,362  | 30.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Fetosur Foundation USA Inc | N A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543019349100704_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | AMY WRITING AWARDS - THE FOUNDATION ANNUALLY GIVES AWARDSTO THE TOP FIFTEEN PUB… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_CHARIT_ACT_DESC_1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
