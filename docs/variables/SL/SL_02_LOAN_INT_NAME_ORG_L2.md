# SL_02_LOAN_INT_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_INT_NAME_ORG_L2

Interested organization name line 2

- Description: Name Business - BusinessNameLine2

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

654

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/LoanTable/NameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 80 | 0.0102% | 22.5% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 34 | 0.0112% | 29.4% |
| x3 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 540 | 0.0112% | 15.7% |
| x4 | `IRS990ScheduleL/Form990ScheduleLPartII/LoanTable/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 23 | 28 | 28 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 34 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 38 | 46 | 48 | 48 | 48 | 49 | 49 | 52 | 60 | 51 | 51 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 546     | 19             | 63      |
| 990-EZ | 108     | 20             | 37      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `ASHLEY LYNN'S` | 10      | 6.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | RESURFACE RECOVERY INC | OUTPATIENT RECOVERY CENTER & ASSOC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501899349200405_public.xml) |
| 2013 | 990 | x2 | NATURE CONSERVANCY | Trustee of the Ananda Fund | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2012 | 990EZ | x1 | HORIZONS EDUCATION SERVICES OF VA | GO STUFF IT LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349201953_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_INT_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
