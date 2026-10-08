# PF_15_G_FUTURE_RECIP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_STATE

Province or state

- Description: Province or state

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 8

xpaths observed / mapped

27k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 496 distinct values per xpath and year |
| ▲ warn | Codes share one format | 95% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/State` | PF | 2009–2012 | 2,300 | 2.28% | 65.4% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/ProvinceOrState` | PF | 2009–2012 | 99 | 0.0977% | 67.7% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/State` | PF | 2013–2013 | 997 | 2.17% | 65.1% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/ProvinceOrState` | PF | 2013–2013 | 41 | 0.0893% | 63.4% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/StateAbbreviationCd` | PF | 2014–2024 | 22,342 | 2.12% | 66.3% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 1,047 | 0.12% | 56.5% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/ProvinceOrState` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientUSAddress/State` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 69 | 567 | 754 | 910 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 7 | 19 | 34 | 39 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 997 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 41 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.4k | 1.5k | 1.9k | 2.9k | 2.9k | 2.9k | 2.8k | 2.4k |
| x6 |  |  |  |  |  | 55 | 46 | 43 | 51 | 59 | 82 | 135 | 144 | 151 | 143 | 138 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 6,154   | 17.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | SMITH RICHARDSON FOUNDATION INC | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349100814_public.xml) |
| 2024 | 990PF | x5 | BILL AND JOAN ALFOND | ME | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349100716_public.xml) |
| 2013 | 990PF | x4 | VIRGINIA H FARAH FOUNDATION | MADAGASCAR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411899349100751_public.xml) |
| 2013 | 990PF | x3 | CUTCO FOUNDATION INC | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431639349100313_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | Mazatln | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | DAVID B SILIPIGNO FOUNDATION | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342429349100704_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
