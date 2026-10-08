# SH_05_HOSPITAL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_NAME_L1

Hospital facility name line 1

- Description: Name - BusinessNameLine1

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

4 / 4

xpaths observed / mapped

36k

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
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Name/BusinessNameLine1` | SZ | 2009–2009 | 1,525 | 4.58% | 44.8% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Name/BusinessNameLine1` | SZ | 2010–2012 | 7,404 | 1.37% | 18.7% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 2,438 | 1.23% | 17.1% |
| x4 | `IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 24,524 | 0.355% | 17.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.5k | 2.5k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.4k | 2.3k | 2.4k | 2.3k | 985 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 35,891  | 28             | 75      |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `COMMUNITY MEMORIAL HOSPITAL` | 68      | 11.1% |
| `GOOD SAMARITAN HOSPITAL`     | 67      | 11.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | UNION HOSPITAL INC | UNION HOSPITAL INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2013 | 990 | x3 | OHIO VALLEY MEDICAL CENTER INCORPORATED | Ohio Valley Medical Center | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413189349304736_public.xml) |
| 2012 | 990 | x2 | SOUTH LYON HEALTH CENTER DBA | SOUTH LYON MEDICAL CENTER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |
| 2009 | 990 | x1 | SOUTH SHORE HOSPITAL INC | South Shore Hospital Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201142279349302314_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
