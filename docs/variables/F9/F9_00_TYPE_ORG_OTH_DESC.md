# F9_00_TYPE_ORG_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_TYPE_ORG_OTH_DESC

Other form of organization description

- Description: Form of organization: Other Description

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-K`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

3 / 4

xpaths observed / mapped

132k

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
| ⓘ info | No sign of truncation | IRS990EZ/TypeOfOrganizationOtherDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TypeOfOrgOtherDescription` | PC | 2009–2012 | 9,451 | 1.22% |  |
| x2 | `IRS990/OtherOrganizationDsc` | PC | 2013–2024 | 63,205 | 1.33% |  |
| x3 | `IRS990EZ/TypeOfOrganizationOtherDesc` | EZ | 2013–2024 | 59,794 | 1.8% |  |
| x4 | `IRS990/Form990PartI/TypeOfOrgOtherDescription` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 465 | 2.5k | 3.1k | 3.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k | 3.9k | 4.0k | 4.2k | 4.4k | 4.6k | 4.9k | 6.5k | 6.8k | 7.1k | 7.1k | 6.1k |
| x3 |  |  |  |  | 2.2k | 2.4k | 2.7k | 2.8k | 3.0k | 3.2k | 3.5k | 5.0k | 8.6k | 9.0k | 9.1k | 8.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ |  |  |  |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 4 | 4 | 4 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 72,655  | 12             | 82      |
| 990-EZ | 59,792  | 13             | 100     |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `LABOR UNION`  | 5,953   | 15.3% |
| `FOUNDATION`   | 5,355   | 13.7% |
| `LLC`          | 4,131   | 10.6% |
| `NON PROFIT`   | 3,678   | 9.4%  |
| `CREDIT UNION` | 3,087   | 7.9%  |
| `UNION`        | 2,908   | 7.5%  |
| `NON-PROFIT`   | 2,691   | 6.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | INTEGRITY EMPOWERMENT SERVICES | Non profit | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501129349201520_public.xml) |
| 2024 | 990 | x2 | VETERANS OF FOREIGN WARS OF THE UNITED … | LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512949349300006_public.xml) |
| 2012 | 990 | x1 | Central South Carpenters Regional Counci | Labor Organization | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349309550_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_TYPE_ORG_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
