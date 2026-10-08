# SH_05_NON_HOSPITAL_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_NON_HOSPITAL_ADDR_CITY

Non-hospital health care facility city

- Description: Address - City

- Table:

  [`SH-P05-T02-NON-HOSPITAL-FACILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t02-non-hospital-facility)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-D-COL-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionC/OtherFacilities/Address/City` | SZ | 2010–2012 | 4,161 | 0.818% | 84.6% |
| x2 | `IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/OthHlthCareFcltsGrp/USAddress/City` | SZ | 2013–2013 | 1,493 | 0.751% | 84.5% |
| x3 | `IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/OthHlthCareFcltsGrp/USAddress/CityNm` | SZ | 2014–2024 | 16,056 | 0.245% | 85.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.3k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.5k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.5k | 1.5k | 1.5k | 1.6k | 1.5k | 1.5k | 1.6k | 1.5k | 1.6k | 1.5k | 678 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 21,710  | 9              | 22      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `CANTON`       | 224     | 12.0% |
| `MONROE`       | 164     | 8.8%  |
| `SPRINGFIELD`  | 156     | 8.4%  |
| `BROOKLYN`     | 150     | 8.0%  |
| `PHILADELPHIA` | 146     | 7.8%  |
| `MADISON`      | 142     | 7.6%  |
| `HAMILTON`     | 138     | 7.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UNION HOSPITAL INC | TERRE HAUTE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2013 | 990 | x2 | PRINCE WILLIAM HOSPITAL | MANASSAS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443189349300434_public.xml) |
| 2012 | 990 | x1 | SOUTH LYON HEALTH CENTER DBA | YERINGTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_NON_HOSPITAL_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
