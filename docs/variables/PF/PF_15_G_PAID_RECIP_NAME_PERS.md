# PF_15_G_PAID_RECIP_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_NAME_PERS

Recipient Person Name

- Description: Recipient Person Name

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

2 / 3

xpaths observed / mapped

205k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientPersonName: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientPersonName` | PF | 2009–2012 | 18,751 | 19.8% | 75.5% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientPersonNm` | PF | 2013–2024 | 185,824 | 15.6% | 74.3% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientPersonName` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 396 | 4.3k | 6.2k | 7.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 9.3k | 11k | 12k | 13k | 13k | 14k | 15k | 20k | 20k | 21k | 21k | 18k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 17 | 17 | 18 | 20 | 20 | 20 | 20 | 20 | 19 | 18 | 17 | 17 | 17 | 17 | 17 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 204,575 | 20             | 37      |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `SALVATION ARMY`          | 3,778   | 17.3% |
| `AMERICAN RED CROSS`      | 2,733   | 12.5% |
| `DOCTORS WITHOUT BORDERS` | 2,549   | 11.7% |
| `AMERICAN CANCER SOCIETY` | 2,440   | 11.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE RIDER FAMILY FUND | FIRST PRESBYTERIAN CHURCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533379349100408_public.xml) |
| 2012 | 990PF | x1 | DR ARTHUR KING SCHOLARSHIP TRUST | KEIREN HOOPER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349100310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
