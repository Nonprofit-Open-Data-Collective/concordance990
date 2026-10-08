# SR_06_UNRLTD_ORG_PTR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_ADDR_ZIP

Unrelated organization zip

- Description: Foreign Address - Postal code

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

2.5k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.1% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/AddressUS/ZIPCode` | SZ | 2009–2012 | 418 | 0.0768% | 23.2% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartVI/AddressForeign/PostalCode` | SZ | 2011–2012 | 2 | 0.000557% |  |
| x3 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 153 | 0.0769% | 25.5% |
| x4 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 1 | 0.000503% |  |
| x5 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 1,926 | 0.0397% | 22.8% |
| x6 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 16 | 0.000721% | 25.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47 | 115 | 118 | 138 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 153 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 154 | 161 | 168 | 188 | 184 | 198 | 214 | 196 | 183 | 170 | 110 |
| x6 |  |  |  |  |  | 1 | 1 | 1 | 1 | 3 | 2 | 2 | 2 | 1 |  | 2 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share |
|--------------|---------|-------|
| `99999`      | 2,409   | 94.5% |
| `999999999`  | 117     | 4.6%  |
| `99`         | 9       | 0.4%  |
| `AA AA9-999` | 4       | 0.2%  |
| `A9A9A9`     | 4       | 0.2%  |
| `AA99AA`     | 4       | 0.2%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | MARGOT AND TOM PRITZKER FOUNDATION | KY1-9001 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316036_public.xml) |
| 2024 | 990 | x5 | TAX CREDIT BENEVOLENT ASSOCIATION | 66002 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349305984_public.xml) |
| 2013 | 990 | x4 | VAN OTTERLOO FAMILY FOUNDATION | CJ KY1-900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201502269349303270_public.xml) |
| 2013 | 990 | x3 | AMERICAN GAMING ASSOCIATION | 89118 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443189349305819_public.xml) |
| 2012 | 990 | x2 | VAN OTTERLOO FAMILY FOUNDATION | CJ KY1-900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422279349303217_public.xml) |
| 2012 | 990 | x1 | MERCY MEDICAL CENTER INC | 87471 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349302296_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
