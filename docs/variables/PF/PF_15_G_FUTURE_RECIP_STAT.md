# PF_15_G_FUTURE_RECIP_STAT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_STAT

Recipient's Foundation Status

- Description: Recipient's Foundation Status

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-03`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

23k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientFoundationStatus` | PF | 2009–2012 | 1,863 | 1.88% | 66.8% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientFoundationStatusTxt` | PF | 2013–2024 | 20,752 | 1.93% | 69.1% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientFoundationStatus` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 48 | 443 | 621 | 751 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 849 | 959 | 1.1k | 1.1k | 1.2k | 1.3k | 1.7k | 2.5k | 2.6k | 2.6k | 2.6k | 2.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 22,615  | 5              | 20      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `PC`             | 12,283  | 55.5% |
| `PUBLIC CHARITY` | 1,479   | 6.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | ALPINE SOCIAL VENTURES FOUNDATION | PC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500939349100310_public.xml) |
| 2012 | 990PF | x1 | DAVID B SILIPIGNO FOUNDATION | PRIVATE SCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342429349100704_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_STAT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
