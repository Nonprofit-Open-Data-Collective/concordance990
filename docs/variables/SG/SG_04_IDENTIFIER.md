# SG_04_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_04_IDENTIFIER

Identifier

- Description: Form990 Schedule GPart IV - Identifier

- Table:

  [`SG-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-G-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

4.5k

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/Form990ScheduleGPartIV/Identifier: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/Form990ScheduleGPartIV/Identifier` | SZ | 2010–2012 | 4,536 | 0.656% | 8.1% |
| x2 | `IRS990ScheduleG/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.2k | 1.6k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
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
| 990    | 3,989   | 36             | 75      |
| 990-EZ | 547     | 31             | 73      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `EXPLANATION OF FUNDRAISING PAYMENTS` | 1,007 | 29.5% |
| `REQUIRED DISTRIBUTIONS PER STATE LAW` | 604 | 17.7% |
| `Part I, Line 2b - Fundraiser Additional Information` | 576 | 16.9% |
| `Part III, Line 17b - Distributions Required Under State Law` | 374 | 11.0% |
| `Explanation of Fundraising Payments` | 209 | 6.1% |
| `FUNDRAISING VS REIMBURSEMENT EXPLANATION` | 179 | 5.2% |
| `Schedule G - Additional Information` | 149 | 4.4% |
| `CUSTODY OR CONTROL ARRANGEMENT` | 122 | 3.6% |
| `SchG_P02_S00_L01` | 107 | 3.1% |
| `GAMING MANAGERS INFORMATION` | 85 | 2.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | LIONS CLUB OF WAVERLY | CHANGE IN GAMBLING MANAGER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440579349300524_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_04_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
