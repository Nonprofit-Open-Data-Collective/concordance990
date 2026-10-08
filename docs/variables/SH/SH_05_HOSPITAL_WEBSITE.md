# SH_05_HOSPITAL_WEBSITE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_WEBSITE

Hospital facility website

- Description: Form990 Schedule HPart VSection A - WebsiteAddress

- Table:

  [`SH-P05-T01-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t01-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-A-COL-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

22k

filings with a value

2012–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFacilitiesGrp/WebsiteAddressTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/WebsiteAddress` | SZ | 2012–2012 | 756 | 0.421% | 20.6% |
| x2 | `IRS990ScheduleH/HospitalFacilitiesGrp/WebsiteAddressTxt` | SZ | 2013–2024 | 21,617 | 0.309% | 17.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 756 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.5k | 1.7k | 1.8k | 1.8k | 2.0k | 2.0k | 1.9k | 2.0k | 2.0k | 2.0k | 2.0k | 857 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 22,373  | 25             | 100     |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `www.texashealth.org` | 193     | 13.5% |
| `www.bswhealth.com`   | 173     | 12.1% |
| `WWW.MERCY.NET`       | 153     | 10.7% |
| `WWW.PROMEDICA.ORG`   | 112     | 7.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GEISINGER JERSEY SHORE HOSPITAL | WWW.GEISINGER.ORG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349319477_public.xml) |
| 2012 | 990 | x1 | Fletcher Allen Health Care Inc | www.fletcherallen.org | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402269349304310_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_WEBSITE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
