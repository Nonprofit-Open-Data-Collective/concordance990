# F9_07_INFO_SCHED_O_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_INFO_SCHED_O_X

Schedule O contains response to Part 7 \[x\]

- Description: Schedule O contains a response to a question in Part VII

- Table:

  [`F9-P07-T00-DIR-TRUST-KEY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t00-dir-trust-key)
  (one)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-LINE-00`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

234k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/InfoInScheduleOPartVII` | PC | 2010–2012 | 28,359 | 3.96% |  |
| x2 | `IRS990EZ/InfoInScheduleOPartIV` | EZ | 2010–2012 | 17,040 | 5.9% |  |
| x3 | `IRS990/InfoInScheduleOPartVIIInd` | PC | 2013–2024 | 103,311 | 2.4% |  |
| x4 | `IRS990EZ/InfoInScheduleOPartIVInd` | EZ | 2013–2024 | 84,925 | 3.06% |  |
| x5 | `IRS990EZ/InfoInScheduleOPartVII` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/InfoInScheduleOPartVIIInd` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 9.0k | 12k | 7.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 4.9k | 6.6k | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 7.1k | 7.6k | 7.8k | 8.0k | 8.5k | 8.6k | 9.0k | 10k | 10k | 10k | 9.8k | 6.6k |
| x4 |  |  |  |  | 5.9k | 6.3k | 6.4k | 6.6k | 6.8k | 7.0k | 7.4k | 8.6k | 9.7k | 7.8k | 7.1k | 5.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 7 | 8 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |
| 990-EZ |  | 8 | 8 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 233,635 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | PI BETA PHI FRATERNITY GEORGIA BETA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600619349201440_public.xml) |
| 2024 | 990 | x3 | Affinity Federal Credit Union Foundation | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349305621_public.xml) |
| 2012 | 990EZ | x2 | PINEBROOK OF CHARLESTON INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |
| 2012 | 990 | x1 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_INFO_SCHED_O_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
