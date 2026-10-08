# SR_03_RLTD_ORG_PTR_DMCL_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_DMCL_STATE

Legal domicile (state)

- Description: Legal domicile - State

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

145k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 59 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/LegalDomicileState` | SZ | 2009–2012 | 23,621 | 4.33% | 65.1% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/LegalDomicileStateCd` | SZ | 2013–2024 | 121,012 | 2.48% | 66.7% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartIII/LegalDomicile/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.3k | 7.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.3k | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 26,574  | 14.1% |
| `NY`  | 21,898  | 11.6% |
| `DE`  | 21,540  | 11.4% |
| `TX`  | 20,628  | 10.9% |
| `OH`  | 17,771  | 9.4%  |
| `IL`  | 15,518  | 8.2%  |
| `FL`  | 14,403  | 7.6%  |
| `MI`  | 14,348  | 7.6%  |
| `PA`  | 12,590  | 6.7%  |
| `MA`  | 7,783   | 4.1%  |
| `NJ`  | 6,707   | 3.6%  |
| `WA`  | 3,053   | 1.6%  |
| `MD`  | 2,488   | 1.3%  |
| `CO`  | 1,799   | 1.0%  |
| `WI`  | 1,051   | 0.6%  |
| `ID`  | 200     | 0.1%  |
| `IA`  | 194     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NEIGHBORHOOD DEVELOPMENT CENTER INC | MN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532339349300338_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | FL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_DMCL_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
