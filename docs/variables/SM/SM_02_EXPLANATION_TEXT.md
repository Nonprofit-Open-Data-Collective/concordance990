# SM_02_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_02_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule MPart II - Explanation

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

2 / 2

xpaths observed / mapped

107k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

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
| x1 | `IRS990ScheduleM/Form990ScheduleMPartII/Explanation` | SZ | 2009–2012 | 13,551 | 2.54% | 17.4% |
| x2 | `IRS990ScheduleM/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 93,270 | 2.41% | 14.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 3.2k | 4.0k | 4.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.2k | 6.0k | 6.6k | 6.9k | 7.8k | 7.8k | 8.2k | 8.8k | 9.5k | 9.7k | 10k | 6.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 106,821 | 144            | 8,911   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `The number of contributions represent the number of contributions received, not the numbe…` | 1,009 | 14.4% |
| `THE ORGANIZATION IS REPORTING THE NUMBER OF CONTRIBUTIONS.` | 946 | 13.5% |
| `NUMBER OF CONTRIBUTIONS` | 945 | 13.4% |
| `THE ORGANIZATION IS REPORTING THE NUMBER OF CONTRIBUTORS.` | 732 | 10.4% |
| `THE ORGANIZATION IS REPORTING THE NUMBER OF CONTRIBUTIONS IN COLUMN (B).` | 543 | 7.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Victims of Milwaukee Violence Burial Fu… | Number of items received. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541609349300544_public.xml) |
| 2012 | 990 | x1 | REFUGE HOUSE INC | THE THRIFT STORE MANAGER IS HIRED ON A CONTRACT BASIS TO RUN THE THRIFT STORE. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430489349301223_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_02_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
