# PF_16_REV_PROG_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_REV_PROG_DESC

Description

- Description: Program Service Revenue Part VII - Description

- Table:

  [`PF-P16-T01-INCOME-PRODUCING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t01-income-producing-acts)
  (many)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-A-LINE-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

43k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 4% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevPartVIIGrp/Desc: longest value is exactly 100 characters; IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevenueDtl/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisIncomeProducingActy/ProgramServiceRevenuePartVII/Description` | PF | 2009–2012 | 3,711 | 3.55% | 26.9% |
| x2 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevPartVIIGrp/Desc` | PF | 2013–2020 | 20,760 | 3.77% | 28.2% |
| x3 | `IRS990PF/AnalysisIncomeProducingActyGrp/ProgramServiceRevenueDtl/Desc` | PF | 2021–2024 | 18,490 | 3.89% | 28.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 126 | 930 | 1.2k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.7k | 1.9k | 2.1k | 2.3k | 2.5k | 2.8k | 3.2k | 4.3k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 4.4k | 4.7k | 4.8k | 4.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 5 | 4 | 4 | 4 | 4 | 3 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 42,961  | 15             | 100     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 1,951   | 22.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | RENAISSANCE CORPORATION OF ALBANY | DORMITORY-HOUSING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521209349100622_public.xml) |
| 2020 | 990PF | x2 | WOODVIEW OF CINCINNATI | Low income housing rental | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202120749349100512_public.xml) |
| 2012 | 990PF | x1 | BRIDGING NATIONS FOUNDATION | Tuition Fees | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349101074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_REV_PROG_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
