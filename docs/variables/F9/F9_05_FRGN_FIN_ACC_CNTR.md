# F9_05_FRGN_FIN_ACC_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_FRGN_FIN_ACC_CNTR

Foreign financial account country

- Description: Name of foreign country

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-04B`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 7

xpaths observed / mapped

61k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 226 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NameOfForeignCountry` | PC | 2009–2012 | 9,330 | 1.64% | 29.4% |
| x2 | `IRS990EZ/ForeignFinancialAccountCountry` | EZ | 2009–2012 | 917 | 0.365% | 2.6% |
| x3 | `IRS990/ForeignCountryCd` | PC | 2013–2024 | 44,724 | 1.27% | 24.1% |
| x4 | `IRS990EZ/ForeignFinancialAccountCntryCd` | EZ | 2013–2024 | 5,996 | 0.303% | 2.3% |
| x5 | `IRS990/Form990PartV/NameOfForeignCountry` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/ForeignCountryCd` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/NameOfForeignCountry` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k | 2.5k | 2.8k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 29 | 237 | 309 | 342 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 3.1k | 3.3k | 3.4k | 3.4k | 3.6k | 3.6k | 3.6k | 3.9k | 4.1k | 4.5k | 4.6k | 3.5k |
| x4 |  |  |  |  | 377 | 408 | 417 | 451 | 469 | 466 | 470 | 509 | 631 | 637 | 619 | 542 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 8,124   | 17.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | ACADEMIC CONCEPTS INC | OC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501719349201130_public.xml) |
| 2024 | 990 | x3 | SOCIETY OF INDUSTRIAL AND OFFICE | FR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513039349300746_public.xml) |
| 2012 | 990EZ | x2 | INTERNATIONAL YOUTH NUCLEAR CONGRESS | BE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331419349200403_public.xml) |
| 2012 | 990 | x1 | AVEDIS FOUNDATION | CJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349302063_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_FRGN_FIN_ACC_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
