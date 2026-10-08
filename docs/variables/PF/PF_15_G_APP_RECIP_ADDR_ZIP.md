# PF_15_G_APP_RECIP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_ZIP

Postal code

- Description: Recipient Foreign Address - Postal code

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
| ✓ pass | Values have the ZIP format | 99.9% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 5 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/ZIPCode` | PF | 2009–2012 | 29,463 | 28.7% | 2.1% |
| x2 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/PostalCode` | PF | 2010–2012 | 35 | 0.0351% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/ZIPCode` | PF | 2013–2013 | 12,955 | 28.2% | 1.9% |
| x4 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/PostalCode` | PF | 2013–2013 | 17 | 0.037% |  |
| x5 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/ZIPCd` | PF | 2014–2024 | 249,313 | 22.8% | 1.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 427 | 0.0514% | 3.7% |
| x7 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/PostalCode` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientUSAddress/ZIPCode` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 774 | 7.3k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 10 | 11 | 14 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 13k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 17 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 16k | 17k | 18k | 19k | 22k | 29k | 29k | 29k | 29k | 26k |
| x6 |  |  |  |  |  | 16 | 16 | 20 | 16 | 16 | 25 | 55 | 76 | 61 | 67 | 59 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 29 | 29 | 28 | 27 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 266,971 | 91.3% |
| `999999999` | 25,115  | 8.6%  |
| `A9A 9A9`   | 80      | 0.0%  |
| `9999`      | 54      | 0.0%  |
| `999999`    | 31      | 0.0%  |
| `999-9999`  | 11      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | PORIJON INC | 3100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101832_public.xml) |
| 2024 | 990PF | x5 | THE FRIEDMAN FAMILY FOUNDATION INC | 92130 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101317_public.xml) |
| 2013 | 990PF | x4 | BSR RACING SCHOLARSHIP FUND INC | 32128 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430769349100518_public.xml) |
| 2013 | 990PF | x3 | EZCORP FOUNDATION | 78746 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990PF | x2 | Wansink Consumer Education Foundation | 14850 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311059349100611_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 48901 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
