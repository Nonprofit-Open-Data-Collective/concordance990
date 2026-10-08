# PF_AX51_TRANSF_FR_CE_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX51_TRANSF_FR_CE_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

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
| ▲ warn | Values have the ZIP format | 92.4% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersFrmControlledEntities/FromControlledEntity/AddressUS/ZIPCode` | PF | 2009–2012 | 132 | 0.123% | 28.8% |
| x2 | `TransfersFrmControlledEntities/FromControlledEntity/AddressForeign/PostalCode` | PF | 2010–2012 | 8 | 0.00751% |  |
| x3 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/ZIPCode` | PF | 2013–2013 | 51 | 0.111% | 23.5% |
| x4 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/PostalCode` | PF | 2013–2013 | 5 | 0.0109% |  |
| x5 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/USAddress/ZIPCd` | PF | 2014–2024 | 1,260 | 0.141% | 26.4% |
| x6 | `TransfersFrmControlledEntities/TransfersFromControlledEntGrp/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 124 | 0.0174% | 27.4% |
| x7 | `TransfersFrmControlledEntities/FromControlledEntity/ForeignAddress/PostalCode` | PF | not observed | 0 |  |  |
| x8 | `TransfersFrmControlledEntities/FromControlledEntity/USAddress/ZIPCode` | PF | not observed | 0 |  |  |

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
| x6 |  |  |  |  |  | 6 | 4 | 5 | 5 | 10 | 10 | 17 | 18 | 12 | 17 | 20 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 1,386   | 87.2% |
| `999999999` | 82      | 5.2%  |
| `AA9-9999`  | 46      | 2.9%  |
| `AA99999`   | 16      | 1.0%  |
| `AA99AA`    | 9       | 0.6%  |
| `AA9 9AA`   | 8       | 0.5%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | The David and Lucile Packard Foundation | KY11104 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533209349100148_public.xml) |
| 2024 | 990PF | x5 | SMITH RICHARDSON FOUNDATION INC | 27408 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543199349100814_public.xml) |
| 2013 | 990PF | x4 | Gordon E & Betty I Moore Foundation | 22440 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423249349100202_public.xml) |
| 2013 | 990PF | x3 | THE JOHN BERTRAM HOUSE INC | 01907 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433019349100203_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | JE48PW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | STUDENT AGENCIES FOUNDATION INC | 14850 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349100188_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX51_TRANSF_FR_CE_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
