# PF_AX46_SALE_INV_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX46_SALE_INV_CATEGORY

Category

- Description: Inventory Sale Grp - Category

- Table:

  [`PF-P99-T46-SALE-INV`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t46-sale-inv)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-46`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

7.9k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | SalesOfInventoryList/InventorySaleGrp/CategoryTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SalesOfInventoryList/SaleOfInventory/Category` | PF | 2009–2012 | 576 | 0.558% | 12.3% |
| x2 | `SalesOfInventoryList/InventorySaleGrp/CategoryTxt` | PF | 2013–2024 | 7,368 | 0.794% | 13.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 | 144 | 192 | 223 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 265 | 319 | 359 | 385 | 427 | 481 | 567 | 796 | 878 | 938 | 1.0k | 912 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 7,944   | 16             | 100     |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `BOOK SALES` | 262     | 19.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | FRIENDS OF BERLIN LAKE | FOOD SALES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520789349100122_public.xml) |
| 2012 | 990PF | x1 | ST THOMAS MORE CENTER | SALE OF INVENTORY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302279349100615_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX46_SALE_INV_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
