# SD_07_INVEST_SEC_DERIVATIVE_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_07_INVEST_SEC_DERIVATIVE_MOV

Financial derivatives - method of valuation

- Description: Method of valuation

- Table:

  [`SD-P07-T00-INVESTMENTS-OTH-DERIVATIVES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p07-t00-investments-oth-derivatives)
  (one)

- Part: Part VII - Investments - Other Securities

- Location:

  `SCHED-D-PART-07-LINE-01-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

6.1k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/FinancialDerivatives/MethodOfValuation` | SZ | 2009–2012 | 1,042 | 0.173% |  |
| x2 | `IRS990ScheduleD/FinancialDerivativesGrp/MethodValuationCd` | SZ | 2013–2024 | 5,032 | 0.174% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVII/FinancialDerivatives/MethodOfValuation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 165 | 277 | 289 | 311 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 257 | 255 | 253 | 244 | 271 | 373 | 395 | 581 | 639 | 674 | 608 | 482 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 6,074   | 1              | 1       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `F`   | 4,025   | 66.3% |
| `C`   | 2,049   | 33.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | UW-STOUT FOUNDATION AND ALUMNI | C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513039349301026_public.xml) |
| 2012 | 990 | x1 | SOUTHERN HEALTH PLAN INC | F | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323179349303037_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_07_INVEST_SEC_DERIVATIVE_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
