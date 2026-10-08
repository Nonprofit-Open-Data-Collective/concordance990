# F9_00_AFFIL_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_AFFIL_ADDR_CITY

Group return - subordinate city

- Description: Group return - subordinate city

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

1.7k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliateListing/Affiliate/AddressUS/City` | PC | 2009–2012 | 254 | 0.0322% | 78.3% |
| x2 | `AffiliateListing/AffiliateListingGrp/USAddress/City` | PC | 2013–2013 | 98 | 0.0323% | 81.6% |
| x3 | `AffiliateListing/AffiliateListingGrp/USAddress/CityNm` | PC | 2014–2024 | 1,376 | 0.0232% | 78.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21 | 66 | 79 | 88 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 98 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 111 | 110 | 118 | 115 | 111 | 100 | 148 | 160 | 157 | 140 | 106 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,728   | 9              | 22      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `AUSTIN` | 67      | 8.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | GROUP SKILLSUSA INC | WASILLA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620159349300847_public.xml) |
| 2013 | 990 | x2 | PA DENTAL HYGIENISTS ASSOCIATION INC - | LEVITTOWN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401609349300120_public.xml) |
| 2012 | 990 | x1 | MENTAL HEALTH ASSOCIATION IN | LEBANON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349305875_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_AFFIL_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
