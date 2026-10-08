# SC_01_4955_FORM4720_FILED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_4955_FORM4720_FILED_X

Filed Form 4720 \[x\]

- Description: If the filing organization incurred in a section 4955
  tax; did it file Form 4720 for this year?

- Table:

  [`SC-P01-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t00-lobby)
  (one)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-B-LINE-03`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

26k

filings with a value

2009–2024

tax years observed

2

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 100% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 8.3x year-on-year (in 2011-2012) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.3x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Form4720Filed4955Tax` | SZ | 2009–2012 | 9,018 | 0.423% |  |
| x2 | `IRS990ScheduleC/Form4720FiledSection4955TaxInd` | SZ | 2013–2024 | 16,710 | 0.253% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/Form4720Filed4955Tax` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 564 | 2.3k | 5.0k | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.2k | 1.2k | 1.3k | 1.4k | 1.5k | 1.5k | 1.4k | 1.5k | 1.5k | 1.4k | 1.5k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | 2 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 25,447  | 98.9% |
| `0`     | 155     | 0.6%  |
| `true`  | 74      | 0.3%  |
| `1`     | 52      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Southwest Youth And Family Services | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522889349301772_public.xml) |
| 2012 | 990 | x1 | Charter Schools Development Center | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349307460_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_4955_FORM4720_FILED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
