# SR_06_UNRLTD_ORG_PTR_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_NAME_L1

Unrelated organization name line 1

- Description: Name Of Business - BusinessNameLine1

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

2.5k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/NameOfBusiness/BusinessNameLine1` | SZ | 2009–2012 | 426 | 0.0774% | 23.5% |
| x2 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 153 | 0.0769% | 26.1% |
| x3 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 1,967 | 0.0408% | 22.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 49 | 119 | 119 | 139 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 153 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 155 | 165 | 170 | 191 | 188 | 201 | 219 | 201 | 190 | 174 | 113 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,546   | 25             | 74      |

### Most common values

| Value                           | Filings | Share |
|---------------------------------|---------|-------|
| `STERLING INVESTMENT GROUP LLC` | 41      | 9.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | NATIONAL INVESTMENT CENTER FOR SENIORS | NIC MAP VISION LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349303708_public.xml) |
| 2013 | 990 | x2 | JAMAICA PLAIN NEIGHBORHOOD DEVELOPMENT … | BREWERY MAIN BLOCK LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433079349301568_public.xml) |
| 2012 | 990 | x1 | MERCY MEDICAL CENTER INC | ARCHITRAVE HEALTH LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349302296_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
