# PF_15_G_PAID_RECIP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_ADDR_L1

AddressLine1

- Description: Recipient Foreign Address - AddressLine1

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

947k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine1: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine1` | PF | 2009–2012 | 83,387 | 81.3% | 77.5% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine1` | PF | 2009–2012 | 3,563 | 3.53% | 33.2% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine1` | PF | 2013–2013 | 37,437 | 81.6% | 78.3% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine1` | PF | 2013–2013 | 1,585 | 3.45% | 33.8% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/AddressLine1Txt` | PF | 2014–2024 | 784,774 | 75.7% | 76.0% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 35,833 | 3.64% | 37.7% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientUSAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 21k | 28k | 32k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 95 | 851 | 1.2k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 37k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.6k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 44k | 48k | 51k | 55k | 61k | 71k | 90k | 92k | 93k | 94k | 87k |
| x6 |  |  |  |  |  | 2.0k | 2.2k | 2.2k | 2.5k | 2.6k | 3.0k | 4.0k | 4.2k | 4.5k | 4.6k | 4.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 81 | 82 | 82 | 81 | 82 | 82 | 81 | 81 | 81 | 81 | 81 | 78 | 77 | 76 | 75 | 76 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 946,579 | 18             | 37      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `501 ST JUDE PLACE` | 11,302  | 17.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | ISAAC & MARJORIE GINDI FOUNDATION INC | 32-24 YEHUDA HALEVI ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523179349103192_public.xml) |
| 2024 | 990PF | x5 | C A LUCAS TRUST FBO 1ST CONG | 310 BLUFF AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x4 | JULIA LEE TAUBERT FOUNDATION | VIA BERNADO RUCELLAI 9 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401299349101800_public.xml) |
| 2013 | 990PF | x3 | Tom & Helen Tonkin Foundation | PO Box 393 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433439349100103_public.xml) |
| 2012 | 990PF | x2 | MILDRED HITCHCOCK HUFF CHARITABLE TRUST | KNOCKARDBANE LISCARROL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342879349100509_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 316 N EL DORADO ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
