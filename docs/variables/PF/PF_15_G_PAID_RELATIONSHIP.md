# PF_15_G_PAID_RELATIONSHIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RELATIONSHIP

Recipient Relationship to Foundation Manager or Substantial Contributor

- Description: Recipient Relationship to Foundation Manager or
  Substantial Contributor

- Table:

  [`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t01-supplementary-info-grant-paid)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03A-COL-02`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

664k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientRelationshipTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientRelationship` | PF | 2009–2012 | 63,768 | 61.9% | 76.7% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientRelationshipTxt` | PF | 2013–2024 | 599,989 | 54.2% | 74.4% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientRelationship` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 16k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k | 33k | 36k | 38k | 40k | 45k | 52k | 65k | 66k | 67k | 67k | 62k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 61 | 62 | 64 | 62 | 62 | 62 | 61 | 60 | 59 | 60 | 59 | 57 | 55 | 55 | 54 | 54 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 663,757 | 4              | 100     |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `NONE`            | 439,967 | 66.5% |
| `N/A`             | 139,859 | 21.2% |
| `None`            | 40,954  | 6.2%  |
| `none`            | 12,665  | 1.9%  |
| `No Relationship` | 10,710  | 1.6%  |
| `UNRELATED`       | 5,899   | 0.9%  |
| (blank)           | 4,303   | 0.7%  |
| `NO RELATIONSHIP` | 2,363   | 0.4%  |
| `NOT RELATED`     | 1,991   | 0.3%  |
| `n/a`             | 1,571   | 0.2%  |
| `nONE`            | 406     | 0.1%  |
| `NON`             | 186     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RELATIONSHIP, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
