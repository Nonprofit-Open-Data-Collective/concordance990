# PF_15_G_PAID_RECIP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_ADDR_L2

AddressLine2

- Description: Recipient Foreign Address - AddressLine2

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

105k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 10% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine2` | PF | 2009–2012 | 8,969 | 8.92% | 47.5% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine2` | PF | 2009–2012 | 340 | 0.358% | 31.5% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine2` | PF | 2013–2013 | 4,232 | 9.22% | 45.8% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine2` | PF | 2013–2013 | 163 | 0.355% | 31.3% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine2Txt` | PF | 2014–2024 | 86,349 | 8.47% | 46.9% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 4,972 | 0.631% | 38.6% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 208 | 2.2k | 3.0k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5 | 55 | 137 | 143 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.2k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 163 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.8k | 5.3k | 5.6k | 6.0k | 6.4k | 7.6k | 9.7k | 10k | 10k | 10k | 9.7k |
| x6 |  |  |  |  |  | 211 | 232 | 226 | 282 | 320 | 381 | 581 | 605 | 680 | 730 | 724 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 8 | 9 | 8 | 9 | 9 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 105,025 | 13             | 36      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 3,545   | 16.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | STEMPOWER INC | CLOSE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513119349102056_public.xml) |
| 2024 | 990PF | x5 | BIANCHINI FAMILY FOUNDATION | 101 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501069349100600_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | FRAC LOMAS DE BOULEVARES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2013 | 990PF | x3 | TABAT FAMILY FOUNDATION INC CO PAUL ZUD… | STREET AND 12TH AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541809349100314_public.xml) |
| 2012 | 990PF | x2 | BURROWS FOUNDATION | GUANGZHOU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349101702_public.xml) |
| 2012 | 990PF | x1 | THE PETER AND SUSAN STRAUSS FAMILY FOUN… | DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400459349100565_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
