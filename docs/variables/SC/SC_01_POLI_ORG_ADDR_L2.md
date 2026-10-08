# SC_01_POLI_ORG_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_POLI_ORG_ADDR_L2

Political organization street address line 2

- Description: Sec527 Pol Orgs-Address Foreign - AddressLine2

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

3 / 8

xpaths observed / mapped

488

filings with a value

2010–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 5% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Sec527PolOrgs/AddressUS/AddressLine2` | SZ | 2010–2012 | 61 | 0.00841% | 29.5% |
| x2 | `IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 24 | 0.00791% | 25.0% |
| x3 | `IRS990ScheduleC/Section527PoliticalOrgGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 403 | 0.0114% | 25.8% |
| x4 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleC/Form990ScheduleCPartI/Sec527PolOrgs/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |
| x6 | `IRS990ScheduleC/Sec527PolOrgs/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x7 | `IRS990ScheduleC/Section527PoliticalOrgGrp/ForeignAddress/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleC/Section527PoliticalOrgGrp/ForeignAddress/AddressLine2Txt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 22 | 16 | 23 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 29 | 32 | 34 | 33 | 33 | 36 | 49 | 29 | 34 | 42 | 52 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 436     | 12             | 35      |
| 990-EZ | 52      | 14             | 26      |

### Most common values

| Value         | Filings | Share |
|---------------|---------|-------|
| `PO Box 3107` | 53      | 20.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | FLORIDA SOCIETY OF RHEUMATOLOGYINC | 4150 BELFORT ROAD 551538 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523169349305852_public.xml) |
| 2013 | 990 | x2 | SEIU FLORIDA PUBLIC SERVICES UNION | SUITE 205 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403039349300310_public.xml) |
| 2012 | 990 | x1 | APPRAISAL INSTITUTE | Suite 1500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323119349300837_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_POLI_ORG_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
