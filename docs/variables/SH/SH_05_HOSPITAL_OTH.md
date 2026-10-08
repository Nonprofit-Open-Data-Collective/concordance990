# SH_05_HOSPITAL_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_OTH

Hospital facility other description

- Description: Form990 Schedule HPart V - Other

- Table:

  [`SH-P05-T01-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t01-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-A-COL-10`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

9.5k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVSectionA/Other: longest value is exactly 100 characters; IRS990ScheduleH/HospitalFacilitiesGrp/OtherDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Other` | SZ | 2009–2009 | 709 | 2.13% | 62.3% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Other` | SZ | 2010–2012 | 1,893 | 0.347% | 18.0% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/OtherDesc` | SZ | 2013–2024 | 6,909 | 0.0963% | 14.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 709 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 651 | 618 | 624 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 629 | 622 | 610 | 586 | 609 | 577 | 593 | 603 | 589 | 616 | 608 | 267 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 9,511   | 25             | 100     |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `RURAL HEALTH CLINIC`             | 166     | 13.9% |
| `DISPROPORTIONATE SHARE HOSPITAL` | 166     | 13.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UNION HOSPITAL INC | PHYSICIAN PRACTICES, OFF CAMPUS THERAPY, RADIOLOGY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2012 | 990 | x2 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | Community Based Residential co-occurring Treatment Facility | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |
| 2009 | 990 | x1 | ADAIR COUNTY HEALTH CENTER INC | PHYSICIANS CLINIC HOME HEALTH PHYSICAL THERAPY GERIATRIC PSYCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201110469349302706_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_OTH, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
