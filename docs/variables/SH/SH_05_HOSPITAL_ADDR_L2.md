# SH_05_HOSPITAL_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_ADDR_L2

Hospital facility street address line 2

- Description: Address - AddressLine2

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

251

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 15% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVSectionA/Address/AddressLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressLine2` | SZ | 2009–2009 | 17 | 0.051% | 35.3% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Address/AddressLine2` | SZ | 2010–2012 | 53 | 0.00835% | 1.9% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 18 | 0.00905% |  |
| x4 | `IRS990ScheduleH/HospitalFacilitiesGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 163 | 0.00361% | 1.2% |
| x5 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x6 | `IRS990ScheduleH/Form990ScheduleHPartV/Address/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 24 | 14 | 15 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 18 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 16 | 14 | 14 | 16 | 16 | 14 | 16 | 16 | 15 | 16 | 10 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 251     | 8              | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 18      | 9.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | THE CLEVELAND CLINIC FOUNDATION | RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x3 | MERCY HOSPITAL KINGFISHER INC | DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201541349349304379_public.xml) |
| 2012 | 990 | x2 | LODI MEMORIAL HOSPITAL ASSOCIATION INC | PHYS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313169349305246_public.xml) |
| 2009 | 990 | x1 | Grossmont Hospital Corporation | LL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201102229349301715_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
