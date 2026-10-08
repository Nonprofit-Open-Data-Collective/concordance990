# SH_05_HOSPITAL_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_ADDR_CITY

Hospital facility city

- Description: Address - City

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

4 / 6

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/City` | SZ | 2009–2009 | 1,521 | 4.57% | 44.8% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Address/City` | SZ | 2010–2012 | 7,398 | 1.37% | 18.7% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/City` | SZ | 2013–2013 | 2,426 | 1.22% | 17.1% |
| x4 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/CityNm` | SZ | 2014–2024 | 24,360 | 0.353% | 17.1% |
| x5 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x6 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressUS/City` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.5k | 2.5k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 2.3k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 980 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 35,705  | 9              | 22      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `CHICAGO`      | 214     | 12.8% |
| `BALTIMORE`    | 190     | 11.4% |
| `PHILADELPHIA` | 171     | 10.3% |
| `Chicago`      | 146     | 8.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | UNION HOSPITAL INC | TERRE HAUTE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |
| 2013 | 990 | x3 | StVincent Anderson Regional Hospital Inc | Anderson | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x2 | SOUTH LYON HEALTH CENTER DBA | YERINGTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |
| 2009 | 990 | x1 | St Vincent's East | Birmingham | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349302759_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
