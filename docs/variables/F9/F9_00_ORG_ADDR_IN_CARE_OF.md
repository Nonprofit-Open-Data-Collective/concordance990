# F9_00_ORG_ADDR_IN_CARE_OF

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_IN_CARE_OF

In care of

- Description: In care of

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-C`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

2 / 2

xpaths observed / mapped

410k

filings with a value

2009–2024

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | Filer/InCareOfNm: longest value is exactly 35 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 132.1x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 24.1x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 195.0x year-on-year (in 2011) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/InCareOfName` | PC | 2009–2012 | 21,069 | 3.51% |  |
| x2 | `Filer/InCareOfNm` | PC | 2013–2024 | 389,303 | 15.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22 | 78 | 10.0k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 15k | 16k | 17k | 18k | 19k | 23k | 34k | 45k | 49k | 50k | 90k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 5 | 5 | 5 | 5 | 13 |
| 990-EZ | \<1 | \<1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 3 | 4 | 7 | 8 | 8 | 20 |
| 990-PF | \<1 | \<1 | 5 | 6 | 8 | 8 | 8 | 8 | 7 | 7 | 8 | 11 | 12 | 12 | 12 | 15 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 188,547 | 17             | 35      |
| 990-EZ | 108,888 | 16             | 35      |
| 990-PF | 112,936 | 18             | 35      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `% Foundation Source` | 14,912  | 54.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HEALDSBURG FUTURE FARMERS COUNTRY FAIR | % JESS ASCOOP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543509349300129_public.xml) |
| 2012 | 990 | x1 | OAKBEND MEDICAL GROUP | % DONNA BARTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349309410_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_IN_CARE_OF, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
