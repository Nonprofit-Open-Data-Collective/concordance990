# PF_15_G_APP_RECIP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_CITY

City

- Description: Recipient Foreign Address - City

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

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/City` | PF | 2009–2012 | 29,463 | 28.7% | 2.1% |
| x2 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/City` | PF | 2010–2012 | 49 | 0.0426% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/City` | PF | 2013–2013 | 12,955 | 28.2% | 1.9% |
| x4 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/City` | PF | 2013–2013 | 21 | 0.0458% |  |
| x5 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/CityNm` | PF | 2014–2024 | 249,313 | 22.8% | 1.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/CityNm` | PF | 2014–2024 | 586 | 0.0671% | 3.2% |
| x7 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/City` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientUSAddress/City` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 774 | 7.3k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 15 | 17 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 13k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 21 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 16k | 17k | 18k | 19k | 22k | 29k | 29k | 29k | 29k | 26k |
| x6 |  |  |  |  |  | 21 | 23 | 27 | 29 | 31 | 41 | 74 | 94 | 82 | 87 | 77 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 29 | 29 | 28 | 27 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 292,387 | 9              | 22      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 8,148   | 27.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | PORIJON INC | Sylhet | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101832_public.xml) |
| 2024 | 990PF | x5 | THE FRIEDMAN FAMILY FOUNDATION INC | SAN DIEGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101317_public.xml) |
| 2013 | 990PF | x4 | ROSTRUST FOUNDATION | MONTREAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432589349100023_public.xml) |
| 2013 | 990PF | x3 | SCHWARZMANN FAMILY FOUNDATION | OAK HILL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402679349100200_public.xml) |
| 2012 | 990PF | x2 | FRED J HEIGEL FOUNDATION | COTTESLOE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311929349100611_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | LANSING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
