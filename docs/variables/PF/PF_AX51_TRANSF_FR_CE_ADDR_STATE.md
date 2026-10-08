# PF_AX51_TRANSF_FR_CE_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX51_TRANSF_FR_CE_ADDR_STATE

Province or state

- Description: Province or state

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

1.5k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 42 distinct values per xpath and year |
| ▲ warn | Codes share one format | 94% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersFrmControlledEntities/FromControlledEntity/AddressUS/State` | PF | 2009–2012 | 132 | 0.123% | 28.8% |
| x2 | `TransfersFrmControlledEntities/FromControlledEntity/AddressForeign/ProvinceOrState` | PF | 2010–2012 | 7 | 0.00751% | 42.9% |
| x3 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/State` | PF | 2013–2013 | 51 | 0.111% | 23.5% |
| x4 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/ProvinceOrState` | PF | 2013–2013 | 4 | 0.00872% | 50.0% |
| x5 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 1,260 | 0.141% | 26.4% |
| x6 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 86 | 0.0148% | 27.9% |
| x7 | `TransfersFrmControlledEntities/FromControlledEntity/ForeignAddress/ProvinceOrState` | PF | not observed | 0 |  |  |
| x8 | `TransfersFrmControlledEntities/FromControlledEntity/USAddress/State` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14 | 30 | 39 | 49 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 51 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 4 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 67 | 60 | 69 | 69 | 71 | 96 | 145 | 158 | 174 | 189 | 162 |
| x6 |  |  |  |  |  | 7 | 6 | 4 | 5 | 6 | 7 | 6 | 8 | 8 | 12 | 17 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 237     | 19.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | WK KELLOGG FOUNDATION TRUST - NO 5315 | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611919349100121_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | GA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | John D and Catherine T MacArthur | England | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423149349100222_public.xml) |
| 2013 | 990PF | x3 | Interactivity Foundation | WV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402259349100780_public.xml) |
| 2012 | 990PF | x2 | Gordon E & Betty I Moore Foundation | RJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343229349100109_public.xml) |
| 2012 | 990PF | x1 | THE SELIGMAN FAMILY FOUNDATION | MI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331309349100218_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX51_TRANSF_FR_CE_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
