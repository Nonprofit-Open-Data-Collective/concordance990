# SH_05_HOSPITAL_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_ADDR_ZIP

Hospital facility zip

- Description: Address - ZIPCode

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
| ✓ pass | Values have the ZIP format | 100.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/ZIPCode` | SZ | 2009–2009 | 1,521 | 4.57% | 44.8% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Address/ZIPCode` | SZ | 2010–2012 | 7,398 | 1.37% | 18.7% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 2,426 | 1.22% | 17.1% |
| x4 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 24,360 | 0.353% | 17.1% |
| x5 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x6 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |

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

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 33,703  | 93.4% |
| `999999999` | 2,396   | 6.6%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | THE CLEVELAND CLINIC FOUNDATION | 44195 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x3 | OHIO VALLEY MEDICAL CENTER INCORPORATED | 26003 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413189349304736_public.xml) |
| 2012 | 990 | x2 | SOUTH LYON HEALTH CENTER DBA | 89447 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |
| 2009 | 990 | x1 | QUEEN OF THE VALLEY MEDICAL CENTER | 94558 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201101319349303155_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
