# SR_04_RLTD_ORG_CORP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_CITY

Related organization city

- Description: Foreign Address - City

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

269k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/City: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/City: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/City` | SZ | 2009–2012 | 40,944 | 7.46% | 51.8% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/City` | SZ | 2009–2012 | 4,631 | 0.861% | 34.9% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/City` | SZ | 2013–2013 | 14,114 | 7.1% | 50.3% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/City` | SZ | 2013–2013 | 1,682 | 0.846% | 42.6% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/CityNm` | SZ | 2014–2024 | 182,343 | 4.19% | 51.0% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/CityNm` | SZ | 2014–2024 | 24,810 | 0.471% | 41.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 11k | 13k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 523 | 1.2k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 14k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.7k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 15k | 15k | 16k | 17k | 17k | 17k | 18k | 19k | 19k | 18k | 12k |
| x6 |  |  |  |  |  | 1.9k | 2.0k | 2.0k | 2.1k | 2.4k | 2.5k | 2.7k | 2.6k | 2.7k | 2.7k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 268,524 | 9              | 43      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `GRAND CAYMAN` | 11,398  | 12.9% |
| `NEW YORK`     | 10,478  | 11.9% |
| `COLUMBUS`     | 7,094   | 8.0%  |
| `ST LOUIS`     | 5,727   | 6.5%  |
| `CHICAGO`      | 4,178   | 4.7%  |
| `PITTSBURGH`   | 3,939   | 4.5%  |
| `HAMILTON`     | 3,796   | 4.3%  |
| `ATLANTA`      | 3,150   | 3.6%  |
| `Grand Cayman` | 3,099   | 3.5%  |
| `WARREN`       | 3,090   | 3.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AVMED INC | GRAND CAYMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533099349303308_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | CLEVELAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | PIEDMONT HEALTHCARE FOUNDATION INC | GRAND CAYMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501359349303905_public.xml) |
| 2013 | 990 | x3 | NCS Community Development Corp | Rochester | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x2 | Essentia Health Foundation | Grand Cayman | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | BALTIMORE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
