# SR_04_RLTD_ORG_CORP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_STATE

Related organization state

- Description: Province or state

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

255k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 407 distinct values per xpath and year |
| ▲ warn | Codes share one format | 94% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/State` | SZ | 2009–2012 | 40,944 | 7.46% | 51.8% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 3,258 | 0.641% | 24.2% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/State` | SZ | 2013–2013 | 14,114 | 7.1% | 50.3% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 1,169 | 0.588% | 23.0% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 182,343 | 4.19% | 51.0% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 12,817 | 0.211% | 47.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 11k | 13k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 269 | 851 | 986 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 14k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.2k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 15k | 16k | 17k | 17k | 17k | 18k | 19k | 19k | 18k | 12k |
| x6 |  |  |  |  |  | 950 | 994 | 1.0k | 1.1k | 1.4k | 1.3k | 1.4k | 1.4k | 1.3k | 1.3k | 585 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value          | Filings | Share |
|----------------|---------|-------|
| `NY`           | 34,035  | 15.9% |
| `CA`           | 25,808  | 12.1% |
| `PA`           | 21,750  | 10.2% |
| `OH`           | 20,277  | 9.5%  |
| `TX`           | 18,875  | 8.8%  |
| `MI`           | 16,275  | 7.6%  |
| `IL`           | 15,738  | 7.4%  |
| `FL`           | 14,040  | 6.6%  |
| `MD`           | 11,649  | 5.5%  |
| `MA`           | 7,352   | 3.4%  |
| `GRAND CAYMAN` | 5,998   | 2.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | CONCUSSION LEGACY FOUNDATION INC | WALES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349301693_public.xml) |
| 2024 | 990 | x5 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2013 | 990 | x4 | KENNESTONE HOSPITAL INC | Grand Cayman | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521359349302422_public.xml) |
| 2013 | 990 | x3 | NCS Community Development Corp | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x2 | Essentia Health Foundation | Cayman Islands | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
