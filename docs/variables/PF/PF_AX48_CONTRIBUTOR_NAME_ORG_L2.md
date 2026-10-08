# PF_AX48_CONTRIBUTOR_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_NAME_ORG_L2

Substantial contributor - business name line 2

- Description: Business Name - BusinessNameLine2

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

3 / 3

xpaths observed / mapped

187

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/BusinessName/BusinessNameLine2` | PF | 2009–2012 | 42 | 0.0451% | 7.1% |
| x2 | `SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine2` | PF | 2013–2013 | 14 | 0.0305% | 14.3% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine2Txt` | PF | 2014–2024 | 131 | 0.0148% | 14.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 8 | 15 | 18 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 20 | 6 | 7 | 10 | 9 | 7 | 14 | 12 | 15 | 14 | 17 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 187     | 20             | 37      |

### Most common values

| Value                               | Filings | Share |
|-------------------------------------|---------|-------|
| `C/O KEY BANK NATIONAL ASSOCIATION` | 6       | 4.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | WEINSTEIN ADR INTERNATIONAL FNDN | ANDREW BURKLE MEMORIAL FUND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349102998_public.xml) |
| 2013 | 990PF | x2 | BOB BARKER COMPANY FOUNDATION INC | BOB BARKER COMPANY INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411829349100511_public.xml) |
| 2012 | 990PF | x1 | ELIJAH'S REST | ELLENBAUM TRUCK SALES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311349349100111_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
