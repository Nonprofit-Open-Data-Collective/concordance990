# PF_AX48_CONTRIBUTOR_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_CNTR

Country

- Description: Foreign Address - Country

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

1.1k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 42 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/Country` | PF | 2009–2012 | 104 | 0.108% | 15.4% |
| x2 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/Country` | PF | 2013–2013 | 57 | 0.124% | 17.5% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/CountryCd` | PF | 2014–2024 | 896 | 0.0862% | 23.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 26 | 33 | 43 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 57 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 63 | 50 | 66 | 69 | 67 | 79 | 96 | 94 | 98 | 115 | 99 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 209     | 24.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | BOYER JOHN 1ST T-P-C-C-M FD-CHAR TR | GM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349102300_public.xml) |
| 2013 | 990PF | x2 | STEVE NASH FOUNDATION | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433019349100408_public.xml) |
| 2012 | 990PF | x1 | EMMANUEL BANSOK LITERATURE MISSION INC | KS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342199349100614_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
