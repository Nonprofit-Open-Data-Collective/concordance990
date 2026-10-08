# F9_02_SIGNING_OFF_NAME_FIRST

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_SIGNING_OFF_NAME_FIRST

Signing officer name

- Description: Signing Officer Name

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: text

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

1 / 1

xpaths observed / mapped

1.9M

filings with a value

2020–2023

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.3x year-on-year (in 2023) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SigningOfficerGrp/PersonFullName/PersonFirstNm` | PC | 2020–2023 | 1,882,883 | 29.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  | 542k | 574k | 568k | 199k |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  |  |  |  |  | 94 | 94 | 89 | 21 |  |
| 990-EZ |  |  |  |  |  |  |  |  |  |  |  | 88 | 81 | 78 | 39 |  |
| 990-PF |  |  |  |  |  |  |  |  |  |  |  | 79 | 80 | 77 | 36 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,002,473 | 6              | 20      |
| 990-EZ | 555,442   | 6              | 20      |
| 990-PF | 324,945   | 6              | 20      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `JOHN`     | 29,648  | 15.2% |
| `DAVID`    | 26,884  | 13.8% |
| `MICHAEL`  | 26,559  | 13.6% |
| `ROBERT`   | 24,374  | 12.5% |
| `JAMES`    | 20,303  | 10.4% |
| `WILLIAM`  | 15,171  | 7.8%  |
| `RICHARD`  | 14,423  | 7.4%  |
| `MARK`     | 14,221  | 7.3%  |
| `THOMAS`   | 11,492  | 5.9%  |
| `JENNIFER` | 8,020   | 4.1%  |
| `JOSEPH`   | 1,901   | 1.0%  |
| `John`     | 920     | 0.5%  |
| `Michael`  | 881     | 0.5%  |
| `BRENT`    | 364     | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2023 | 990EZ | x1 | GLENFIELD HOUSING AUTHORITY | AMY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202420959349201422_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_SIGNING_OFF_NAME_FIRST, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
