# PF_AX48_CONTRIBUTOR_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_STATE

Province or state

- Description: Province or state

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

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 60 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/USAddress/State` | PF | 2009–2012 | 8,981 | 9.14% | 22.2% |
| x2 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/ProvinceOrState` | PF | 2009–2012 | 51 | 0.0526% | 17.6% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/State` | PF | 2013–2013 | 4,134 | 9.01% | 24.0% |
| x4 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/ProvinceOrState` | PF | 2013–2013 | 32 | 0.0697% | 18.8% |
| x5 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 71,219 | 6.61% | 25.2% |
| x6 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 469 | 0.0444% | 19.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 160 | 2.2k | 3.0k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 12 | 16 | 21 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.1k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 32 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.7k | 4.6k | 4.8k | 5.1k | 5.3k | 5.9k | 7.9k | 8.8k | 8.4k | 8.1k | 7.6k |
| x6 |  |  |  |  |  | 34 | 25 | 33 | 34 | 39 | 41 | 52 | 47 | 51 | 62 | 51 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 9 | 9 | 9 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 13,048  | 22.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | GO FOUNDATION FKA | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349101850_public.xml) |
| 2024 | 990PF | x5 | THE WALDORF FAMILY FOUNDATION | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640659349101509_public.xml) |
| 2013 | 990PF | x4 | 613 TR | BEIT SHEMESH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201643209349103329_public.xml) |
| 2013 | 990PF | x3 | D K J L FAMILY FOUNDATION | NE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412519349100061_public.xml) |
| 2012 | 990PF | x2 | THE PATAGONIA SUR FOUNDATION | CANADA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342139349100009_public.xml) |
| 2012 | 990PF | x1 | THE PETER AND SUSAN STRAUSS FAMILY FOUN… | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400459349100565_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
