# PF_AX52_TRANSF_TO_CE_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX52_TRANSF_TO_CE_NAME_ORG_L2

Controlled entity (transfers to) - business name line 2

- Description: Name - BusinessNameLine2

- Table:

  [`PF-P99-T52-TRANSFER-TO-CE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t52-transfer-to-ce)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-52`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

1 / 3

xpaths observed / mapped

4

filings with a value

2016–2022

tax years observed

1 + 1 reviewed

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
| x1 | `TransfersToControlledEntities/TransfersToControlledEntGrp/BusinessName/BusinessNameLine2Txt` | PF | 2016–2022 | 4 | 0.000814% |  |
| x2 | `TransfersToControlledEntities/ToControlledEntity/Name/BusinessNameLine2` | PF | not observed | 0 |  |  |
| x3 | `TransfersToControlledEntities/TransfersToControlledEntGrp/BusinessName/BusinessNameLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  | 1 |  |  |  | 1 | 1 | 1 |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  | \<1 |  |  |  | \<1 | \<1 | \<1 |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 4       | 28             | 34      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `VASAGEL DEVELOPMENT CORPORATION` | 1       | 25.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2022 | 990PF | x1 | GRAIN PLACE FOUNDATION | NOT EXCESS BUS HOLDG IS FUNCT RELA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202331309349103003_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX52_TRANSF_TO_CE_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
