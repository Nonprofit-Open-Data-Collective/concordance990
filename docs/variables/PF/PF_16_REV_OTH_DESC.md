# PF_16_REV_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_OTH_DESC

Other revenue - description

- Description: Other Revenue Described - Description

- Table:

  [`PF-P16-T02-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t02-income-producing-acts)
  (many)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-11-ABCDE`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

175k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/AnalysisIncomeProducingActyGrp/OtherRevenueDescribedGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/OtherRevenueDescribed/Description` | PF | 2009–2012 | 14,645 | 13.8% | 27.4% |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/OtherRevenueDescribedGrp/Desc` | PF | 2013–2024 | 160,781 | 14.2% | 26.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 474 | 4.0k | 4.7k | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.4k | 7.3k | 8.7k | 9.9k | 11k | 9.6k | 14k | 17k | 18k | 17k | 25k | 16k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 20 | 16 | 13 | 14 | 14 | 14 | 15 | 16 | 16 | 13 | 16 | 15 | 15 | 14 | 20 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 175,426 | 20             | 100     |

### Most common values

| Value                  | Filings | Share |
|------------------------|---------|-------|
| `FEDERAL TAX REFUND`   | 25,204  | 32.7% |
| `OTHER INCOME`         | 16,384  | 21.3% |
| `EXCISE TAX REFUND`    | 11,825  | 15.4% |
| `OTHER REVENUE`        | 4,983   | 6.5%  |
| `MISCELLANEOUS INCOME` | 4,243   | 5.5%  |
| `MISCELLANEOUS`        | 3,271   | 4.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | FEDERAL TAX REFUND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | TONGANOXIE SENIOR CITIZENS | QUILTS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322129349100407_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
