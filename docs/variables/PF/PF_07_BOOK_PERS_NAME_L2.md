# PF_07_BOOK_PERS_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_PERS_NAME_L2

Person with books - business name line 2

- Description: Persons With Books Name - BusinessNameLine2

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-14`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

7.1k

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine2: longest value is exactly 35 characters; IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine2` | PF | 2013–2013 | 214 | 0.466% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine2Txt` | PF | 2014–2024 | 6,837 | 0.687% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 214 |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 196 | 220 | 480 | 498 | 573 | 646 | 855 | 879 | 830 | 871 | 789 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 7,051   | 17             | 35      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `C/O MICHELLE WILLMS` | 244     | 13.7% |
| `TRUST DEPARTMENT`    | 217     | 12.2% |
| `ATTN HECTOR AHUMADA` | 176     | 9.9%  |
| `ATTN DIANE RIMER`    | 166     | 9.4%  |
| `DIANE RIMER`         | 152     | 8.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | COUNCIL FOR NONCOLLEGIATE | STUART M SCHRAM & ASSOCIATES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349101558_public.xml) |
| 2013 | 990PF | x1 | SHOEMAKER CHARITABLE TRUST 151513347100 | OM-IA-1313 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401229349100725_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_PERS_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
