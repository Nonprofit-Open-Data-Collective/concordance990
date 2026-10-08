# F9_08_REV_OTH_FUNDR_EVNT_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_FUNDR_EVNT_1

Gross income from fundraising events

- Description: 8a-1

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-08A-1`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.2M

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 9.9x (IRS990EZ/FundraisingGrossIncomeAmt, 990EZ, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossIncomeFundraisingEvents` | PC | 2009–2012 | 134,189 | 27.7% |  |
| x2 | `IRS990EZ/FundraisingGrossIncome` | EZ | 2010–2012 | 140,020 | 59.2% |  |
| x3 | `IRS990EZ/FundraisingGrossIncomeAmt` | EZ | 2013–2024 | 1,058,271 | 56.7% |  |
| x4 | `IRS990/FundraisingGrossIncomeAmt` | PC | 2013–2024 | 917,150 | 26.1% |  |
| x5 | `IRS990/Form990PartVIII/GrossIncomeFundraisingEvents` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10k | 31k | 43k | 50k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 36k | 48k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 61k | 68k | 72k | 75k | 79k | 84k | 84k | 89k | 112k | 116k | 117k | 101k |
| x4 |  |  |  |  | 55k | 61k | 65k | 74k | 80k | 81k | 81k | 76k | 85k | 92k | 94k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 30 | 25 | 27 | 28 | 28 | 28 | 28 | 30 | 31 | 30 | 28 | 24 | 25 | 26 | 27 | 26 |
| 990-EZ |  | 57 | 59 | 59 | 58 | 58 | 58 | 57 | 57 | 56 | 55 | 52 | 55 | 56 | 57 | 57 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|-----------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 1,051,337 | 100.0%    | 14.7%  | 0.0%       | 9,170 | 33,377 | 91,049 | 878,860 |
| 990-EZ | 1,198,274 | 100.0%    | 52.2%  | 0.0%       | 0     | 1,232  | 24,334 | 125,234 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | 59824 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2024 | 990 | x4 | IAAI FOUNDATION INC | 40384 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | 91616 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 325175 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_FUNDR_EVNT_1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
