# SR_04_RLTD_ORG_CORP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_L1

Related organization street address line 1

- Description: Address Foreign - AddressLine1

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

273k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/AddressLine1` | SZ | 2009–2012 | 40,944 | 7.46% | 51.8% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/AddressLine1` | SZ | 2009–2012 | 5,513 | 1.04% | 31.8% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 14,114 | 7.1% | 50.3% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 2,008 | 1.01% | 37.0% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 182,343 | 4.19% | 51.0% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 28,439 | 0.523% | 38.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 11k | 13k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 592 | 1.4k | 1.7k | 1.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 14k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2.0k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 15k | 16k | 17k | 17k | 17k | 18k | 19k | 19k | 18k | 12k |
| x6 |  |  |  |  |  | 2.1k | 2.2k | 2.3k | 2.4k | 2.7k | 2.9k | 3.0k | 3.1k | 3.1k | 3.1k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 273,361 | 20             | 35      |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `PO BOX 1159`              | 2,467   | 4.8%  |
| `PO BOX 10073 APO`         | 1,660   | 3.2%  |
| `PO BOX 1085`              | 1,561   | 3.1%  |
| `1 SHIRCLIFF WAY`          | 1,485   | 2.9%  |
| `10101 SOUTH 27TH STREET`  | 1,485   | 2.9%  |
| `PO BOX 1051 GRAND CAYMAN` | 1,342   | 2.6%  |
| `100 NORTH RIVER ROAD`     | 1,275   | 2.5%  |
| `FOUNTAIN HOUSE`           | 1,261   | 2.5%  |
| `PO BOX 1159 GRAND CAYMAN` | 1,163   | 2.3%  |
| `PO BOX 1051`              | 1,085   | 2.1%  |
| `2601 NAVISTAR DRIVE`      | 1,040   | 2.0%  |
| `200 HEMLOCK ROAD`         | 1,004   | 2.0%  |
| `1330 BLAKELY CIRCLE SW`   | 962     | 1.9%  |
| `300 OVERSTREET WAY`       | 962     | 1.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AVMED INC | PO BOX 1051 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533099349303308_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | 1 FARMINGDALE ROAD-ROUTE 109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | KENNESTONE HOSPITAL INC | 3rd Fl Barclays House Shedden Rd | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521359349302422_public.xml) |
| 2013 | 990 | x3 | NCS Community Development Corp | 275 Driving Park Ave | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x2 | Mercy Health System of Southeastern Pen… | 11 Victoria Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | 1101 E 33RD STREET E100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
