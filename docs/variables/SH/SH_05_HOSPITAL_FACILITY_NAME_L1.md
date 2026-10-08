# SH_05_HOSPITAL_FACILITY_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_FACILITY_NAME_L1

Hospital facility name line 1

- Description: Hospital Facility Name - BusinessNameLine1

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

34k

filings with a value

2010–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionB/HospitalFacilityName/BusinessNameLine1` | SZ | 2010–2012 | 7,206 | 1.34% | 13.1% |
| x2 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine1` | SZ | 2013–2013 | 2,401 | 1.21% | 8.9% |
| x3 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/HospitalFacilityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 24,266 | 0.349% | 7.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.4k | 2.4k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.4k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 967 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 33,873  | 26             | 75      |

### Most common values

| Value                          | Filings | Share |
|--------------------------------|---------|-------|
| `A`                            | 1,690   | 41.7% |
| `FACILITY REPORTING GROUP - A` | 603     | 14.9% |
| (blank)                        | 299     | 7.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UNION HOSPITAL INC | FACILITY REPORTING GROUP - A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2013 | 990 | x2 | Alexian Brothers Behavioral Health Hosp… | Alexian Brothers Behavioral Health Hospi | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501279349301430_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | Powell Valley Hospital | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_FACILITY_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
