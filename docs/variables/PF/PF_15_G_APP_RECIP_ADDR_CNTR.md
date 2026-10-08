# PF_15_G_APP_RECIP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_ADDR_CNTR

Country

- Description: Recipient Foreign Address - Country

- Table:

  [`PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t03-supplementary-info-grant-app)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-02A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 4

xpaths observed / mapped

681

filings with a value

2010–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 32 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientForeignAddress/Country` | PF | 2010–2012 | 54 | 0.0476% |  |
| x2 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/Country` | PF | 2013–2013 | 22 | 0.0479% |  |
| x3 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientForeignAddress/CountryCd` | PF | 2014–2024 | 605 | 0.0688% | 3.1% |
| x4 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientForeignAddress/Country` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 16 | 19 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 21 | 23 | 28 | 30 | 32 | 42 | 78 | 96 | 86 | 90 | 79 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `OC`  | 123     | 26.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | PORIJON INC | BG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101832_public.xml) |
| 2013 | 990PF | x2 | AMERICAN HOUSE FOUNDATION | HU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411269349100506_public.xml) |
| 2012 | 990PF | x1 | THE ETHEL AND W GEORGE KENNEDY | UV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322039349100107_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
