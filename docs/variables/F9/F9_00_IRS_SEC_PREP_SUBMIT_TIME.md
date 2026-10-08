# F9_00_IRS_SEC_PREP_SUBMIT_TIME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_PREP_SUBMIT_TIME

Total preparation and submission time

- Description: Verification: total time from return preparation to
  submission, as reported by the e-file software (zero-padded; 999999
  when not measured)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-X`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

1 / 1

xpaths observed / mapped

246

filings with a value

2020–2020

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values are text, not numbers | 100% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/TotalPreparationSubmissionTs` | PC | 2020–2020 | 246 | 0.0407% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  | 246 |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |
| 990-EZ |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 35      | 5              | 6       |
| 990-EZ | 54      | 5              | 6       |
| 990-PF | 157     | 4              | 6       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `1`   | 59      | 56.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990 | x1 | SUNSET HILLS APARTMENTS | 000298 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202111479349300426_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_PREP_SUBMIT_TIME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
