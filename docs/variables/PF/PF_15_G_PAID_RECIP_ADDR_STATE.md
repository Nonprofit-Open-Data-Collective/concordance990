# PF_15_G_PAID_RECIP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_ADDR_STATE

Province or state

- Description: Province or state

- Table:

  [`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t01-supplementary-info-grant-paid)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03A-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 8

xpaths observed / mapped

932k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Small code list | up to 3078 distinct values per xpath and year |
| ✓ pass | Codes share one format | 98% have the shape AA |
| ✓ pass | Consistent letter case | 0.0% of values are lower case |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/State` | PF | 2009–2012 | 83,387 | 81.3% | 77.5% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/ProvinceOrState` | PF | 2009–2012 | 2,170 | 2.13% | 30.6% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/State` | PF | 2013–2013 | 37,437 | 81.6% | 78.3% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/ProvinceOrState` | PF | 2013–2013 | 1,016 | 2.21% | 30.1% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/StateAbbreviationCd` | PF | 2014–2024 | 784,774 | 75.7% | 76.0% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 22,973 | 2.36% | 34.3% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientForeignAddress/ProvinceOrState` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientUSAddress/State` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 21k | 28k | 32k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 58 | 495 | 765 | 852 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 37k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 44k | 48k | 51k | 55k | 61k | 71k | 90k | 92k | 93k | 94k | 87k |
| x6 |  |  |  |  |  | 1.2k | 1.4k | 1.4k | 1.5k | 1.6k | 1.9k | 2.6k | 2.7k | 2.9k | 2.9k | 2.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 81 | 82 | 82 | 81 | 82 | 82 | 81 | 81 | 81 | 81 | 81 | 78 | 77 | 76 | 75 | 76 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 292,940 | 18.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | STEMPOWER INC | MBALE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102056_public.xml) |
| 2024 | 990PF | x5 | THELMA WEBB SCHOLARSHIP | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2013 | 990PF | x3 | Tom & Helen Tonkin Foundation | WY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433439349100103_public.xml) |
| 2012 | 990PF | x2 | HEART OF THE WORLD FOUNDATION | ANAMBRA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322779349100012_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
