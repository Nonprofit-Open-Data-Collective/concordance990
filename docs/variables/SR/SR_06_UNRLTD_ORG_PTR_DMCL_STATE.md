# SR_06_UNRLTD_ORG_PTR_DMCL_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_DMCL_STATE

Legal domicile (state)

- Description: Legal domicile - State

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

2.5k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 50 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/LegalDomicileState` | SZ | 2009–2012 | 416 | 0.0768% | 23.1% |
| x2 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/LegalDomicileStateCd` | SZ | 2013–2024 | 2,072 | 0.0393% | 23.2% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartVI/LegalDomicile/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47 | 115 | 116 | 138 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 152 | 153 | 157 | 165 | 186 | 184 | 198 | 216 | 197 | 185 | 170 | 109 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `TX`  | 375     | 23.2% |
| `DE`  | 233     | 14.4% |
| `NY`  | 143     | 8.9%  |
| `CA`  | 116     | 7.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | TAX CREDIT BENEVOLENT ASSOCIATION | KS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349305984_public.xml) |
| 2012 | 990 | x1 | MEMPHIS CONVENTION AND VISITORS BUREAU | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430509349300403_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_DMCL_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
