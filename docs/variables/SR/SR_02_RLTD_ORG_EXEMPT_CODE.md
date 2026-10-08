# SR_02_RLTD_ORG_EXEMPT_CODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_EXEMPT_CODE

Exempt code section

- Description: Exempt code section

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

809k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Small code list | up to 1464 distinct values per xpath and year |
| ▲ warn | Codes share one format | 75% have the shape 999(A)(9) |
| ▲ warn | Consistent letter case | 17.1% of values are lower case |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/ExemptCodeSection` | SZ | 2009–2012 | 128,713 | 24% | 52.1% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ExemptCodeSectionTxt` | SZ | 2013–2024 | 680,750 | 15.9% | 48.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 33k | 40k | 43k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 46k | 50k | 52k | 54k | 57k | 58k | 59k | 64k | 65k | 66k | 66k | 44k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 39 | 27 | 25 | 24 | 23 | 23 | 22 | 22 | 22 | 21 | 21 | 20 | 19 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value       | Filings | Share |
|-------------|---------|-------|
| `501(C)(3)` | 373,394 | 51.3% |
| `501(c)(3)` | 116,779 | 16.1% |
| `501C3`     | 64,319  | 8.8%  |
| `527`       | 28,897  | 4.0%  |
| `501(C)(4)` | 28,595  | 3.9%  |
| `501(C)(6)` | 28,506  | 3.9%  |
| `501(C)(2)` | 27,655  | 3.8%  |
| `501(C)(5)` | 22,490  | 3.1%  |
| `501(C)(9)` | 14,796  | 2.0%  |
| `501(C)3`   | 13,025  | 1.8%  |
| `501c3`     | 4,081   | 0.6%  |
| `501`       | 1,570   | 0.2%  |
| `501(c)(4)` | 1,295   | 0.2%  |
| `501(c)(3`  | 1,073   | 0.1%  |
| `501(c)(2)` | 458     | 0.1%  |
| `501(c)3`   | 364     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | 501 (3) (c) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 501 (C) (3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_EXEMPT_CODE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
