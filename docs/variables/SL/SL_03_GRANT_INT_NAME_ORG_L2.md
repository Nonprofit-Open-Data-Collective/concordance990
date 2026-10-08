# SL_03_GRANT_INT_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_03_GRANT_INT_NAME_ORG_L2

Interested organization name line 2

- Description: Name Of Interested Business - BusinessNameLine2

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

36

filings with a value

2011–2024

tax years observed

1 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedBusiness/BusinessNameLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedBusiness/BusinessNameLine2` | SZ | 2011–2012 | 4 | 0.0011% | 25.0% |
| x2 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 2 | 0.00066% | 50.0% |
| x3 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 30 | 0.00132% | 50.0% |
| x4 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedPerson/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 1 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2 |  | 2 | 1 | 1 | 1 | 4 | 3 | 5 | 5 | 6 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 36      | 20             | 35      |

### Most common values

| Value                               | Filings | Share |
|-------------------------------------|---------|-------|
| `OVIDIO GARCIA EYE CLINIC COMIT GT` | 8       | 13.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | YAHARA PRIDE FARMS INC | ENDRES BERRYRIDGE FARMS LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349311751_public.xml) |
| 2013 | 990 | x2 | MENTAL HEALTH RESOURCE LEAGUE FOR | OF MCHENRY COUNTY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411579349300806_public.xml) |
| 2012 | 990 | x1 | PI BETA PHI HOUSE CORPORATION | WYOMING ALPHA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410489349301651_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_03_GRANT_INT_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
