# SM_02_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_02_IDENTIFIER

Identifier

- Description: Form990 Schedule MPart II - Identifier

- Table:

  [`SM-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-M-PART-02`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

14k

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
| x1 | `IRS990ScheduleM/Form990ScheduleMPartII/Identifier` | SZ | 2009–2012 | 13,526 | 2.55% | 16.7% |
| x2 | `IRS990ScheduleM/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 3.2k | 4.0k | 4.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 13,526  | 30             | 74      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THIRD PARTY USE:` | 2,798 | 25.4% |
| `METHOD FOR DETERMINING NUMBER OF CONTRIBUTORS:` | 2,266 | 20.6% |
| `Third Party Use:` | 1,009 | 9.2% |
| `NON REPORTING OF REVENUE:` | 934 | 8.5% |
| `Method for Determining Number of Contributors:` | 873 | 7.9% |
| `METHOD FOR DETERMINING NUMBER OF CONTRIBUTIONS:` | 721 | 6.6% |
| `SUPPLEMENTAL INFORMATION` | 546 | 5.0% |
| `THIRD PARTY USED TO PROCESS NONCASH CONTRIBUTIONS` | 397 | 3.6% |
| `Number of contributions or items contributed.` | 331 | 3.0% |
| `SchM_P01_S00_L32b` | 314 | 2.9% |
| `Part I, Line 32, Hire and Use of Third Parties` | 242 | 2.2% |
| `Non Reporting of Revenue:` | 158 | 1.4% |
| `Method for Determining Number of Contributions:` | 142 | 1.3% |
| `Explanations of reporting method for number of contributions` | 130 | 1.2% |
| `NUMBER OF CONTRIBUTIONS` | 87 | 0.8% |
| `SchM_P01_S00_L33` | 31 | 0.3% |
| `Part I, Line 33, Revenues Not Reported` | 19 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | Washington Hospital Healthcare Foundati… | PART I, COLUMN (B) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349309267_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_02_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
