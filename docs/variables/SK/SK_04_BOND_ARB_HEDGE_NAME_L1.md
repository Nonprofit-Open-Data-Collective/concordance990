# SK_04_BOND_ARB_HEDGE_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_HEDGE_NAME_L1

Hedge provider name line 1

- Description: Name Of Hedge Provider - BusinessNameLine1

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-04B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

24k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 47% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/NameOfHedgeProvider/BusinessNameLine1` | SZ | 2009–2012 | 6,017 | 1.11% | 33.6% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/HedgeProviderName/BusinessNameLine1` | SZ | 2013–2013 | 1,959 | 0.985% | 36.8% |
| x3 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/HedgeProviderName/BusinessNameLine1Txt` | SZ | 2014–2024 | 16,107 | 0.174% | 37.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 730 | 1.3k | 2.0k | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.9k | 1.8k | 1.7k | 1.8k | 1.7k | 1.6k | 1.4k | 1.3k | 1.3k | 1.0k | 482 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 24,083  | 7              | 74      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `0`                | 8,632   | 64.0% |
| `MORGAN STANLEY`   | 713     | 5.3%  |
| `BANK OF AMERICA`  | 709     | 5.3%  |
| (blank)            | 708     | 5.2%  |
| `WELLS FARGO`      | 444     | 3.3%  |
| `PNC BANK`         | 436     | 3.2%  |
| `BB&T`             | 434     | 3.2%  |
| `CITIZENS BANK`    | 246     | 1.8%  |
| `TD BANK`          | 229     | 1.7%  |
| `SUNTRUST BANK`    | 185     | 1.4%  |
| `WELLS FARGO BANK` | 158     | 1.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | AIDS HEALTHCARE FOUNDATION | WELLS FARGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316441_public.xml) |
| 2013 | 990 | x2 | FSU Financial Assistance Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511339349304821_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | BANK OF AMERICA ML | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_HEDGE_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
