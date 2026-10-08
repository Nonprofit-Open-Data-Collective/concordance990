# SH_05_CHNA_AVBL_OTH_WEBSITE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_CHNA_AVBL_OTH_WEBSITE

Other website

- Description: Other website URL

- Table:

  [`SH-P05-T03-FACILITY-POLICIES-PRACTICES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t03-facility-policies-practices)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-B-LINE-07B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

4.3k

filings with a value

2013–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/OtherWebsiteURLTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/OtherWebsiteURLTxt` | SZ | 2013–2024 | 4,331 | 0.057% | 9.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 300 | 384 | 392 | 377 | 401 | 377 | 377 | 380 | 382 | 394 | 409 | 158 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,331   | 30             | 100     |

### Most common values

| Value                                  | Filings | Share |
|----------------------------------------|---------|-------|
| `SEE PART V, SECTION C`                | 385     | 28.1% |
| `SEE SECTION C`                        | 148     | 10.8% |
| `See Sch H Part VI - Needs Assessment` | 115     | 8.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | ST CATHERINE OF SIENA MEDICAL CENTER | WWW.CHSLI.ORG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349315465_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_CHNA_AVBL_OTH_WEBSITE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
