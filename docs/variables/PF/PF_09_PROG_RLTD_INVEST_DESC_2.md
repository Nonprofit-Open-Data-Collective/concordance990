# PF_09_PROG_RLTD_INVEST_DESC_2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_PROG_RLTD_INVEST_DESC_2

Description 2

- Description: Sum Of Program Related Investments - Description 2

- Table:

  [`PF-P09-T00-PROG-RELATED-INVESTMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-prog-related-investments)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-B-LINE-01-03-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

8.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SumOfProgramRelatedInvstGrp/Description2Txt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SumOfProgramRelatedInvestments/Description2` | PF | 2009–2012 | 433 | 0.451% |  |
| x2 | `IRS990PF/SumOfProgramRelatedInvstGrp/Description2Txt` | PF | 2013–2024 | 8,499 | 1.06% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13 | 88 | 152 | 180 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 197 | 293 | 308 | 313 | 372 | 458 | 657 | 1.0k | 1.1k | 1.2k | 1.4k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 8,932   | 47             | 1,000   |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 2,271   | 45.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Jones Lang LaSalle Foundation Inc | InventWood | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502259349100200_public.xml) |
| 2012 | 990PF | x1 | ANNE B SWEIGART CHARITABLE FOUNDATION | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349100200_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_PROG_RLTD_INVEST_DESC_2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
