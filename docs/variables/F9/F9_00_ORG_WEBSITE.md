# F9_00_ORG_WEBSITE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_WEBSITE

Website

- Description: Website

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-J`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

5.2M

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
| ⓘ info | No sign of truncation | IRS990EZ/WebSite: longest value is exactly 100 characters; IRS990EZ/WebsiteAddressTxt: longest value is exactly 100 characters; IRS990/WebsiteAddressTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/WebSite` | PC | 2009–2012 | 448,258 | 59.2% |  |
| x2 | `IRS990EZ/WebSite` | EZ | 2009–2012 | 228,696 | 30.9% |  |
| x3 | `IRS990/WebsiteAddressTxt` | PC | 2013–2024 | 2,956,404 | 52.2% |  |
| x4 | `IRS990EZ/WebsiteAddressTxt` | EZ | 2013–2024 | 1,577,942 | 30.5% |  |
| x5 | `IRS990/Form990PartI/WebSite` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 31k | 111k | 144k | 162k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 14k | 56k | 74k | 84k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 178k | 196k | 209k | 218k | 234k | 242k | 252k | 280k | 294k | 305k | 309k | 238k |
| x4 |  |  |  |  | 93k | 104k | 111k | 115k | 122k | 129k | 131k | 143k | 162k | 164k | 163k | 139k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 90 | 90 | 90 | 90 | 90 | 90 | 90 | 89 | 89 | 89 | 88 | 87 | 87 | 87 | 86 |
| 990-EZ | 92 | 89 | 90 | 90 | 90 | 89 | 89 | 88 | 88 | 87 | 86 | 84 | 80 | 79 | 79 | 78 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,404,657 | 16             | 100     |
| 990-EZ | 1,806,635 | 13             | 100     |

### Most common values

| Value                              | Filings   | Share |
|------------------------------------|-----------|-------|
| `N/A`                              | 1,677,492 | 95.9% |
| (blank)                            | 21,466    | 1.2%  |
| `NONE`                             | 21,253    | 1.2%  |
| `n/a`                              | 13,413    | 0.8%  |
| `None`                             | 2,845     | 0.2%  |
| `WWW.NATIONALCHURCHRESIDENCES.ORG` | 1,767     | 0.1%  |
| `WWW.ACCESSIBLESPACE.ORG`          | 1,687     | 0.1%  |
| `N A`                              | 1,555     | 0.1%  |
| `WWW.RHF.ORG`                      | 1,545     | 0.1%  |
| `SEE SCHEDULE O`                   | 1,132     | 0.1%  |
| `WWW.MERCYHOUSING.ORG`             | 907       | 0.1%  |
| `WWW.NCR.ORG`                      | 890       | 0.1%  |
| `none`                             | 624       | 0.0%  |
| `NOT APPLICABLE`                   | 533       | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | SAINT CLAIR HOUSE INC | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | OWLCREEKCC.COM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | aftcinc@bellsouth.net | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | HTTP://WWW.EXHIBITORSLINK.COM/INDEX.HTML | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_WEBSITE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
