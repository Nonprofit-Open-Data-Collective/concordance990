# PF_07_FRGN_FIN_ACC_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_FRGN_FIN_ACC_CNTR

Name of foreign country

- Description: Name of foreign country

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-16`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

5.5k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 153 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/NameOfForeignCountry` | PF | 2010–2012 | 413 | 0.451% | 14.8% |
| x2 | `IRS990PF/StatementsRegardingActyGrp/ForeignCountryCd` | PF | 2013–2024 | 5,046 | 0.518% | 15.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 94 | 139 | 180 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 217 | 255 | 270 | 281 | 307 | 302 | 360 | 548 | 529 | 735 | 647 | 595 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CJ`  | 748     | 18.5% |
| `UK`  | 740     | 18.3% |
| `CA`  | 665     | 16.4% |
| `IS`  | 305     | 7.5%  |
| `IN`  | 282     | 7.0%  |
| `SZ`  | 253     | 6.2%  |
| `EI`  | 228     | 5.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CYLAND FOUNDATION INC | AM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522909349100107_public.xml) |
| 2012 | 990PF | x1 | AMERICAN LEADERSHIP ACADEMY INC | MX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332269349100528_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_FRGN_FIN_ACC_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
