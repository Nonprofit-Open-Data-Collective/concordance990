# PF_AX52_TRANSF_TO_CE_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX52_TRANSF_TO_CE_NAME_ORG_L1

BusinessNameLine1

- Description: Name - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

1.8k

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
| ⓘ info | No sign of truncation | TransfersToControlledEntities/TransfersToControlledEntGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransfersToControlledEntities/ToControlledEntity/Name/BusinessNameLine1` | PF | 2009–2012 | 178 | 0.19% | 28.1% |
| x2 | `TransfersToControlledEntities/TransfersToControlledEntGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 78 | 0.17% | 24.4% |
| x3 | `TransfersToControlledEntities/TransfersToControlledEntGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 1,582 | 0.158% | 30.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 38 | 55 | 76 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 78 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 97 | 79 | 73 | 90 | 94 | 134 | 212 | 202 | 209 | 211 | 181 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,838   | 26             | 75      |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `COMMONWEALTH FOUNDATIONS` | 28      | 11.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE SKOLL FOUNDATION | CHSO SFP LP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349107604_public.xml) |
| 2013 | 990PF | x2 | OPEN SOCIETY INSTITUTE | OPEN SOCIETY INSTITUTE MGMT SERVICESLTD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349101912_public.xml) |
| 2012 | 990PF | x1 | STUDENT AGENCIES FOUNDATION INC | STUDENT AGENCIES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349100188_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX52_TRANSF_TO_CE_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
