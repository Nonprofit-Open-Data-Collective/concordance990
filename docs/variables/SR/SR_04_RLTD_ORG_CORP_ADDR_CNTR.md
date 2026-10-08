# SR_04_RLTD_ORG_CORP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_CNTR

Related organization country

- Description: Foreign Address - Country

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

3 / 3

xpaths observed / mapped

36k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 165 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/Country` | SZ | 2009–2012 | 5,513 | 1.04% | 31.8% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/Country` | SZ | 2013–2013 | 2,008 | 1.01% | 37.0% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/CountryCd` | SZ | 2014–2024 | 28,439 | 0.523% | 38.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 592 | 1.4k | 1.7k | 1.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2.1k | 2.2k | 2.3k | 2.4k | 2.7k | 2.9k | 3.0k | 3.1k | 3.1k | 3.1k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CJ`  | 23,924  | 51.9% |
| `BD`  | 8,002   | 17.4% |
| `UK`  | 4,066   | 8.8%  |
| `CH`  | 2,838   | 6.2%  |
| `IN`  | 1,891   | 4.1%  |
| `CA`  | 1,379   | 3.0%  |
| `SN`  | 937     | 2.0%  |
| `EI`  | 588     | 1.3%  |
| `MX`  | 580     | 1.3%  |
| `MP`  | 549     | 1.2%  |
| `GM`  | 344     | 0.7%  |
| `AS`  | 258     | 0.6%  |
| `IT`  | 240     | 0.5%  |
| `HK`  | 141     | 0.3%  |
| `FR`  | 97      | 0.2%  |
| `SF`  | 97      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | AVMED INC | CJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533099349303308_public.xml) |
| 2013 | 990 | x2 | PIEDMONT HEALTHCARE FOUNDATION INC | CJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501359349303905_public.xml) |
| 2012 | 990 | x1 | Essentia Health Foundation | CJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
