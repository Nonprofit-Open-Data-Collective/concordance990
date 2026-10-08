# F9_00_ALL_AFFIL_INCL_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ALL_AFFIL_INCL_X

All subordinates included \[x\]

- Description: Indicates this form includes all subordinate
  organizations

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-HB`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

318k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 94% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 19.7x year-on-year (in 2019) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AllAffiliatesIncluded` | PC | 2009–2012 | 80,875 | 10.9% |  |
| x2 | `IRS990/AllAffiliatesIncludedInd` | PC | 2013–2024 | 237,093 | 0.274% |  |
| x3 | `IRS990/Form990PartI/AllAffiliatesIncluded` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.1k | 20k | 27k | 30k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 33k | 36k | 38k | 39k | 40k | 41k | 2.2k | 2.7k | 1.6k | 1.5k | 1.7k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 16 | 17 | 17 | 16 | 16 | 16 | 16 | 15 | 15 | 1 | 1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 296,044 | 93.1% |
| `1`     | 12,358  | 3.9%  |
| `true`  | 7,758   | 2.4%  |
| `0`     | 1,808   | 0.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CENTRAL ASSOCIATION OF OBSTETRICIANS | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349314250_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ALL_AFFIL_INCL_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
