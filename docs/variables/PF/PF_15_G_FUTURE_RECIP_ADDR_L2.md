# PF_15_G_FUTURE_RECIP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_L2

AddressLine2

- Description: Recipient Foreign Address - AddressLine2

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

4.3k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 9% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine2` | PF | 2009–2012 | 254 | 0.248% | 56.7% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine2` | PF | 2010–2012 | 27 | 0.0225% | 74.1% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine2` | PF | 2013–2013 | 104 | 0.227% | 51.9% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine2` | PF | 2013–2013 | 12 | 0.0262% | 66.7% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine2Txt` | PF | 2014–2024 | 3,317 | 0.351% | 50.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 613 | 0.0949% | 61.2% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13 | 63 | 79 | 99 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 6 | 12 | 9 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 104 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 12 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 138 | 151 | 155 | 157 | 193 | 296 | 442 | 462 | 458 | 462 | 403 |
| x6 |  |  |  |  |  | 14 | 13 | 15 | 14 | 25 | 47 | 80 | 91 | 104 | 101 | 109 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 4,327   | 16             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 271     | 17.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | ROBERTSON FOUNDATION | BOSQUE GUTIERREZ - MEMORIAL CHICO M | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349104680_public.xml) |
| 2024 | 990PF | x5 | SMITH RICHARDSON FOUNDATION INC | 29789 GENERAL POST OFFICE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349100814_public.xml) |
| 2013 | 990PF | x4 | GASTROENTEROLOGY FOUNDATION FOR | D-81675 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441289349100424_public.xml) |
| 2013 | 990PF | x3 | NoVo Foundation | 330 7th Avenue 19th Floor | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433189349100903_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | Peponi Rd PO Box 10787-00100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | POTOMAC HEALTH FOUNDATION | 102 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440719349100019_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
