# SD_13_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_13_IDENTIFIER

Identifier

- Description: Supplemental Information Detail - Identifier

- Table:

  [`SD-P13-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p13-t99-supplemental-info)
  (many)

- Part: Part XIII - Supplemental Information

- Location:

  `SCHED-D-PART-13`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

197k

filings with a value

2009–2012

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
| x1 | `IRS990ScheduleD/Form990ScheduleDPartXIV/Identifier` | SZ | 2009–2011 | 127,886 | 39.7% | 56.2% |
| x2 | `IRS990ScheduleD/Form990ScheduleDPartXIII/Identifier` | SZ | 2012–2012 | 68,888 | 38.3% | 51.8% |
| x3 | `IRS990ScheduleD/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 47k | 63k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 69k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 52 | 38 | 40 | 38 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 196,774 | 36             | 74      |

### Most common values

| Value                                                  | Filings | Share |
|--------------------------------------------------------|---------|-------|
| `DESCRIPTION OF UNCERTAIN TAX POSITIONS UNDER FIN 48:` | 75,827  | 27.7% |
| `PART XII, LINE 2D - OTHER ADJUSTMENTS:`               | 31,251  | 11.4% |
| `DESCRIPTION OF INTENDED USE OF ENDOWMENT FUNDS:`      | 23,041  | 8.4%  |
| `PART XIII, LINE 2D - OTHER ADJUSTMENTS:`              | 19,141  | 7.0%  |
| `PART XII, LINE 4B - OTHER ADJUSTMENTS:`               | 18,003  | 6.6%  |
| `PART XI, LINE 8 - OTHER ADJUSTMENTS:`                 | 15,321  | 5.6%  |
| `PART XI, LINE 2D - OTHER ADJUSTMENTS:`                | 12,394  | 4.5%  |
| `PART XIII, LINE 4B - OTHER ADJUSTMENTS:`              | 8,639   | 3.2%  |
| `PART XI, LINE 4B - OTHER ADJUSTMENTS:`                | 7,935   | 2.9%  |
| `RECONCILIATION OF CHANGES - OTHER`                    | 7,719   | 2.8%  |
| `Part X`                                               | 7,473   | 2.7%  |
| `Part XI, Line 8`                                      | 7,404   | 2.7%  |
| `Part X:`                                              | 5,832   | 2.1%  |
| `Description of Uncertain Tax Positions Under FIN 48:` | 5,754   | 2.1%  |
| `Part XIII, Line 2d - Other Adjustments:`              | 4,150   | 1.5%  |
| `Part XII, Line 2d - Other Adjustments:`               | 4,072   | 1.5%  |
| `LIABILITY UNDER FIN 48 FOOTNOTE`                      | 3,763   | 1.4%  |
| `Part XI, Line 8 - Other Adjustments:`                 | 3,492   | 1.3%  |
| `Part V, Line 4:`                                      | 3,259   | 1.2%  |
| `EXPENSE AMOUNTS INCLUDED IN FINANCIALS - OTHER`       | 3,208   | 1.2%  |
| `Part XII, Line 4b - Other Adjustments:`               | 2,904   | 1.1%  |
| `Part XIII, Line 4b - Other Adjustments:`              | 2,141   | 0.8%  |
| `Part XIII, Line 2d`                                   | 694     | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | MINNEAPOLIS COLLEGE OF ART & DESIGN | DESCRIPTION OF INTENDED USE OF ENDOWMENT FUNDS: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2011 | 990 | x1 | MIDWEST UNIVERSITY | DESCRIPTION OF UNCERTAIN TAX POSITIONS UNDER FIN 48: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310379349300531_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_13_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
