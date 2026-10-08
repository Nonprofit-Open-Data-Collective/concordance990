# SR_02_RLTD_ORG_DMCL_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_DMCL_STATE

Legal domicile (state)

- Description: Legal domicile - State

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

827k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 66 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/LegalDomicileState` | SZ | 2009–2012 | 131,959 | 24.7% | 51.4% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/LegalDomicileStateCd` | SZ | 2013–2024 | 695,300 | 16.1% | 48.0% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartII/LegalDomicile/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 33k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 48k | 51k | 53k | 55k | 59k | 59k | 61k | 65k | 66k | 67k | 67k | 45k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 26 | 25 | 24 | 23 | 23 | 23 | 22 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 95,604  | 16.7% |
| `CA`  | 87,960  | 15.3% |
| `PA`  | 66,401  | 11.6% |
| `IL`  | 56,345  | 9.8%  |
| `TX`  | 55,475  | 9.7%  |
| `FL`  | 52,888  | 9.2%  |
| `OH`  | 49,503  | 8.6%  |
| `MA`  | 38,168  | 6.7%  |
| `MO`  | 28,070  | 4.9%  |
| `MI`  | 16,995  | 3.0%  |
| `DC`  | 16,127  | 2.8%  |
| `GA`  | 7,321   | 1.3%  |
| `NJ`  | 2,256   | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_DMCL_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
