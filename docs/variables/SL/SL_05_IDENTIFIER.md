# SL_05_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_05_IDENTIFIER

Identifier

- Description: Form990 Schedule LPart V - Identifier

- Table:

  [`SL-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p05-t99-supplemental-info)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-L-PART-05`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

5.7k

filings with a value

2010–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartV/Identifier` | SZ | 2010–2012 | 5,661 | 0.87% | 10.0% |
| x2 | `IRS990ScheduleL/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.4k | 1.9k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | \<1 | \<1 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 5,575   | 27             | 81      |
| 990-EZ | 86      | 17             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `ADDITIONAL INFORMATION` | 1,626 | 54.0% |
| `BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS` | 388 | 12.9% |
| `SchL_P04_S00_L00` | 185 | 6.1% |
| `SCHEDULE L, PART IV` | 167 | 5.5% |
| `IV` | 162 | 5.4% |
| `BUSINESS TRANSACTIONS WITH INTERESTED PERSONS` | 121 | 4.0% |
| `SCH L, PART IV, BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS:` | 101 | 3.4% |
| `PART IV` | 92 | 3.1% |
| `SchL_P02_S00_L00` | 58 | 1.9% |
| `LOANS TO OR FROM INTERESTED PERSONS` | 26 | 0.9% |
| `1` | 24 | 0.8% |
| `PART IV, LINE 1` | 23 | 0.8% |
| `01 990 Schedule L Placeholder 1` | 21 | 0.7% |
| `Schedule L, Part IV` | 17 | 0.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | PART IV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_05_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
