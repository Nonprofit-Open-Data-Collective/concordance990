# PF_15_G_PAID_RECIP_STAT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_STAT

Recipient's Foundation Status

- Description: Recipient's Foundation Status

- Table:

  [`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t01-supplementary-info-grant-paid)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03A-COL-03`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

791k

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
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientFoundationStatus` | PF | 2009–2012 | 71,135 | 69.3% | 77.0% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientFoundationStatusTxt` | PF | 2013–2024 | 720,118 | 67.2% | 75.6% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientFoundationStatus` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 17k | 25k | 28k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 32k | 38k | 41k | 44k | 48k | 53k | 62k | 79k | 81k | 83k | 83k | 77k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 68 | 69 | 71 | 69 | 69 | 70 | 70 | 70 | 70 | 70 | 71 | 69 | 68 | 67 | 67 | 67 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 791,253 | 5              | 22      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `PC`             | 369,458 | 52.8% |
| `PUBLIC CHARITY` | 69,140  | 9.9%  |
| `PUBLIC`         | 54,682  | 7.8%  |
| `501(C)(3)`      | 47,432  | 6.8%  |
| `I`              | 35,290  | 5.0%  |
| `N/A`            | 29,146  | 4.2%  |
| `NC`             | 29,126  | 4.2%  |
| `EXEMPT`         | 20,805  | 3.0%  |
| `GOV`            | 17,398  | 2.5%  |
| `PF`             | 13,508  | 1.9%  |
| `501(c)(3)`      | 3,713   | 0.5%  |
| `501C3`          | 3,116   | 0.4%  |
| `NONE`           | 2,330   | 0.3%  |
| `Public`         | 1,962   | 0.3%  |
| `509(a)(1)`      | 1,104   | 0.2%  |
| `509a1`          | 685     | 0.1%  |
| `CHURCH`         | 394     | 0.1%  |
| `SCHOOL`         | 363     | 0.1%  |
| `public charity` | 44      | 0.0%  |
| `Public Charity` | 42      | 0.0%  |
| `pUBLIC CHARITY` | 36      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | PC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_STAT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
