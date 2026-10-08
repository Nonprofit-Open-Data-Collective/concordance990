# PF_15_G_FUTURE_RECIP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_CITY

City

- Description: Recipient Foreign Address - City

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

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/City: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/City` | PF | 2009–2012 | 2,300 | 2.28% | 65.4% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/City` | PF | 2009–2012 | 125 | 0.125% | 70.4% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/City` | PF | 2013–2013 | 997 | 2.17% | 65.1% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/City` | PF | 2013–2013 | 49 | 0.107% | 61.2% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/CityNm` | PF | 2014–2024 | 22,342 | 2.12% | 66.3% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/CityNm` | PF | 2014–2024 | 1,588 | 0.207% | 61.7% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/City` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientUSAddress/City` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 69 | 567 | 754 | 910 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 8 | 27 | 40 | 50 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 997 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 49 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.4k | 1.5k | 1.9k | 2.9k | 2.9k | 2.9k | 2.8k | 2.4k |
| x6 |  |  |  |  |  | 68 | 58 | 56 | 68 | 80 | 131 | 201 | 218 | 237 | 233 | 238 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 27,401  | 9              | 37      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 3,578   | 19.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BERRY CHARITABLE FOUNDATION | LONDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349104656_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | Atlanta | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | DENNIS & PHYLLIS WASHINGTON FOUNDATION | SOOKE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403209349100105_public.xml) |
| 2013 | 990PF | x3 | LYNDONVILLE AREA FOUNDATION INC | ALBION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349101833_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | Nairobi | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | DAVID B SILIPIGNO FOUNDATION | ALBANY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342429349100704_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
