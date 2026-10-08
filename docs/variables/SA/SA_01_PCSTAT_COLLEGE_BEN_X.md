# SA_01_PCSTAT_COLLEGE_BEN_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_COLLEGE_BEN_X

Organization operated for the benefit of a college or university by a
government unit \[x\]

- Description: An organization operated for the benefit of a college or
  university owned or operated by a governmental unit. Section
  170(b)(1)(A)(iv).

- Table:

  [`SA-P01-T00-PUBLIC-CHARITY-STATUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p01-t00-public-charity-status)
  (one)

- Part: Part I - Reason for Public Charity Status

- Location:

  `SCHED-A-PART-01-LINE-05`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

25k

filings with a value

2009–2024

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
| x1 | `IRS990ScheduleA/CollegeSupportOrg170b1Aiv` | SZ | 2009–2012 | 3,725 | 0.467% |  |
| x2 | `IRS990ScheduleA/CollegeOrganizationInd` | SZ | 2013–2024 | 20,781 | 0.321% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartI/CollegeSupportOrg170b1Aiv` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 386 | 882 | 1.2k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.3k | 1.4k | 1.5k | 1.6k | 1.7k | 1.7k | 1.8k | 1.9k | 2.1k | 2.1k | 2.1k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 24,506  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GRAND RAPIDS COMMUNITY COLLEGE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202631009349300123_public.xml) |
| 2012 | 990 | x1 | McNeese State University Alumni Associa… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300013_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_COLLEGE_BEN_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
