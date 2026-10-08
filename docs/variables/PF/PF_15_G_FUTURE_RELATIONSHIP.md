# PF_15_G_FUTURE_RELATIONSHIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RELATIONSHIP

Recipient Relationship to Foundation Manager or Substantial Contributor

- Description: Recipient Relationship to Foundation Manager or
  Substantial Contributor

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-02`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

16k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientRelationship: longest value is exactly 50 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientRelationshipTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientRelationship` | PF | 2009–2012 | 1,581 | 1.59% | 67.2% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientRelationshipTxt` | PF | 2013–2024 | 14,904 | 1.28% | 68.2% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientRelationship` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 46 | 372 | 528 | 635 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 697 | 786 | 837 | 876 | 938 | 982 | 1.3k | 1.8k | 1.8k | 1.8k | 1.7k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 1 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 16,485  | 4              | 100     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 9,260   | 57.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | J HERMAN ISNER TRUST | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502029349100205_public.xml) |
| 2012 | 990PF | x1 | CONSTANCE AND CARL FERRIS CHARITABLE | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332779349100603_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RELATIONSHIP, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
