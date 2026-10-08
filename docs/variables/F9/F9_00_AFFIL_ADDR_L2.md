# F9_00_AFFIL_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_AFFIL_ADDR_L2

Group return - subordinate street address line 2

- Description: Group return - subordinate street address line 2

- Table:

  [`F9-P00-T01-AFFILIATE-LISTING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t01-affiliate-listing)
  (many)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

3 / 3

xpaths observed / mapped

140

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 10% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliateListing/Affiliate/AddressUS/AddressLine2` | PC | 2010–2012 | 24 | 0.00329% | 66.7% |
| x2 | `AffiliateListing/AffiliateListingGrp/USAddress/AddressLine2` | PC | 2013–2013 | 8 | 0.00264% | 62.5% |
| x3 | `AffiliateListing/AffiliateListingGrp/USAddress/AddressLine2Txt` | PC | 2014–2024 | 108 | 0.00285% | 57.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 8 | 7 | 9 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6 | 9 | 7 | 6 | 5 | 6 | 14 | 13 | 14 | 15 | 13 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 140     | 11             | 34      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `10A` | 6       | 3.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | BETA THETA PI FRATERNITY GROUP RETURN | UNION 203 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601009349300345_public.xml) |
| 2013 | 990 | x2 | NATIONAL ASSOCIATION OF PERSONAL | SUITE 109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413569349300346_public.xml) |
| 2012 | 990 | x1 | MIT ENTERPRISE FORUM INC GROUP RETURN | A-124 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441349349306149_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_AFFIL_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
