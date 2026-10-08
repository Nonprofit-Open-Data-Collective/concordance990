# SJ_03_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_03_IDENTIFIER

Identifier

- Description: Form990 Schedule JPart III - Identifier

- Table:

  [`SJ-P03-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p03-t99-supplemental-info)
  (many)

- Part: Part III - Supplemental Information

- Location:

  `SCHED-J-PART-03`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

33k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

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
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartIII/Identifier` | SZ | 2009–2012 | 32,582 | 5.63% | 31.9% |
| x2 | `IRS990ScheduleJ/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 8.6k | 9.6k | 10k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 7 | 6 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 32,582  | 27             | 96      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SUPPLEMENTAL INFORMATION` | 8,329 | 38.9% |
| `Supplemental Information` | 3,309 | 15.5% |
| `SchJ_P01_S00_L01a` | 1,551 | 7.2% |
| `Sch J, Part I, Line 1a` | 1,433 | 6.7% |
| `SchJ_P01_S00_L04` | 1,240 | 5.8% |
| `SchJ_P01_S00_L03` | 1,162 | 5.4% |
| `Supplemental nonqualified retirement plan` | 1,107 | 5.2% |
| `OTHER ADDITIONAL INFORMATION` | 1,105 | 5.2% |
| `SEVERANCE, NONQUALIFIED, AND EQUITY-BASED PAYMENTS` | 1,071 | 5.0% |
| `Arrangement used to establish the top management official's compensation` | 576 | 2.7% |
| `Supplemental Compensation Information` | 319 | 1.5% |
| `SUPPLEMENTAL NONQUALIFIED RETIREMENT PLAN` | 107 | 0.5% |
| `Sch J, Part III, Additional Information` | 89 | 0.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | SUPPLEMENTAL INFORMATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_03_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
