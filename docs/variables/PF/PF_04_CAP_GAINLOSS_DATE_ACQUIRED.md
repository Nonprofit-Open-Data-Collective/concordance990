# PF_04_CAP_GAINLOSS_DATE_ACQUIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_04_CAP_GAINLOSS_DATE_ACQUIRED

Date Acquired

- Description: Cap Gains Loss Tx Invst Incm Grp - Date Acquired

- Table:

  [`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p04-t01-invest-income-tax-capital-gainloss)
  (many)

- Part: Part IV - Capital Gains and Losses for Tax on Investment Income

- Location:

  `F990-PF-PART-04-LINE-01-ABCDE-COL-C`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

441k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/DateAcquired` | PF | 2009–2012 | 35,258 | 33.5% | 83.1% |
| x2 | `IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/AcquiredDt` | PF | 2013–2024 | 405,839 | 36.8% | 84.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 848 | 9.1k | 12k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 20k | 24k | 25k | 27k | 31k | 36k | 47k | 47k | 46k | 46k | 42k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 36 | 36 | 35 | 34 | 33 | 37 | 41 | 39 | 39 | 41 | 41 | 41 | 40 | 38 | 37 | 37 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 441,097 | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | 2023-12-22 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 2006-06-02 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_04_CAP_GAINLOSS_DATE_ACQUIRED, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
