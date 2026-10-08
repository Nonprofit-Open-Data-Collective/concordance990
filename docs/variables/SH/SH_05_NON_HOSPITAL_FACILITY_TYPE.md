# SH_05_NON_HOSPITAL_FACILITY_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_NON_HOSPITAL_FACILITY_TYPE

Non-hospital health care facility type

- Description: Other Facilities - Facility type

- Table:

  [`SH-P05-T02-NON-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t02-non-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-D-COL-02`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

22k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVSectionC/OtherFacilities/FacilityType: longest value is exactly 100 characters; IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/OthHlthCareFcltsGrp/FacilityTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionC/OtherFacilities/FacilityType` | SZ | 2010–2012 | 4,161 | 0.818% | 84.6% |
| x2 | `IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/OthHlthCareFcltsGrp/FacilityTxt` | SZ | 2013–2024 | 17,549 | 0.245% | 85.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.3k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.5k | 1.5k | 1.5k | 1.5k | 1.6k | 1.5k | 1.5k | 1.6k | 1.5k | 1.6k | 1.5k | 678 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 21,710  | 22             | 100     |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `RURAL HEALTH CLINIC`         | 1,650   | 21.0% |
| `CLINIC`                      | 975     | 12.4% |
| `SKILLED NURSING FACILITY`    | 858     | 10.9% |
| `OUTPATIENT CLINIC`           | 780     | 9.9%  |
| `PHYSICAL THERAPY`            | 598     | 7.6%  |
| `PHYSICIAN CLINIC`            | 543     | 6.9%  |
| `AMBULATORY SURGERY CENTER`   | 497     | 6.3%  |
| `OUTPATIENT PHYSICIAN CLINIC` | 420     | 5.3%  |
| `URGENT CARE`                 | 352     | 4.5%  |
| `PRIMARY CARE`                | 281     | 3.6%  |
| `HOME HEALTH`                 | 236     | 3.0%  |
| `IMAGING CENTER`              | 226     | 2.9%  |
| `HOME HEALTH AGENCY`          | 147     | 1.9%  |
| `Rural Health Clinic`         | 117     | 1.5%  |
| `NURSING HOME`                | 68      | 0.9%  |
| `OUTPATIENT SERVICES`         | 32      | 0.4%  |
| `DIAGNOSTIC CENTER`           | 31      | 0.4%  |
| `PHARMACY`                    | 23      | 0.3%  |
| `SPECIALTY CLINIC`            | 20      | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | UNION HOSPITAL INC | MAMMOGRAPHY CENTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | Community Based Residential Co-occurring Facility | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_NON_HOSPITAL_FACILITY_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
