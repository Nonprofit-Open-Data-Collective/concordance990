# PF_15_G_APP_RECIP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_STATE

Province or state

- Description: Province or state

- Table:

  [`PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t03-supplementary-info-grant-app)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-02A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 8

xpaths observed / mapped

292k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 60 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/State` | PF | 2009–2012 | 29,463 | 28.7% | 2.1% |
| x2 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/ProvinceOrState` | PF | 2010–2012 | 22 | 0.0175% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/State` | PF | 2013–2013 | 12,955 | 28.2% | 1.9% |
| x4 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/ProvinceOrState` | PF | 2013–2013 | 7 | 0.0153% |  |
| x5 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/StateAbbreviationCd` | PF | 2014–2024 | 249,313 | 22.8% | 1.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 382 | 0.0462% | 3.4% |
| x7 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/ProvinceOrState` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientUSAddress/State` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 774 | 7.3k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 6 | 9 | 7 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 13k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 7 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 16k | 17k | 18k | 19k | 22k | 29k | 29k | 29k | 29k | 26k |
| x6 |  |  |  |  |  | 9 | 11 | 19 | 15 | 17 | 23 | 44 | 70 | 58 | 63 | 53 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 29 | 29 | 28 | 27 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 27,183  | 17.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | POMONA IMPACT FOUNDATION | San Lorenzo el Cu | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531259349101848_public.xml) |
| 2024 | 990PF | x5 | THE FRIEDMAN FAMILY FOUNDATION INC | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101317_public.xml) |
| 2013 | 990PF | x4 | BSR RACING SCHOLARSHIP FUND INC | FLORIDA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430769349100518_public.xml) |
| 2013 | 990PF | x3 | EZCORP FOUNDATION | TX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990PF | x2 | JEAN & CHARLES SEGAL FOUNDATION | NEW JERSEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311279349100786_public.xml) |
| 2012 | 990PF | x1 | W TOM ZURSCHMIEDE FOUNDATION | MI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349100902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
