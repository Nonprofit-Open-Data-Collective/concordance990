# PF_AX48_CONTRIBUTOR_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_CITY

City

- Description: Foreign Address - City

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

6 / 6

xpaths observed / mapped

85k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

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
| x1 | `SubstantialContributorsSch/SubstantialContributor/USAddress/City` | PF | 2009–2012 | 8,981 | 9.14% | 22.2% |
| x2 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/City` | PF | 2009–2012 | 94 | 0.0977% | 17.0% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/City` | PF | 2013–2013 | 4,134 | 9.01% | 24.0% |
| x4 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/City` | PF | 2013–2013 | 49 | 0.107% | 20.4% |
| x5 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/CityNm` | PF | 2014–2024 | 71,219 | 6.61% | 25.2% |
| x6 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/CityNm` | PF | 2014–2024 | 800 | 0.0801% | 24.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 160 | 2.2k | 3.0k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 23 | 30 | 39 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.1k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 49 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.7k | 4.6k | 4.8k | 5.1k | 5.3k | 5.9k | 7.9k | 8.8k | 8.4k | 8.1k | 7.6k |
| x6 |  |  |  |  |  | 56 | 45 | 60 | 62 | 59 | 68 | 87 | 81 | 86 | 104 | 92 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 9 | 9 | 9 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 85,277  | 9              | 25      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 4,977   | 37.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BOYER JOHN 1ST T-P-C-C-M FD-CHAR TR | MEERBUSCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349102300_public.xml) |
| 2024 | 990PF | x5 | THE WALDORF FAMILY FOUNDATION | LOS ANGELES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640659349101509_public.xml) |
| 2013 | 990PF | x4 | FRIENDS OF THE RUSSIAN FOUNDATION FOR | LAUSANNE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511349349101786_public.xml) |
| 2013 | 990PF | x3 | D K J L FAMILY FOUNDATION | LINCOLN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412519349100061_public.xml) |
| 2012 | 990PF | x2 | EMMANUEL BANSOK LITERATURE MISSION INC | SEOUL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342199349100614_public.xml) |
| 2012 | 990PF | x1 | THE PETER AND SUSAN STRAUSS FAMILY FOUN… | BEVERLY HILLS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400459349100565_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
