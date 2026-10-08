# F9_00_AFFIL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_AFFIL_NAME_L1

Group return - subordinate name line 1

- Description: Group return - subordinate name line 1

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
| ⓘ info | No sign of truncation | AffiliateListing/Affiliate/Name/BusinessNameLine1: longest value is exactly 75 characters; AffiliateListing/AffiliateListingGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; AffiliateListing/AffiliateListingGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliateListing/Affiliate/Name/BusinessNameLine1` | PC | 2009–2012 | 254 | 0.0322% | 78.3% |
| x2 | `AffiliateListing/AffiliateListingGrp/BusinessName/BusinessNameLine1` | PC | 2013–2013 | 99 | 0.0326% | 80.8% |
| x3 | `AffiliateListing/AffiliateListingGrp/BusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 1,380 | 0.0232% | 78.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21 | 66 | 79 | 88 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 99 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 113 | 110 | 118 | 116 | 112 | 100 | 148 | 160 | 157 | 140 | 106 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,733   | 33             | 75      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `SHRINERS INTERNATIONAL` | 95      | 28.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | EL RIAD SHRINERS GROUP RETURN | SHRINERS INTERNATIONAL- CORN PALACE SHRINE CLUB | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349302167_public.xml) |
| 2013 | 990 | x2 | Aurora Health Care Inc Group Return | Visiting Nurse Association of Wisconsin Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349304792_public.xml) |
| 2012 | 990 | x1 | SHRINERS INTERNATIONAL HADJI GROUP RETU… | SHRINERS INTERNATIONAL FT WALTON BEACH SHRINE CLUB | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349305110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_AFFIL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
