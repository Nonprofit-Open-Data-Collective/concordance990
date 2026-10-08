# SF_02_FRGN_ORG_GRANT_DISBMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_DISBMT

Manner of cash disbursement

- Description: Way the cash was disbursed to the grantee organization
  outside the US

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

79k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/GrantsToOrgOutsideUSGrp/MannerOfCashDisbursementTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/MannerOfCashDisbursement` | SZ | 2009–2012 | 8,375 | 1.73% | 50.0% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/MannerOfCashDisbursementTxt` | SZ | 2013–2024 | 70,859 | 2.46% | 47.3% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/MannerOfCashDisbursement` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 495 | 2.1k | 2.7k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k | 4.1k | 4.6k | 4.9k | 5.3k | 5.6k | 5.9k | 6.9k | 7.3k | 7.8k | 8.0k | 6.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 79,234  | 10             | 100     |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `WIRE TRANSFER`  | 16,005  | 29.6% |
| `WIRE`           | 13,140  | 24.3% |
| `CHECK`          | 8,515   | 15.7% |
| `Wire`           | 4,360   | 8.1%  |
| `Wire Transfer`  | 2,982   | 5.5%  |
| `Check`          | 2,040   | 3.8%  |
| `wire`           | 1,824   | 3.4%  |
| `CASH`           | 1,751   | 3.2%  |
| `Wire transfer`  | 1,622   | 3.0%  |
| `EFT`            | 759     | 1.4%  |
| `WIRE TRANSFERS` | 563     | 1.0%  |
| `wire transfer`  | 388     | 0.7%  |
| `CHECKS`         | 112     | 0.2%  |
| `check`          | 67      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | CHECK AND/OR WIRE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | CARITAS WONJU INTERNATIONAL RELIEF | WIRE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341559349300734_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_DISBMT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
