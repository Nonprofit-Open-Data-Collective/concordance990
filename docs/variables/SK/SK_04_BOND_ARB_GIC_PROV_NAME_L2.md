# SK_04_BOND_ARB_GIC_PROV_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_GIC_PROV_NAME_L2

GIC provider name line 2

- Description: Name Of GICProvider - BusinessNameLine2

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

865

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/NameOfGICProvider/BusinessNameLine2` | SZ | 2009–2012 | 342 | 0.0473% | 15.8% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/GICProviderName/BusinessNameLine2` | SZ | 2013–2013 | 76 | 0.0382% | 17.1% |
| x3 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/GICProviderName/BusinessNameLine2Txt` | SZ | 2014–2024 | 447 | 0.00865% | 17.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 54 | 103 | 100 | 85 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 76 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 65 | 54 | 51 | 46 | 31 | 32 | 32 | 38 | 37 | 37 | 24 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 865     | 10             | 64      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `LANDESBANK` | 104     | 20.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | INTERLOCHEN CENTER FOR THE ARTS | CORP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601039349301700_public.xml) |
| 2013 | 990 | x2 | LOCK HAVEN UNIVERSITY FOUNDATION | LANDESBANK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403109349301220_public.xml) |
| 2012 | 990 | x1 | ST JOHN'S LUTHERAN MINISTRIES INC | MARKETS GROUP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349302550_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_GIC_PROV_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
