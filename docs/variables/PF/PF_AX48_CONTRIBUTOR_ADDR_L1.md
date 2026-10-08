# PF_AX48_CONTRIBUTOR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | SubstantialContributorsSch/SubstantialContributor/ForeignAddress/AddressLine1: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributor/USAddress/AddressLine1: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine1: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine1: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/USAddress/AddressLine1` | PF | 2009–2012 | 8,981 | 9.14% | 22.2% |
| x2 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/AddressLine1` | PF | 2009–2012 | 104 | 0.108% | 15.4% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine1` | PF | 2013–2013 | 4,134 | 9.01% | 24.0% |
| x4 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine1` | PF | 2013–2013 | 57 | 0.124% | 17.5% |
| x5 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine1Txt` | PF | 2014–2024 | 71,219 | 6.61% | 25.2% |
| x6 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 896 | 0.0862% | 23.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 160 | 2.2k | 3.0k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 26 | 33 | 43 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.1k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 57 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.7k | 4.6k | 4.8k | 5.1k | 5.3k | 5.9k | 7.9k | 8.8k | 8.4k | 8.1k | 7.6k |
| x6 |  |  |  |  |  | 63 | 50 | 66 | 69 | 67 | 79 | 96 | 94 | 98 | 115 | 99 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 9 | 9 | 9 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 85,391  | 20             | 35      |

### Most common values

| Value                           | Filings | Share |
|---------------------------------|---------|-------|
| `333 W WACKER DRIVE SUITE 1700` | 96      | 9.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BOYER JOHN 1ST T-P-C-C-M FD-CHAR TR | POSTSRASSE 71 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349102300_public.xml) |
| 2024 | 990PF | x5 | Lee Chu Family Foundation | 251 Willow Avenue | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610139349100201_public.xml) |
| 2013 | 990PF | x4 | FRIENDS OF THE RUSSIAN FOUNDATION FOR | AVENUE DE RUMINE 51 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511349349101786_public.xml) |
| 2013 | 990PF | x3 | Thomas R and Kathy S McPherson Family F… | 300 Inverrary Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442879349100314_public.xml) |
| 2012 | 990PF | x2 | MAXINMOTION | 3A JABOTINSKY ST 29TH FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331569349100703_public.xml) |
| 2012 | 990PF | x1 | THE PETER AND SUSAN STRAUSS FAMILY FOUN… | 621 NORTH BEVERLY DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400459349100565_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
