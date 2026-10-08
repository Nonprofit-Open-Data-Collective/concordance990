# PF_AX51_TRANSF_FR_CE_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX51_TRANSF_FR_CE_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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

6 / 8

xpaths observed / mapped

1.6k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine1: longest value is exactly 35 characters; TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersFrmControlledEntities/FromControlledEntity/AddressUS/AddressLine1` | PF | 2009–2012 | 132 | 0.123% | 28.8% |
| x2 | `TransfersFrmControlledEntities/FromControlledEntity/AddressForeign/AddressLine1` | PF | 2010–2012 | 8 | 0.00751% | 37.5% |
| x3 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine1` | PF | 2013–2013 | 51 | 0.111% | 23.5% |
| x4 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 5 | 0.0109% | 40.0% |
| x5 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 1,260 | 0.141% | 26.4% |
| x6 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 163 | 0.0253% | 31.9% |
| x7 | `TransfersFrmControlledEntities/FromControlledEntity/ForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |
| x8 | `TransfersFrmControlledEntities/FromControlledEntity/USAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14 | 30 | 39 | 49 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 3 | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 51 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 5 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 67 | 60 | 69 | 69 | 71 | 96 | 145 | 158 | 174 | 189 | 162 |
| x6 |  |  |  |  |  | 9 | 7 | 5 | 7 | 12 | 13 | 18 | 21 | 17 | 25 | 29 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,619   | 24             | 35      |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `800 E CANAL ST STE 1900` | 45      | 10.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | The David and Lucile Packard Foundation | PO BOX 309 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533209349100148_public.xml) |
| 2024 | 990PF | x5 | SMITH RICHARDSON FOUNDATION INC | 701 GREEN VALLEY ROAD SUITE 306 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349100814_public.xml) |
| 2013 | 990PF | x4 | John D and Catherine T MacArthur | Grandville House 132 Sloane Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423149349100222_public.xml) |
| 2013 | 990PF | x3 | The Blin Foundation Inc | 2300 Swan Lake Blvd Suite 303 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441329349101769_public.xml) |
| 2012 | 990PF | x2 | The Robert Wood Johnson Foundation | 1 ROYAL PLAZA ROYAL AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323129349100222_public.xml) |
| 2012 | 990PF | x1 | STUDENT AGENCIES FOUNDATION INC | 409 COLLEGE AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349100188_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX51_TRANSF_FR_CE_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
