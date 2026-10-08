# PF_15_G_APP_RECIP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_L1

AddressLine1

- Description: Recipient Foreign Address - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine1` | PF | 2009–2012 | 29,463 | 28.7% | 2.1% |
| x2 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/AddressLine1` | PF | 2010–2012 | 54 | 0.0476% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine1` | PF | 2013–2013 | 12,955 | 28.2% | 1.9% |
| x4 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/AddressLine1` | PF | 2013–2013 | 22 | 0.0479% |  |
| x5 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine1Txt` | PF | 2014–2024 | 249,313 | 22.8% | 1.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 605 | 0.0688% | 3.1% |
| x7 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 774 | 7.3k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 16 | 19 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 13k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 16k | 17k | 18k | 19k | 22k | 29k | 29k | 29k | 29k | 26k |
| x6 |  |  |  |  |  | 21 | 23 | 28 | 30 | 32 | 42 | 78 | 96 | 86 | 90 | 79 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 29 | 29 | 28 | 27 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 292,412 | 19             | 35      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 430     | 11.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | VIETNAM EDUCATION FUND | 227 NGUYEN VAN CU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533199349101203_public.xml) |
| 2024 | 990PF | x5 | PLANTING SEEDS GROWING HOPE | P O BOX 510 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2013 | 990PF | x4 | BSR RACING SCHOLARSHIP FUND INC | 1708 BARON COURT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430769349100518_public.xml) |
| 2013 | 990PF | x3 | EZCORP FOUNDATION | 1901 CAPITAL PARKWAY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2012 | 990PF | x2 | The Kathryn Aguirre Worth Memorial Foun… | 39 Law Link | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301039349100600_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | PO BOX 400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
