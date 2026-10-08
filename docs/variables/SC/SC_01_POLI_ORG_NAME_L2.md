# SC_01_POLI_ORG_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_POLI_ORG_NAME_L2

Political organization name line 2

- Description: Sec527 Pol Orgs - BusinessNameLine2

- Table:

  [`SC-P01-T01-POLITICAL-ORGS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t01-political-orgs-info)
  (many)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-C-LINE-05-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

994

filings with a value

2009–2024

tax years observed

1 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleC/Sec527PolOrgs/NameOf527Organization/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleC/Section527PoliticalOrgGrp/OrganizationBusinessName/BusinessNameLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Sec527PolOrgs/NameOf527Organization/BusinessNameLine2` | SZ | 2009–2012 | 130 | 0.0165% | 36.9% |
| x2 | `IRS990ScheduleC/Section527PoliticalOrgGrp/OrganizationBusinessName/BusinessNameLine2` | SZ | 2013–2013 | 58 | 0.0191% | 36.2% |
| x3 | `IRS990ScheduleC/Section527PoliticalOrgGrp/OrganizationBusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 806 | 0.0145% | 35.5% |
| x4 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/NameOf527Organization/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4 | 33 | 48 | 45 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 58 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 65 | 68 | 76 | 71 | 68 | 71 | 67 | 67 | 96 | 91 | 66 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 944     | 13             | 46      |
| 990-EZ | 50      | 14             | 35      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `PAC` | 63      | 16.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | INTERNATIONAL BROTHERHOOD OF TEAMSTERS | PAC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532799349300713_public.xml) |
| 2013 | 990 | x2 | MICHIGAN ASSOCIATION OF | ANESTHETISTS - PAC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201520169349300747_public.xml) |
| 2012 | 990 | x1 | National Marine Manufacturers Associati… | CAMPAIGN FUND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441709349300839_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_POLI_ORG_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
