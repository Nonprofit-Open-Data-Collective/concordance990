# SR_02_RLTD_ORG_PCSTAT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_PCSTAT

Public charity status (if 501(c)(3))

- Description: Public charity status (if 501(c)(3))

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

659k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 34% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/PublicCharityStatus` | SZ | 2009–2012 | 108,365 | 20% | 52.7% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/PublicCharityStatusTxt` | SZ | 2013–2024 | 550,917 | 12.2% | 48.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 28k | 33k | 36k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 38k | 41k | 43k | 44k | 47k | 47k | 48k | 52k | 52k | 53k | 52k | 34k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 35 | 22 | 21 | 20 | 19 | 19 | 18 | 18 | 18 | 17 | 17 | 16 | 16 | 15 | 15 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 659,282 | 6              | 20      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `LINE 7`       | 111,149 | 16.8% |
| `7`            | 110,753 | 16.7% |
| `LINE 10`      | 66,925  | 10.1% |
| `N/A`          | 52,118  | 7.9%  |
| `10`           | 50,870  | 7.7%  |
| `3`            | 50,319  | 7.6%  |
| `9`            | 44,624  | 6.7%  |
| `LINE 12A, I`  | 41,059  | 6.2%  |
| `LINE 9`       | 27,360  | 4.1%  |
| `LINE 12B, II` | 22,108  | 3.3%  |
| `LINE 3`       | 20,361  | 3.1%  |
| `2`            | 15,727  | 2.4%  |
| `LINE 11A, I`  | 14,495  | 2.2%  |
| `11A`          | 9,858   | 1.5%  |
| `Line 7`       | 6,332   | 1.0%  |
| `PF`           | 5,916   | 0.9%  |
| `509(A)(2)`    | 3,782   | 0.6%  |
| `Line 10`      | 3,140   | 0.5%  |
| `Line 9`       | 2,983   | 0.4%  |
| `LINE 2`       | 2,189   | 0.3%  |
| `11`           | 576     | 0.1%  |
| `Line 11a, I`  | 532     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 170(B)(1)(A)(VIII) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_PCSTAT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
