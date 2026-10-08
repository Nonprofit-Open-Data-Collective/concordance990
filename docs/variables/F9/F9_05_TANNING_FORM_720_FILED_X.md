# F9_05_TANNING_FORM_720_FILED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_TANNING_FORM_720_FILED_X

Filed a Form 720 \[x\]

- Description: Form 720 filed and taxes paid on indoor tanning services?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-14B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 4

xpaths observed / mapped

331k

filings with a value

2010–2024

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
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 7.9x year-on-year (in 2019) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 73.6x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/Form720Filed` | EZ | 2010–2012 | 56,698 | 23.9% |  |
| x2 | `IRS990/Form720Filed` | PC | 2010–2012 | 45,470 | 0.219% |  |
| x3 | `IRS990EZ/Form720FiledInd` | EZ | 2013–2024 | 208,962 | 2.65% |  |
| x4 | `IRS990/Form720FiledInd` | PC | 2013–2024 | 19,480 | 0.953% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 14k | 20k | 22k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 19k | 26k | 393 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 25k | 28k | 29k | 31k | 33k | 35k | 4.5k | 5.0k | 4.2k | 4.3k | 5.1k | 4.7k |
| x4 |  |  |  |  | 780 | 780 | 887 | 952 | 1.0k | 1.2k | 1.5k | 2.3k | 2.5k | 2.0k | 2.9k | 2.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 16 | 16 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  | 22 | 25 | 24 | 24 | 24 | 24 | 23 | 24 | 23 | 3 | 3 | 2 | 2 | 2 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 325,661 | 98.5% |
| `0`     | 3,961   | 1.2%  |
| `true`  | 878     | 0.3%  |
| `1`     | 110     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | COUNTRYWOOD PTA | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523149349202317_public.xml) |
| 2024 | 990 | x4 | Kingdom Care Senior Village | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503119349301940_public.xml) |
| 2012 | 990EZ | x1 | SPAY NEUTER INVESTMENT PROJECT INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303229349200805_public.xml) |
| 2012 | 990 | x2 | ST MARKS SENIOR CITIZENS HDFC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349300211_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_TANNING_FORM_720_FILED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
