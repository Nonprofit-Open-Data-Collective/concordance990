# SH_05_HOSPITAL_FACILITY_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_FACILITY_NAME_L2

Hospital facility name line 2

- Description: Hospital Facility Name - BusinessNameLine2

- Table:

  [`SH-P05-T03-FACILITY-POLICIES-PRACTICES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t03-facility-policies-practices)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-B-LINE-00`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

175

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionB/HospitalFacilityName/BusinessNameLine2` | SZ | 2010–2012 | 13 | 0.00223% | 46.2% |
| x2 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine2` | SZ | 2013–2013 | 6 | 0.00302% | 50.0% |
| x3 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine2Txt` | SZ | 2014–2024 | 156 | 0.00252% | 0.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 5 | 4 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 4 | 17 | 15 | 17 | 13 | 13 | 18 | 18 | 18 | 16 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 175     | 20             | 35      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `CENTER` | 15      | 10.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | JEFFERSON COUNTY MEMORIAL HOSPITAL INC | FW Huston Medical Center | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531359349312333_public.xml) |
| 2013 | 990 | x2 | ARNOT OGDEN MEDICAL CENTER | Health Center for Women | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433179349301333_public.xml) |
| 2012 | 990 | x1 | HIGHLINE MEDICAL CENTER | Main Campus | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349303130_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_FACILITY_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
