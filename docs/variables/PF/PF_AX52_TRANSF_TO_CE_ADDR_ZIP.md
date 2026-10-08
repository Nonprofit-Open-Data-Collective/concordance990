# PF_AX52_TRANSF_TO_CE_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX52_TRANSF_TO_CE_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

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

1.9k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values have the ZIP format | 92.3% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 1 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersToControlledEntities/ToControlledEntity/AddressUS/ZIPCode` | PF | 2009–2012 | 167 | 0.173% | 24.0% |
| x2 | `TransfersToControlledEntities/ToControlledEntity/AddressForeign/PostalCode` | PF | 2010–2012 | 19 | 0.02% | 21.1% |
| x3 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/ZIPCode` | PF | 2013–2013 | 66 | 0.144% | 25.8% |
| x4 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/PostalCode` | PF | 2013–2013 | 7 | 0.0153% |  |
| x5 | `TransfersToControlledEntities/TransfersToControlledEntGrp/USAddress/ZIPCd` | PF | 2014–2024 | 1,424 | 0.138% | 29.1% |
| x6 | `TransfersToControlledEntities/TransfersToControlledEntGrp/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 186 | 0.0192% | 29.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 37 | 52 | 69 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 5 | 6 | 8 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 66 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 7 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 89 | 69 | 69 | 84 | 83 | 119 | 195 | 179 | 190 | 189 | 158 |
| x6 |  |  |  |  |  | 7 | 8 | 10 | 12 | 15 | 17 | 24 | 28 | 21 | 22 | 22 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 1,588   | 86.3% |
| `999999999` | 110     | 6.0%  |
| `AA9-9999`  | 59      | 3.2%  |
| `9999`      | 27      | 1.5%  |
| `AA9 9AA`   | 15      | 0.8%  |
| `AA9A 9AA`  | 9       | 0.5%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | WK KELLOGG FOUNDATION TRUST - NO 5315 | L2520 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611919349100121_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | 39870 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | FOUNDATION 14 | KY1-1108 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433049349100403_public.xml) |
| 2013 | 990PF | x3 | OPEN SOCIETY INSTITUTE | 10019 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349101912_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | JE48PW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | The David and Lucile Packard Foundation | 950390628 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX52_TRANSF_TO_CE_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
