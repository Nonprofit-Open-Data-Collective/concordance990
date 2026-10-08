# F9_09_EXP_AD_PROMO_MGMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_AD_PROMO_MGMT

Advertising and promotion - management and general expenses

- Description: Advertising and promotion - Management and General

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-12-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

952k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990/Advertising/ManagementAndGeneral, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Advertising/ManagementAndGeneral` | PC | 2009–2012 | 122,113 | 23.8% |  |
| x2 | `IRS990/AdvertisingGrp/ManagementAndGeneralAmt` | PC | 2013–2024 | 829,758 | 25.4% |  |
| x3 | `IRS990/Form990PartIX/Advertising/ManagementAndGeneral` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 30k | 38k | 43k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 48k | 52k | 56k | 59k | 63k | 66k | 70k | 78k | 84k | 90k | 93k | 70k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 33 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 25 | 24 | 25 | 26 | 26 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 951,870 | 100.0%    | 14.6%  | 0.1%       | 189 | 1,233  | 6,556 | 619,024 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 4316 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | 1678 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_AD_PROMO_MGMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
