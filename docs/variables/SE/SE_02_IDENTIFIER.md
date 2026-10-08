# SE_02_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_02_IDENTIFIER

Identifier

- Description: Form990 Schedule EPart II - Identifier

- Table:

  [`SE-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-E-PART-02`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

23k

filings with a value

2010–2012

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
| x1 | `IRS990ScheduleE/Form990ScheduleEPartII/Identifier` | SZ | 2010–2012 | 23,207 | 3.46% | 47.2% |
| x2 | `IRS990ScheduleE/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 6.0k | 7.7k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 5 | 4 | 5 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 21,282  | 43             | 88      |
| 990-EZ | 1,925   | 32             | 88      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `EXPLANATION OF NONDISCRIMINATORY POLICY PUBLICATION` | 9,528 | 33.2% |
| `EXPLANATION OF GOVERNMENT FINANCIAL ASSISTANCE` | 4,937 | 17.2% |
| `Schedule E, Line 3 - Racially Nondiscriminatory Policy Publicized` | 3,105 | 10.8% |
| `Line 3` | 2,486 | 8.7% |
| `EXPLANATION OF DOCUMENT RETENTION` | 1,660 | 5.8% |
| `PUBLICATION OF NONDISCRIMINATORY POLICY IN MEDIA EXPLANATION` | 1,575 | 5.5% |
| `FINANCIAL AID OR GOVERNMENT ASSISTANCE EXPLANATION` | 1,438 | 5.0% |
| `SchE_P01_S00_L03` | 1,407 | 4.9% |
| `Explanation of Nondiscriminatory Policy Publication` | 1,228 | 4.3% |
| `Schedule E, Line 6 - Explanation of Aid or Assistance from Governmental Agency` | 592 | 2.1% |
| `Line 6b` | 517 | 1.8% |
| `SchE_P01_S00_L06` | 212 | 0.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | AMIGOS POR VIDA - FRIENDS FOR LIFE | Schedule E, Line 4 - Explanation of Records and Materials Not Maintained | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440519349300909_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_02_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
