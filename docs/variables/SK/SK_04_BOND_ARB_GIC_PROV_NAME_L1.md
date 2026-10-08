# SK_04_BOND_ARB_GIC_PROV_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_GIC_PROV_NAME_L1

GIC provider name line 1

- Description: Name Of GICProvider - BusinessNameLine1

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-05B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

13k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values are text, not numbers | 76% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleK/TaxExemptBondsArbitrageGrp/GICProviderName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/NameOfGICProvider/BusinessNameLine1` | SZ | 2009–2012 | 3,422 | 0.701% | 42.8% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/GICProviderName/BusinessNameLine1` | SZ | 2013–2013 | 1,251 | 0.629% | 45.6% |
| x3 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/GICProviderName/BusinessNameLine1Txt` | SZ | 2014–2024 | 8,750 | 0.0487% | 48.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 308 | 542 | 1.3k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.3k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.2k | 1.1k | 1.0k | 1.0k | 951 | 878 | 716 | 673 | 636 | 368 | 135 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 13,423  | 3              | 75      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 9,448   | 84.0% |
| (blank) | 681     | 6.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LUTHERAN HOMES OF SOUTH CAROLINA INC | WELLS FARGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600489349301670_public.xml) |
| 2013 | 990 | x2 | FSU Financial Assistance Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511339349304821_public.xml) |
| 2012 | 990 | x1 | BAPTIST MEMORIALS MINISTRIES | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349304205_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_GIC_PROV_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
