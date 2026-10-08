# SG_03_GAMING_MGR_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_MGR_NAME_ORG_L1

Gaming manager - organization name line 1

- Description: Business Name - BusinessNameLine1

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-16`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 5

xpaths observed / mapped

5.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleG/GamingManagerBusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingManagerNameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 722 | 0.0984% |  |
| x2 | `IRS990ScheduleG/GamingManagerBusinessName/BusinessNameLine1` | SZ | 2013–2013 | 293 | 0.0966% |  |
| x3 | `IRS990ScheduleG/GamingManagerBusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 4,847 | 0.0991% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingManagerName/BusinessName/BusinessNameLine1` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleG/Form990ScheduleGPartIII/NameOfGamingRecordsKeeper/BusinessName/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 43 | 172 | 238 | 269 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 293 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 338 | 387 | 425 | 464 | 438 | 436 | 370 | 464 | 506 | 567 | 452 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 5,261   | 15             | 75      |
| 990-EZ | 601     | 15             | 55      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 511     | 52.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Floyd E Breedlove Post 9182 | Katy Bingo | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502959349200325_public.xml) |
| 2013 | 990 | x2 | THE PARENTS ASSOCIATION OF COLUMBUS ACA… | CAROL ANDERSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540479349301694_public.xml) |
| 2012 | 990 | x1 | MOUNT CARMEL HEALTH SYSTEM FOUNDATION | PAM MAHANEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349302643_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_MGR_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
