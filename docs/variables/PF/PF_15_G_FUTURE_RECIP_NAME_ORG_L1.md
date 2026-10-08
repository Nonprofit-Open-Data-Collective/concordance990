# PF_15_G_FUTURE_RECIP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_NAME_ORG_L1

BusinessNameLine1

- Description: Recipient Business Name - BusinessNameLine1

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 4

xpaths observed / mapped

21k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientBusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientBusinessName/BusinessNameLine1` | PF | 2009–2012 | 1,772 | 1.73% | 65.2% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine1` | PF | 2013–2013 | 765 | 1.67% | 65.2% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 17,998 | 1.79% | 68.8% |
| x4 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientBusinessName/BusinessNameLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 54 | 445 | 582 | 691 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 765 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 861 | 924 | 971 | 1.1k | 1.2k | 1.6k | 2.3k | 2.4k | 2.4k | 2.3k | 2.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 20,535  | 28             | 75      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `YALE UNIVERSITY`  | 244     | 10.7% |
| `NEW VENTURE FUND` | 239     | 10.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | DUCHEN FOUNDATION | MUSEUM OF SCIENCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530599349100863_public.xml) |
| 2013 | 990PF | x2 | LYNDONVILLE AREA FOUNDATION INC | ELIZABETH FOLLMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349101833_public.xml) |
| 2012 | 990PF | x1 | THE KAVLI FOUNDATION | DELFT UNIVERSITY OF TECHNOLOGY KAVLI INSTITUTE FOR NANOSCIENCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349101953_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
