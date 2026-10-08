# SH_05_HOSPITAL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_HOSPITAL_NAME_L2

Hospital facility name line 2

- Description: Name - BusinessNameLine2

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

354

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartV/Name/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleH/Form990ScheduleHPartVSectionA/Name/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartV/Name/BusinessNameLine2` | SZ | 2009–2009 | 27 | 0.0811% | 40.7% |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVSectionA/Name/BusinessNameLine2` | SZ | 2010–2012 | 86 | 0.0156% | 19.8% |
| x3 | `IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 30 | 0.0151% | 13.3% |
| x4 | `IRS990ScheduleH/HospitalFacilitiesGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 211 | 0.00252% | 11.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 27 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 29 | 29 | 28 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 30 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 25 | 21 | 23 | 22 | 18 | 17 | 20 | 20 | 20 | 18 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 354     | 20             | 35      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `CENTER` | 25      | 13.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | COTEAU DES PRAIRIES HOSPITAL | HOSPITAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533119349300448_public.xml) |
| 2013 | 990 | x3 | KING'S DAUGHTERS HOSPITAL | OF YAZOO COUNTY INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201502259349303850_public.xml) |
| 2012 | 990 | x2 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | Hale Nohoana Ike | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |
| 2009 | 990 | x1 | SOCIEDAD ESPAOLA DE AUXILIO MUTUO | DE PUERTO RICO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349303134_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_HOSPITAL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
