# PF_AX52_TRANSF_TO_CE_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX52_TRANSF_TO_CE_ADDR_L1

AddressLine1

- Description: Address Foreign - AddressLine1

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

2.0k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | TransfersToControlledEntities/ToControlledEntity/AddressForeign/AddressLine1: longest value is exactly 35 characters; TransfersToControlledEntities/ToControlledEntity/AddressUS/AddressLine1: longest value is exactly 35 characters; TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine1: longest value is exactly 35 characters; TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersToControlledEntities/ToControlledEntity/AddressUS/AddressLine1` | PF | 2009–2012 | 167 | 0.173% | 24.0% |
| x2 | `TransfersToControlledEntities/ToControlledEntity/AddressForeign/AddressLine1` | PF | 2010–2012 | 26 | 0.0326% | 30.8% |
| x3 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine1` | PF | 2013–2013 | 66 | 0.144% | 25.8% |
| x4 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 16 | 0.0349% | 6.2% |
| x5 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 1,424 | 0.138% | 29.1% |
| x6 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 263 | 0.0305% | 28.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 37 | 52 | 69 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 5 | 8 | 13 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 66 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 16 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 89 | 69 | 69 | 84 | 83 | 119 | 195 | 179 | 190 | 189 | 158 |
| x6 |  |  |  |  |  | 12 | 15 | 14 | 16 | 18 | 21 | 31 | 37 | 32 | 32 | 35 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,962   | 23             | 35      |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `800 E CANAL ST STE 1900` | 32      | 7.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | Global Action to End Smoking Inc | PO BOX 31009 AREA 11 PLOT 49 B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541359349102034_public.xml) |
| 2024 | 990PF | x5 | The David and Lucile Packard Foundation | One Fawcett Place | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533209349100148_public.xml) |
| 2013 | 990PF | x4 | OPEN SOCIETY INSTITUTE | 27 GREGORY AFXENTIOU AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349101912_public.xml) |
| 2013 | 990PF | x3 | The Blin Foundation Inc | 2300 Swan Lake Blvd Suite 303 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441329349101769_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | Ordnance House 31 Pier Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | The David and Lucile Packard Foundation | 7700 Sandholt Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX52_TRANSF_TO_CE_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
