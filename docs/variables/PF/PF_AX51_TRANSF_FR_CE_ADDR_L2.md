# PF_AX51_TRANSF_FR_CE_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX51_TRANSF_FR_CE_ADDR_L2

AddressLine2

- Description: Foreign Address - AddressLine2

- Table:

  [`PF-P99-T51-TRANSFER-FROM-CE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t51-transfer-from-ce)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-51`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 8

xpaths observed / mapped

140

filings with a value

2010–2024

tax years observed

1 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 10% of values are numeric |
| ⓘ info | No sign of truncation | TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersFrmControlledEntities/FromControlledEntity/AddressUS/AddressLine2` | PF | 2010–2012 | 4 | 0.00501% | 25.0% |
| x2 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine2Txt` | PF | 2014–2024 | 79 | 0.0122% | 20.3% |
| x3 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 57 | 0.0148% | 22.8% |
| x4 | `TransfersFrmControlledEntities/FromControlledEntity/AddressForeign/AddressLine2` | PF | not observed | 0 |  |  |
| x5 | `TransfersFrmControlledEntities/FromControlledEntity/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x6 | `TransfersFrmControlledEntities/FromControlledEntity/USAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x7 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x8 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1 | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 2 | 1 |  |  | 2 | 2 | 10 | 18 | 16 | 14 | 14 |
| x3 |  |  |  |  |  | 1 |  |  | 1 | 3 | 2 | 5 | 9 | 7 | 12 | 17 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 |  | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 140     | 13             | 35      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `87 MARY ST` | 6       | 5.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | WK KELLOGG FOUNDATION TRUST - NO 5315 | UGLAND HOUSE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611919349100121_public.xml) |
| 2024 | 990PF | x2 | THE PERSHING SQUARE FOUNDATION | THIRD AVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349101636_public.xml) |
| 2012 | 990PF | x1 | THE TOM & ELENA MATLACK CHARITABLE FOUN… | PLACE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312259349100321_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX51_TRANSF_FR_CE_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
