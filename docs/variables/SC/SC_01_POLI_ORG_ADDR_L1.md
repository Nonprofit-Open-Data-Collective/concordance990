# SC_01_POLI_ORG_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_POLI_ORG_ADDR_L1

Political organization street address line 1

- Description: Sec527 Pol Orgs-Address Foreign - AddressLine1

- Table:

  [`SC-P01-T01-POLITICAL-ORGS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t01-political-orgs-info)
  (many)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-C-LINE-05-COL-B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

28k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleC/Sec527PolOrgs/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleC/Section527PoliticalOrgGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Sec527PolOrgs/AddressUS/AddressLine1` | SZ | 2009–2012 | 3,044 | 0.434% | 28.0% |
| x2 | `IRS990ScheduleC/Sec527PolOrgs/AddressForeign/AddressLine1` | SZ | 2010–2012 | 4 | 0.000366% | 25.0% |
| x3 | `IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 1,312 | 0.433% | 27.1% |
| x4 | `IRS990ScheduleC/Section527PoliticalOrgGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x5 | `IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 23,602 | 0.497% | 27.9% |
| x6 | `IRS990ScheduleC/Section527PoliticalOrgGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2023 | 18 | 0.000356% | 16.7% |
| x7 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 122 | 778 | 957 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.3k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.5k | 1.7k | 1.9k | 2.0k | 2.2k | 2.1k | 2.4k | 2.4k | 2.6k | 2.5k | 2.3k |
| x6 |  |  |  |  |  | 1 | 2 | 4 | 1 | 1 | 1 | 2 | 2 | 2 | 2 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 25,408  | 18             | 35      |
| 990-EZ | 2,573   | 16             | 35      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `158 MAIN STREET` | 856     | 39.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x5 | AVMED INC | 2600 SW 37TH AVENUE UNIT 900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533099349303308_public.xml) |
| 2023 | 990 | x6 | Index Industry Association | Avenue Marnix 23 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202421729349300002_public.xml) |
| 2013 | 990 | x4 | Index Industry Association | Avenue Marnix 23 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402099349301355_public.xml) |
| 2013 | 990 | x3 | OREGON HOME BUILDERS ASSOCIATION | 375 TAYLOR ST NE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443049349300334_public.xml) |
| 2012 | 990 | x2 | International Association of Plumbing | PO Box 1690 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342839349301024_public.xml) |
| 2012 | 990 | x1 | IBEW Local Union 73 | PO Box 7081 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201340789349300209_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_POLI_ORG_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
