# PF_07_PUB_INSPECTION_WEBSITE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_PUB_INSPECTION_WEBSITE

Website Address

- Description: Website Address

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-13`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

964k

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
| ⓘ info | No sign of truncation | IRS990PF/StatementsRegardingActyGrp/WebsiteAddressTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/WebsiteAddress` | PF | 2009–2012 | 88,755 | 87.7% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/WebsiteAddressTxt` | PF | 2013–2024 | 874,781 | 80.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.2k | 22k | 30k | 35k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 41k | 46k | 51k | 54k | 58k | 64k | 73k | 95k | 98k | 100k | 101k | 92k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 92 | 86 | 87 | 88 | 88 | 87 | 87 | 86 | 86 | 85 | 84 | 82 | 82 | 82 | 81 | 80 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 963,536 | 6              | 100     |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `N/A`   | 765,614 | 93.6% |
| `NONE`  | 30,482  | 3.7%  |
| (blank) | 6,364   | 0.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | JOSEPH AND SUSAN PISACANO MEMORIAL | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349101419_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | WWW.AMYFOUND.ORG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_PUB_INSPECTION_WEBSITE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
