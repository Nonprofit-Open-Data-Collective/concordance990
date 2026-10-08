# F9_09_EXP_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_OTH_DESC

Other expenses description

- Description: Other Expenses - description

- Table:

  [`F9-P09-T01-EXPENSES-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t01-expenses-other)
  (many)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-24-ABCD`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.5M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990/OtherExpenses/Description: longest value is exactly 100 characters; IRS990/OtherExpensesGrp/Desc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/OtherExpenses/Description` | PC | 2009–2012 | 463,534 | 93.1% | 93.5% |
| x2 | `IRS990/OtherExpensesGrp/Desc` | PC | 2013–2024 | 3,046,273 | 89.2% | 91.7% |
| x3 | `IRS990/Form990PartIX/OtherExpenses/Description` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 32k | 116k | 149k | 167k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 185k | 202k | 216k | 225k | 241k | 249k | 259k | 289k | 303k | 313k | 318k | 247k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 95 | 94 | 93 | 93 | 93 | 93 | 92 | 92 | 92 | 92 | 91 | 90 | 90 | 90 | 90 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,509,786 | 16             | 100     |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `SUPPLIES`                  | 291,504 | 18.3% |
| `MISCELLANEOUS`             | 282,279 | 17.8% |
| `UTILITIES`                 | 198,778 | 12.5% |
| `TELEPHONE`                 | 171,640 | 10.8% |
| `REPAIRS AND MAINTENANCE`   | 139,811 | 8.8%  |
| `REPAIRS & MAINTENANCE`     | 121,032 | 7.6%  |
| `BANK CHARGES`              | 103,262 | 6.5%  |
| `DUES AND SUBSCRIPTIONS`    | 93,342  | 5.9%  |
| `DUES & SUBSCRIPTIONS`      | 79,497  | 5.0%  |
| `BANK FEES`                 | 72,026  | 4.5%  |
| `Printing and Publications` | 15,958  | 1.0%  |
| `INSURANCE`                 | 9,023   | 0.6%  |
| `BAD DEBT EXPENSE`          | 4,617   | 0.3%  |
| `Postage and Shipping`      | 3,457   | 0.2%  |
| `Miscellaneous`             | 1,803   | 0.1%  |
| `Supplies`                  | 1,106   | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | REPAIRS & MAINTENANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | SCHOLARSHIP EXPENSES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
