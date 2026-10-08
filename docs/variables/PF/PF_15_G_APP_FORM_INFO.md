# PF_15_G_APP_FORM_INFO

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_FORM_INFO

Form and Information and Materials To Include

- Description: Form and Information and Materials To Include

- Table:

  [`PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t03-supplementary-info-grant-app)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-02B`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

282k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/FormAndInfoAndMaterials: longest value is exactly 1000 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/FormAndInfoAndMaterialsTxt: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/FormAndInfoAndMaterials` | PF | 2009–2012 | 29,172 | 28.4% | 1.8% |
| x2 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/FormAndInfoAndMaterialsTxt` | PF | 2013–2024 | 252,865 | 21.8% | 1.6% |
| x3 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/FormAndInfoAndMaterials` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 765 | 7.3k | 9.8k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 14k | 16k | 16k | 18k | 19k | 21k | 28k | 28k | 28k | 28k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 28 | 28 | 28 | 27 | 26 | 26 | 26 | 25 | 24 | 24 | 23 | 23 | 22 | 22 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 282,037 | 96             | 1,000   |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `N/A`             | 11,359  | 31.6% |
| `NONE`            | 7,663   | 21.4% |
| `LETTER`          | 4,618   | 12.9% |
| `WRITTEN REQUEST` | 2,359   | 6.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CALVIN P HORN FOUNDATION | THERE ARE NO SPECIFIC FORMS FOR APPLICATIONS. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543299349100609_public.xml) |
| 2012 | 990PF | x1 | W TOM ZURSCHMIEDE FOUNDATION | NO SPECIFIC GUIDELINES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349100902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_FORM_INFO, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
