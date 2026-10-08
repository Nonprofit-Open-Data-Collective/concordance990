# SR_04_RLTD_ORG_CORP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_ZIP

Related organization zip

- Description: Foreign Address - Postal code

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

256k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values have the ZIP format | 94.1% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/ZIPCode` | SZ | 2009–2012 | 40,944 | 7.46% | 51.8% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/PostalCode` | SZ | 2009–2012 | 2,810 | 0.564% | 26.7% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 14,114 | 7.1% | 50.3% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 1,028 | 0.517% | 29.8% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 182,343 | 4.19% | 51.0% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 15,155 | 0.344% | 43.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 11k | 13k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 261 | 687 | 849 | 1.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 14k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 15k | 16k | 17k | 17k | 17k | 18k | 19k | 19k | 18k | 12k |
| x6 |  |  |  |  |  | 960 | 1.0k | 1.1k | 1.2k | 1.6k | 1.5k | 1.6k | 1.7k | 1.8k | 1.8k | 954 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 229,763 | 86.2% |
| `999999999` | 21,043  | 7.9%  |
| `AA9-9999`  | 7,050   | 2.6%  |
| `AA99999`   | 3,590   | 1.3%  |
| `999999`    | 2,527   | 0.9%  |
| `AA9A9AA`   | 1,515   | 0.6%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AVMED INC | KY1-1102 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533099349303308_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | 11704 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | PIEDMONT HEALTHCARE FOUNDATION INC | KY 1-1102 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501359349303905_public.xml) |
| 2013 | 990 | x3 | NCS Community Development Corp | 14613 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x2 | Mercy Health System of Southeastern Pen… | KY1-1102 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | 21218 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
