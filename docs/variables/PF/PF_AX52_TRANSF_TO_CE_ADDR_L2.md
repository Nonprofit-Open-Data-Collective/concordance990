# PF_AX52_TRANSF_TO_CE_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX52_TRANSF_TO_CE_ADDR_L2

AddressLine2

- Description: Address Foreign - AddressLine2

- Table:

  [`PF-P99-T52-TRANSFER-TO-CE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t52-transfer-to-ce)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-52`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

152

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 13% of values are numeric |
| ⓘ info | No sign of truncation | TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersToControlledEntities/ToControlledEntity/AddressUS/AddressLine2` | PF | 2010–2012 | 5 | 0.00501% |  |
| x2 | `TransfersToControlledEntities/ToControlledEntity/AddressForeign/AddressLine2` | PF | 2011–2012 | 3 | 0.00501% | 33.3% |
| x3 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine2` | PF | 2013–2013 | 2 | 0.00436% |  |
| x4 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine2` | PF | 2013–2013 | 2 | 0.00436% |  |
| x5 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 66 | 0.00784% | 15.2% |
| x6 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine2Txt` | PF | 2016–2024 | 74 | 0.0122% | 28.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2 | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 2 | 2 | 3 | 3 | 4 | 4 | 7 | 14 | 9 | 9 | 9 |
| x6 |  |  |  |  |  |  |  | 1 | 1 | 1 | 6 | 12 | 16 | 14 | 9 | 14 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 152     | 13             | 35      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `FIFTH AVENUE` | 7       | 5.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | UNBOUND PHILANTHROPY | CAYMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513089349101376_public.xml) |
| 2024 | 990PF | x6 | BARNETT AND ANNALEE NEWMAN FOUNDATION | 57TH ST 8TH FL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522109349100312_public.xml) |
| 2013 | 990PF | x3 | BILL & MELINDA GATES FOUNDATION | MBUYA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403109349100040_public.xml) |
| 2013 | 990PF | x4 | THE ROCKEFELLER FOUNDATION | FIFTH AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443179349101304_public.xml) |
| 2012 | 990PF | x2 | AMERICAN LEADERSHIP ACADEMY INC | COL CABO REA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332269349100528_public.xml) |
| 2012 | 990PF | x1 | John D and Catherine T MacArthur | Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313129349100701_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX52_TRANSF_TO_CE_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
