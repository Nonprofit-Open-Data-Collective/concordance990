# F9_00_IRS_SEC_SUBMISSION_DATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_SUBMISSION_DATE

Federal original submission date

- Description: Verification: date of the federal original submission

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-X`

- Type: date

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

1 / 1

xpaths observed / mapped

235k

filings with a value

2016–2020

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 975.9x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 2290.9x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 123.3x year-on-year (in 2020) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/FederalOriginalSubmissionIdDt` | PC | 2016–2020 | 235,240 | 0.0188% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  | 56k | 62k | 65k | 53k | 114 |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  | 12 | 12 | 12 | 9 | \<1 |  |  |  |  |
| 990-EZ |  |  |  |  |  |  |  | 15 | 16 | 16 | 14 | \<1 |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  | 12 | 12 | 11 | 8 | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 235,240 | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990 | x1 | FRIENDS OF YESTERDAY TODAY AND TOMORROW | 2021-07-30 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202112149349300321_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_SUBMISSION_DATE, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
