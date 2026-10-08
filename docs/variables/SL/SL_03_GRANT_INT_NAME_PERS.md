# SL_03_GRANT_INT_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_03_GRANT_INT_NAME_PERS

Interested person name

- Description: Name of interested person - Person

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

2 / 3

xpaths observed / mapped

10k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedPerson: longest value is exactly 35 characters; IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/PersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedPerson` | SZ | 2009–2012 | 2,187 | 0.226% | 38.0% |
| x2 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/PersonNm` | SZ | 2013–2024 | 8,048 | 0.11% | 39.1% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartIII/NameOfInterestedPerson/NamePerson` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 328 | 566 | 675 | 618 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 672 | 657 | 666 | 660 | 682 | 653 | 672 | 719 | 736 | 735 | 693 | 503 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 10,132  | 15             | 35      |
| 990-EZ | 103     | 14             | 29      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| (blank)   | 295     | 32.8% |
| `Various` | 97      | 10.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | LIVE OAK A LEARNING CENTER FOR CHILDREN | VOLTAIRE VILLANUEVA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640729349301709_public.xml) |
| 2012 | 990 | x1 | GALVESTON COUNTY FAIR & RODEO INC | SAYDE REEDER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349300205_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_03_GRANT_INT_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
