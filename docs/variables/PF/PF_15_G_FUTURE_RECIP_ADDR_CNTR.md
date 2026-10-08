# PF_15_G_FUTURE_RECIP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_CNTR

Country

- Description: Recipient Foreign Address - Country

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

3 / 4

xpaths observed / mapped

1.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 164 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/Country` | PF | 2009–2012 | 139 | 0.138% | 70.5% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/Country` | PF | 2013–2013 | 55 | 0.12% | 61.8% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/CountryCd` | PF | 2014–2024 | 1,710 | 0.219% | 62.6% |
| x4 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/Country` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 30 | 45 | 55 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 55 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 71 | 64 | 62 | 73 | 88 | 136 | 221 | 236 | 251 | 257 | 251 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 745     | 20.2% |
| `CA`  | 648     | 17.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | LIBERTY MUTUAL FOUNDATION INC | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349100813_public.xml) |
| 2013 | 990PF | x2 | VIRGINIA H FARAH FOUNDATION | BU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411899349100751_public.xml) |
| 2012 | 990PF | x1 | FOUNDATION FOR INFORMED MEDICAL | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410639349100506_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
