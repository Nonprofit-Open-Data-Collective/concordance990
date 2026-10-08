# PF_15_G_FUTURE_RECIP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_L1

AddressLine1

- Description: Recipient Foreign Address - AddressLine1

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

28k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine1` | PF | 2009–2012 | 2,300 | 2.28% | 65.4% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine1` | PF | 2009–2012 | 139 | 0.138% | 70.5% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine1` | PF | 2013–2013 | 997 | 2.17% | 65.1% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine1` | PF | 2013–2013 | 55 | 0.12% | 61.8% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/AddressLine1Txt` | PF | 2014–2024 | 22,342 | 2.12% | 66.3% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 1,710 | 0.219% | 62.6% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientUSAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 69 | 567 | 754 | 910 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 9 | 30 | 45 | 55 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 997 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 55 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.4k | 1.5k | 1.9k | 2.9k | 2.9k | 2.9k | 2.8k | 2.4k |
| x6 |  |  |  |  |  | 71 | 64 | 62 | 73 | 88 | 136 | 221 | 236 | 251 | 257 | 251 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 27,543  | 21             | 35      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| `VARIOUS` | 253     | 14.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | LIBERTY MUTUAL FOUNDATION INC | 700 611 MEREDITH ROAD NE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349100813_public.xml) |
| 2024 | 990PF | x5 | BILL AND JOAN ALFOND | 50 ELM STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349100716_public.xml) |
| 2013 | 990PF | x4 | UNITED AIRLINES FOUNDATION | 4002 PUTIAN BUILDING CHAOYANG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413179349101661_public.xml) |
| 2013 | 990PF | x3 | LYNDONVILLE AREA FOUNDATION INC | 14080 STATE RTE 31 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349101833_public.xml) |
| 2012 | 990PF | x2 | THE KAVLI FOUNDATION | LORENTZWEG 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349101953_public.xml) |
| 2012 | 990PF | x1 | THE KAVLI FOUNDATION | 1200 E CALIFORNIA BLVD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349101953_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
