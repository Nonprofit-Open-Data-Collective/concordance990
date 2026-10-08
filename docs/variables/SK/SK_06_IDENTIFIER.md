# SK_06_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_06_IDENTIFIER

Identifier

- Description: Form990 Schedule KPart V - Identifier

- Table:

  [`SK-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-K-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

5.0k

filings with a value

2010–2012

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleK/Form990ScheduleKPartV/Identifier: longest value is exactly 75 characters; IRS990ScheduleK/Form990ScheduleKPartVI/Identifier: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartV/Identifier` | SZ | 2010–2010 | 1,105 | 0.898% | 33.0% |
| x2 | `IRS990ScheduleK/Form990ScheduleKPartVI/Identifier` | SZ | 2011–2012 | 3,881 | 1.35% | 38.2% |
| x3 | `IRS990ScheduleK/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1.5k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,986   | 30             | 100     |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `SCHEDULE K SUPPLENTAL INFORMATION`      | 376     | 19.4% |
| `SCHEDULE K PART IV, ARBITRAGE, LINE 2C` | 299     | 15.4% |
| `PURPOSE OF ISSUE DESCRIPTION`           | 199     | 10.3% |
| `ADDITIONAL INFORMATION`                 | 135     | 7.0%  |
| `Supplemental Information`               | 130     | 6.7%  |
| `TOTAL PROCEEDS OF ISSUE`                | 109     | 5.6%  |
| `SchK_P04_S00_L02c`                      | 101     | 5.2%  |
| `SEE SCHEDULE O`                         | 96      | 4.9%  |
| `Schedule K Part IV, Arbitrage, Line 2c` | 93      | 4.8%  |
| `SCHEDULE K, PART II, LINE 3`            | 88      | 4.5%  |
| `Schedule K Supplental Information`      | 82      | 4.2%  |
| `DATE REBATE COMPUTATION PERFORMED`      | 64      | 3.3%  |
| `SchK_P02_S00_L03`                       | 59      | 3.0%  |
| `PART II, LINE 3`                        | 56      | 2.9%  |
| `SCHEDULE K, PART V`                     | 28      | 1.4%  |
| `DESCRIPTION OF PURPOSE`                 | 25      | 1.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | MINNEAPOLIS COLLEGE OF ART & DESIGN | SCHEDULE K PART IV, ARBITRAGE, LINE 2C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2010 | 990 | x1 | VINCENTIAN COLLABORATIVE SYSTEM | SCHEDULE K SUPPLENTAL INFORMATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201201359349302550_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_06_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
