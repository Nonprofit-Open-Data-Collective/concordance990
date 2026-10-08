# SL_04_BIZTRANSAC_INT_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_04_BIZTRANSAC_INT_NAME_PERS

Interested person name

- Description: Name Of Interested - Name - Person

- Table:

  [`SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p04-t01-biz-transac-interested-pers)
  (many)

- Part: Part IV - Business Transactions Involving Interested Persons

- Location:

  `SCHED-L-PART-04-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

173k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/PersonNm: longest value is exactly 35 characters; IRS990ScheduleL/Form990ScheduleLPartIV/NameOfInterestedPerson/NamePerson: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIV/NameOfInterestedPerson/NamePerson` | SZ | 2009–2012 | 34,549 | 4.09% | 39.2% |
| x2 | `IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/PersonNm` | SZ | 2013–2024 | 138,446 | 1.8% | 34.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.8k | 8.9k | 11k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 12k | 12k | 12k | 12k | 12k | 12k | 12k | 12k | 12k | 12k | 11k | 8.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 11 | 7 | 7 | 6 | 6 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 3 | 3 | 3 | 3 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 171,508 | 16             | 35      |
| 990-EZ | 1,487   | 15             | 35      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `ANDERS PLETT`        | 591     | 7.5%  |
| `FRANK ROSSELLO JR`   | 591     | 7.5%  |
| `NADA BATTAGLIA`      | 591     | 7.5%  |
| `PETER OSCAR PEABODY` | 591     | 7.5%  |
| `CHERYL J HOWELL`     | 581     | 7.4%  |
| `STUART J HARTMAN`    | 479     | 6.1%  |
| `JOHN CLOW`           | 396     | 5.0%  |
| `DR LAVERNE R JOSEPH` | 394     | 5.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | WORKERS EDUCATION SOCIETY NFP | SHELBY RICHARDSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523099349301622_public.xml) |
| 2012 | 990 | x1 | BOARD OF CONTROL FOR SOUTHERN | BETSEY D AVERY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349301309_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_04_BIZTRANSAC_INT_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
