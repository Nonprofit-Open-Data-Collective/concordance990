# SL_03_GRANT_INT_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_03_GRANT_INT_NAME_ORG_L1

Interested organization name line 1

- Description: Name Of Interested Business - BusinessNameLine1

- Table:

  [`SL-P03-T01-GRANTS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p03-t01-grants-interested-pers)
  (many)

- Part: Part III - Grants or Assistance Benefiting Interested Persons

- Location:

  `SCHED-L-PART-03-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

2.6k

filings with a value

2009–2024

tax years observed

1 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedBusiness/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedBusiness/BusinessNameLine1` | SZ | 2009–2012 | 498 | 0.0585% | 27.5% |
| x2 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 161 | 0.0531% | 25.5% |
| x3 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 1,981 | 0.0335% | 28.6% |
| x4 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedPerson/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 53 | 129 | 156 | 160 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 161 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 142 | 144 | 159 | 157 | 159 | 192 | 209 | 201 | 215 | 250 | 153 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 |  | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,614   | 20             | 75      |
| 990-EZ | 26      | 22             | 30      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 165     | 26.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LORAS COLLEGE | SUBJECT TO FERPA LAWS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202631049349300048_public.xml) |
| 2013 | 990 | x2 | THE SIGMA ALPHA MU FOUNDATION | SIGMA ALPHA MU FRATERNITY INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500129349301425_public.xml) |
| 2012 | 990 | x1 | The Ayn Rand Institute The Center for | TOF Publications | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420449349302292_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_03_GRANT_INT_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
