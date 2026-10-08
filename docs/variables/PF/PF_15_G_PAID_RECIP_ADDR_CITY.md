# PF_15_G_PAID_RECIP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_ADDR_CITY

City

- Description: Recipient Foreign Address - City

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

943k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/City: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/City` | PF | 2009–2012 | 83,387 | 81.3% | 77.5% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/City` | PF | 2009–2012 | 3,144 | 3.12% | 33.1% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/City` | PF | 2013–2013 | 37,437 | 81.6% | 78.3% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/City` | PF | 2013–2013 | 1,459 | 3.18% | 34.0% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/CityNm` | PF | 2014–2024 | 784,774 | 75.7% | 76.0% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/CityNm` | PF | 2014–2024 | 32,873 | 3.34% | 37.6% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientForeignAddress/City` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientUSAddress/City` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 21k | 28k | 32k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 84 | 757 | 1.1k | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 37k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.5k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 44k | 48k | 51k | 55k | 61k | 71k | 90k | 92k | 93k | 94k | 87k |
| x6 |  |  |  |  |  | 1.8k | 2.0k | 2.0k | 2.3k | 2.4k | 2.8k | 3.7k | 3.8k | 4.1k | 4.2k | 3.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 81 | 82 | 82 | 81 | 82 | 82 | 81 | 81 | 81 | 81 | 81 | 78 | 77 | 76 | 75 | 76 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 943,074 | 9              | 42      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `NEW YORK`   | 180,595 | 26.4% |
| `WASHINGTON` | 122,263 | 17.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | NIRMALA FOUNDATION INC | RAJAMUNDRY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540779349100914_public.xml) |
| 2024 | 990PF | x5 | C A LUCAS TRUST FBO 1ST CONG | SHEBOYGAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | TORONTO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2013 | 990PF | x3 | EZCORP FOUNDATION | AUSTIN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990PF | x2 | MILDRED HITCHCOCK HUFF CHARITABLE TRUST | MALLOW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342879349100509_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | WINSTONSALEM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
