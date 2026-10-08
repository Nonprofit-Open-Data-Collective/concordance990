# F9_03_PROG_EXP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_EXP

Program accomplishment expenses

- Description: Program Accomplishment Expenses

- Table:

  [`F9-P03-T00-PROGRAM-ONE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-one)
  (one)  
  [`F9-P03-T00-PROGRAM-THREE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-three)
  (one)  
  [`F9-P03-T00-PROGRAM-TWO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-two)
  (one)  
  [`F9-P03-T01-PROGRAMS-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t01-programs-other)
  (many)  
  [`F9-P03-T02-PROGRAMS-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t02-programs-ez)
  (many)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04-ABCD`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

10 / 15

xpaths observed / mapped

6.8M

filings with a value

2009–2024

tax years observed

2 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.9x (IRS990/Expense, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 5.4x (990: IRS990/Expense vs IRS990/ProgSrvcAccomActy3Grp/ExpenseAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Expense` | PC | 2009–2012 | 423,499 | 85% |  |
| x2 | `IRS990EZ/ProgramServiceAccomplishment/ProgramServiceExpenses` | EZ | 2009–2012 | 177,997 | 66.5% | 27.0% |
| x3 | `IRS990/Activity2/Expense` | PC | 2009–2012 | 136,442 | 26.7% |  |
| x4 | `IRS990/Activity3/Expense` | PC | 2009–2012 | 97,520 | 18.8% |  |
| x5 | `IRS990/ActivityOther/Expense` | PC | 2009–2012 | 57,666 | 11.5% | 17.3% |
| x6 | `IRS990/ExpenseAmt` | PC | 2013–2024 | 2,823,270 | 83.8% |  |
| x7 | `IRS990EZ/ProgramSrvcAccomplishmentGrp/ProgramServiceExpensesAmt` | EZ | 2013–2024 | 1,338,629 | 83.4% | 27.9% |
| x8 | `IRS990/ProgSrvcAccomActy2Grp/ExpenseAmt` | PC | 2013–2024 | 841,478 | 24.4% |  |
| x9 | `IRS990/ProgSrvcAccomActy3Grp/ExpenseAmt` | PC | 2013–2024 | 585,886 | 17.2% |  |
| x10 | `IRS990/ProgSrvcAccomActyOtherGrp/ExpenseAmt` | PC | 2013–2024 | 343,357 | 10.1% | 13.7% |
| x11 | `IRS990/Form990PartIII/Activity2/Expense` | PC | not observed | 0 |  |  |
| x12 | `IRS990/Form990PartIII/Activity3/Expense` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartIII/ActivityOther/Expense` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartIII/Expense` | PC | not observed | 0 |  |  |
| x15 | `IRS990/ProgramServiceAccomplishments/ProgramServiceExpenses` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 105k | 136k | 153k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 12k | 46k | 58k | 62k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 11k | 34k | 43k | 48k |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 8.6k | 24k | 31k | 34k |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 | 5.0k | 14k | 18k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 169k | 185k | 197k | 206k | 220k | 229k | 239k | 269k | 283k | 294k | 300k | 232k |
| x7 |  |  |  |  | 70k | 77k | 82k | 85k | 91k | 99k | 101k | 113k | 151k | 160k | 160k | 149k |
| x8 |  |  |  |  | 52k | 57k | 60k | 62k | 66k | 67k | 70k | 80k | 84k | 87k | 89k | 68k |
| x9 |  |  |  |  | 37k | 39k | 41k | 43k | 45k | 46k | 48k | 55k | 58k | 61k | 63k | 48k |
| x10 |  |  |  |  | 23k | 24k | 25k | 26k | 28k | 28k | 29k | 32k | 33k | 34k | 34k | 28k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 90 | 85 | 85 | 85 | 85 | 85 | 85 | 84 | 84 | 84 | 84 | 84 | 84 | 84 | 84 | 84 |
| 990-EZ | 76 | 73 | 70 | 67 | 67 | 66 | 66 | 65 | 65 | 66 | 66 | 67 | 75 | 78 | 78 | 83 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|---------|---------|------------|
| 990    | 5,309,101 | 100.0%    | 1.6%   | 0.0%       | 37,137 | 175,846 | 647,753 | 30,556,294 |
| 990-EZ | 1,516,620 | 100.0%    | 16.2%  | 0.0%       | 1,944  | 12,472  | 45,739  | 171,731    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | APPALACHIAN CENTER FOR EXCELLENCE IN | 311281 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2024 | 990 | x9 | IAAI FOUNDATION INC | 1233 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x8 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 1242168 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2024 | 990 | x10 | RISEWELL COMMUNITY SERVICES INC FKA | 916386 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2024 | 990EZ | x7 | KYLE GOLDBERG MEMORIAL FOUNDATION | 2420 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 305285 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |
| 2012 | 990 | x4 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 1644429 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2012 | 990 | x3 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 2742097 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_EXP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
