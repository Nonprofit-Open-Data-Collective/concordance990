# SC_04_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_04_IDENTIFIER

Identifier

- Description: Identifier

- Table:

  [`SC-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-C-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

19k

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
| x1 | `IRS990ScheduleC/Form990ScheduleCPartIV/Identifier` | SZ | 2009–2012 | 19,364 | 2.35% | 3.4% |
| x2 | `IRS990ScheduleC/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 4.9k | 5.8k | 6.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 4 | 4 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 18,819  | 34             | 90      |
| 990-EZ | 545     | 34             | 65      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `EXPLANATION OF LOBBYING ACTIVITIES:` | 3,807 | 25.4% |
| `ORGANIZATIONS DIRECT AND INDIRECT POLITICAL CAMPAIGN ACTIVITIES:` | 2,058 | 13.7% |
| `EXPLANATION OF OTHER LOBBYING ACTIVITIES:` | 2,038 | 13.6% |
| `PART IV, SUPPLEMENTAL INFORMATION:` | 1,458 | 9.7% |
| `Part II-B, Line 1i:` | 1,023 | 6.8% |
| `Explanation of Lobbying Activities:` | 783 | 5.2% |
| `Part II-B, Line 1i` | 767 | 5.1% |
| `SchC_P2B_S00_L01` | 743 | 5.0% |
| `LOBBYING ACTIVITIES` | 475 | 3.2% |
| `ADDITIONAL INFORMATION` | 406 | 2.7% |
| `Description of the activities reported on Lines 1a through 1i` | 378 | 2.5% |
| `Part IV, Supplemental Information:` | 343 | 2.3% |
| `Explanation of Other Lobbying Activities:` | 331 | 2.2% |
| `Part I-A, Line 1:` | 142 | 0.9% |
| `Pt II-B Line 1i` | 124 | 0.8% |
| `OTHER LOBBYING ACTIVITIES` | 58 | 0.4% |
| `990 Sch C Supplemental` | 27 | 0.2% |
| `Other lobbying activities` | 24 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | SOUTH LYON HEALTH CENTER DBA | EXPLANATION OF LOBBYING ACTIVITIES: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_04_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
