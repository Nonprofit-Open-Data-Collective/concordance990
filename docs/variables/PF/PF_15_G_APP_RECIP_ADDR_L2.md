# PF_15_G_APP_RECIP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_L2

AddressLine2

- Description: Recipient Foreign Address - AddressLine2

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

11k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 7% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine2` | PF | 2009–2012 | 1,315 | 1.25% | 0.5% |
| x2 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/AddressLine2` | PF | 2010–2012 | 5 | 0.0025% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine2` | PF | 2013–2013 | 582 | 1.27% |  |
| x4 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/AddressLine2` | PF | 2013–2013 | 1 | 0.00218% |  |
| x5 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientUSAddress/AddressLine2Txt` | PF | 2014–2024 | 8,927 | 0.744% | 0.7% |
| x6 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 55 | 0.00697% |  |
| x7 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientUSAddress/AddressLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 48 | 322 | 445 | 500 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 | 3 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 582 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 576 | 622 | 650 | 686 | 695 | 802 | 1.0k | 1.0k | 979 | 989 | 854 |
| x6 |  |  |  |  |  | 1 | 1 | 2 | 2 | 3 | 5 | 8 | 12 | 6 | 7 | 8 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 10,885  | 13             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 215     | 19.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | GARCIA FAMILY FOUNDATION (US) | STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349100215_public.xml) |
| 2024 | 990PF | x5 | JAMES & ABIGAIL CAMPBELL FAMILY | BLDG STE 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349106595_public.xml) |
| 2013 | 990PF | x4 | PARLIN FAMILY FOUNDATION | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349101733_public.xml) |
| 2013 | 990PF | x3 | THE MCDANIEL FAMILY FOUNDATION INC | 102 PEMOTOMA WAY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400949349100005_public.xml) |
| 2012 | 990PF | x2 | PARLIN FAMILY FOUNDATION | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349101000_public.xml) |
| 2012 | 990PF | x1 | THE WILLIAM R AND ESTHER RICHMOND FOUND… | FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420169349100202_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
