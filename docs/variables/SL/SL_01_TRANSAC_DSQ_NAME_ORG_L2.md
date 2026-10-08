# SL_01_TRANSAC_DSQ_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_01_TRANSAC_DSQ_NAME_ORG_L2

Disqualified organization name line 2

- Description: Name Business - BusinessNameLine2

- Table:

  [`SL-P01-T01-EXCESS-BENEFIT-TRANSAC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p01-t01-excess-benefit-transac)
  (many)

- Part: Part I - Excess Benefit Transactions

- Location:

  `SCHED-L-PART-01-LINE-01-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

40

filings with a value

2010–2022

tax years observed

1 + 2 reviewed

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
| x1 | `IRS990ScheduleL/DQPTable/NameBusiness/BusinessNameLine2` | SZ | 2010–2012 | 37 | 0.000731% | 24.3% |
| x2 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2018–2022 | 3 | 0.00018% |  |
| x3 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/BusinessName/BusinessNameLine2` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleL/Form990ScheduleLPartI/DQPTable/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 34 | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  |  |  |  |  | 1 |  |  | 1 | 1 |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 |  |  |  |  |  | \<1 |  |  | \<1 | \<1 |  |  |
| 990-EZ |  |  |  | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 39      | 18             | 35      |
| 990-EZ | 1       | 51             | 51      |

### Most common values

| Value                          | Filings | Share |
|--------------------------------|---------|-------|
| `FINGER LAKES NY CHAPTER NECA` | 2       | 11.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2022 | 990 | x2 | WONDERBAG ORG | Wonderbag UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202330489349301673_public.xml) |
| 2012 | 990EZ | x1 | CARE COUNSELORS INCORPORATED | dba Center for Academic and Relationship Enrichment | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349204067_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_01_TRANSAC_DSQ_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
