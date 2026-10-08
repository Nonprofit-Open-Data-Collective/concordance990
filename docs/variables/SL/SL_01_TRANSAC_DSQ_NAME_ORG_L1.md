# SL_01_TRANSAC_DSQ_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_01_TRANSAC_DSQ_NAME_ORG_L1

Disqualified organization name line 1

- Description: Name Business - BusinessNameLine1

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

3 / 4

xpaths observed / mapped

381

filings with a value

2010–2024

tax years observed

2 + 3 reviewed

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
| x1 | `IRS990ScheduleL/DQPTable/NameBusiness/BusinessNameLine1` | SZ | 2010–2012 | 226 | 0.00439% | 28.8% |
| x2 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 9 | 0.00297% | 11.1% |
| x3 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 146 | 0.00197% | 26.0% |
| x4 | `IRS990ScheduleL/Form990ScheduleLPartI/DQPTable/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 203 | 11 | 12 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 9 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 11 | 9 | 11 | 13 | 12 | 17 | 18 | 14 | 16 | 16 | 9 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 363     | 20             | 64      |
| 990-EZ | 18      | 14             | 71      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 11      | 6.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | XCELLA HEALTH FOUNDATION | MEDIMAL LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349312188_public.xml) |
| 2013 | 990 | x2 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410789349300021_public.xml) |
| 2012 | 990 | x1 | ALTERNATIVE EDUCATION FOUNDATION | KENTWOOD OF BROWARD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411629349300116_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_01_TRANSAC_DSQ_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
