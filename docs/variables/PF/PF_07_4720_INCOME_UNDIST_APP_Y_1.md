# PF_07_4720_INCOME_UNDIST_APP_Y_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_4720_INCOME_UNDIST_APP_Y_1

Undistributed Income 4942(a)(2) Applied Year 1

- Description: Undistributed Income 4942(a)(2) Applied Year 1

- Table:

  [`PF-P07-T00-ACTIVITIES-4720`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities-4720)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-B-LINE-02C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.6k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail                 |
|--------|-----------------|------------------------|
| ✓ pass | One date format | 100.0% use year (YYYY) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActy4720/UndistrIncome4942a2AppYear1` | PF | 2009–2012 | 137 | 0.14% |  |
| x2 | `IRS990PF/StatementsRegardingActy4720Grp/UndistrIncmSect4942a2AppYr1Yr` | PF | 2013–2024 | 1,484 | 0.166% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4 | 32 | 45 | 56 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 55 | 61 | 64 | 73 | 82 | 80 | 101 | 169 | 200 | 204 | 204 | 191 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format | Filings | Share  |
|--------|---------|--------|
| `9999` | 1,621   | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SLONE FAMILY FOUNDATION | 2020 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501849349100805_public.xml) |
| 2012 | 990PF | x1 | LEVAN MEMORIAL SCHOLARSHIP TRUST | 2008 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301299349101200_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_4720_INCOME_UNDIST_APP_Y_1, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
