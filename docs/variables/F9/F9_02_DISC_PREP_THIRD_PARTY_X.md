# F9_02_DISC_PREP_THIRD_PARTY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_DISC_PREP_THIRD_PARTY_X

IRS may discuss return with preparer \[x\]

- Description: Indicates whether IRS may discuss return with preparer

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: checkbox

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

2 / 2

xpaths observed / mapped

5.9M

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
| ⓘ info | Meaning of a blank | 7% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Officer/AuthorizeThirdParty` | PC | 2009–2012 | 652,745 | 86.2% |  |
| x2 | `BusinessOfficerGrp/DiscussWithPaidPreparerInd` | PC | 2013–2024 | 5,242,018 | 79% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 32k | 124k | 226k | 270k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 294k | 330k | 358k | 376k | 407k | 431k | 452k | 511k | 536k | 547k | 550k | 451k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 68 | 64 | 87 | 91 | 88 | 88 | 89 | 89 | 90 | 90 | 90 | 88 | 88 | 87 | 87 | 86 |
| 990-EZ | 53 | 52 | 78 | 82 | 80 | 81 | 82 | 82 | 83 | 83 | 82 | 79 | 71 | 70 | 69 | 68 |
| 990-PF | 57 | 50 | 68 | 75 | 77 | 78 | 80 | 81 | 81 | 82 | 82 | 82 | 80 | 80 | 79 | 79 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `true`  | 3,339,659 | 56.7% |
| `1`     | 2,140,490 | 36.3% |
| `false` | 399,217   | 6.8%  |
| `0`     | 15,397    | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_DISC_PREP_THIRD_PARTY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
