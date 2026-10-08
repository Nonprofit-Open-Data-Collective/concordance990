# PF_00_ORG_TYPE_501C3_EXEMPT_PF_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_00_ORG_TYPE_501C3_EXEMPT_PF_X

Section 501(c)(3) exempt private foundation

- Description: Section 501(c)(3) exempt private foundation

- Table:

  [`PF-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p00-t00-header)
  (one)

- Part: Heading (items A-J)

- Location:

  `F990-PC-PART-00-LINE-00`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.1M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ExemptPF` | PF | 2009–2012 | 97,511 | 12.2% |  |
| x2 | `IRS990PF/Organization501c3ExemptPFInd` | PF | 2013–2024 | 999,673 | 19.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 24k | 33k | 38k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 44k | 51k | 56k | 61k | 66k | 72k | 84k | 109k | 113k | 117k | 119k | 109k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 96 | 95 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 95 | 95 | 95 | 95 | 95 | 95 | 95 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 1,097,184 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | JOSEPH AND SUSAN PISACANO MEMORIAL | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349101419_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_00_ORG_TYPE_501C3_EXEMPT_PF_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
