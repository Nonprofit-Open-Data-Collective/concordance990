# PF_AX48_CONTRIBUTOR_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_NAME_PERS

Contributor's Person Name

- Description: Contributor's Person Name

- Table:

  [`PF-P99-T48-CONTRIBUTOR`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t48-contributor)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-48`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

74k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | SubstantialContributorsSch/SubstantialContributor/PersonName: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/PersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/PersonName` | PF | 2009–2012 | 7,834 | 8.06% | 19.6% |
| x2 | `SubstantialContributorsSch/SubstantialContributorDetail/PersonNm` | PF | 2013–2024 | 65,748 | 5.62% | 22.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 139 | 1.9k | 2.6k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k | 4.1k | 4.0k | 4.2k | 4.5k | 4.6k | 5.2k | 7.0k | 7.8k | 7.3k | 7.0k | 6.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 6 | 7 | 7 | 8 | 8 | 8 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 73,582  | 17             | 35      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `See Schedule B` | 97      | 15.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CARLSON FAMILY LIGHTSHIELD FOUNDATION | CHRISTOPHER D CARLSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349101877_public.xml) |
| 2012 | 990PF | x1 | THE STEWARDSHIP FOUNDATION | KEN DECKER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349101662_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
