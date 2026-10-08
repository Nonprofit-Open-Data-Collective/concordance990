# SR_02_RLTD_ORG_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_NAME_L2

Related organization name line 2

- Description: Name Of Disregarded Entity - BusinessNameLine2

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

21k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/NameOfDisregardedEntity/BusinessNameLine2` | SZ | 2009–2012 | 2,666 | 0.578% | 28.3% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine2` | SZ | 2013–2013 | 991 | 0.498% | 28.4% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine2Txt` | SZ | 2014–2024 | 17,647 | 0.415% | 25.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 257 | 590 | 781 | 1.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 991 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.5k | 1.8k | 1.8k | 1.9k | 1.9k | 2.0k | 2.0k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 21,304  | 18             | 64      |

### Most common values

| Value                               | Filings | Share |
|-------------------------------------|---------|-------|
| `RUST`                              | 1,478   | 21.8% |
| `INC`                               | 606     | 8.9%  |
| `FOUNDATION`                        | 556     | 8.2%  |
| `FOUNDATION INC`                    | 472     | 7.0%  |
| `(dba Basilica Place)`              | 415     | 6.1%  |
| `(dba Starner Hill)`                | 301     | 4.4%  |
| `(dba St Elizabeth's Nursing Home)` | 295     | 4.4%  |
| `)`                                 | 266     | 3.9%  |
| `ENTER FOUNDATION`                  | 266     | 3.9%  |
| `ASSOCIATION`                       | 212     | 3.1%  |
| `APARTMENTS INC`                    | 193     | 2.8%  |
| `HOUSING CORPORATION`               | 147     | 2.2%  |
| `OF LAFAYETTE LA`                   | 133     | 2.0%  |
| `R LAND HOSPITAL`                   | 114     | 1.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | HARDWOOD MANUFACTURERS ASSN | ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503079349302065_public.xml) |
| 2013 | 990 | x2 | DILLON COMPLEX FOR INDEPENDENT | ST JOSEPH MINISTRIES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442119349301204_public.xml) |
| 2012 | 990 | x1 | KING HIGHLAND COMMUNITY | REDEVELOPMENT CORPORATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349305489_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
