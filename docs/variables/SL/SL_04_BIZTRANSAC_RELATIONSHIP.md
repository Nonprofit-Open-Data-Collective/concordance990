# SL_04_BIZTRANSAC_RELATIONSHIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_04_BIZTRANSAC_RELATIONSHIP

Relationship between interested person and the org

- Description: Relationship with organization

- Table:

  [`SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p04-t01-biz-transac-interested-pers)
  (many)

- Part: Part IV - Business Transactions Involving Interested Persons

- Location:

  `SCHED-L-PART-04-COL-B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

246k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/RelationshipDescriptionTxt: longest value is exactly 100 characters; IRS990ScheduleL/Form990ScheduleLPartIV/Relationship: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIV/Relationship` | SZ | 2009–2012 | 46,638 | 5.65% | 40.4% |
| x2 | `IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/RelationshipDescriptionTxt` | SZ | 2013–2024 | 199,122 | 2.7% | 35.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.8k | 12k | 15k | 15k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 16k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 10 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 6 | 6 | 5 | 5 | 5 | 5 | 4 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 243,784 | 25             | 100     |
| 990-EZ | 1,976   | 14             | 97      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `BOARD MEMBER`       | 16,338  | 29.6% |
| `DIRECTOR`           | 10,125  | 18.3% |
| `SEE PART V`         | 4,429   | 8.0%  |
| `PRESIDENT`          | 4,429   | 8.0%  |
| `OFFICER`            | 3,831   | 6.9%  |
| `Board Member`       | 3,519   | 6.4%  |
| `TRUSTEE`            | 3,423   | 6.2%  |
| `FAMILY MEMBER`      | 2,391   | 4.3%  |
| `TREASURER`          | 2,346   | 4.2%  |
| `Director`           | 2,154   | 3.9%  |
| `EXECUTIVE DIRECTOR` | 1,988   | 3.6%  |
| `SEE SCHEDULE O`     | 113     | 0.2%  |
| `Trustee`            | 84      | 0.2%  |
| `Board member`       | 43      | 0.1%  |
| `board member`       | 40      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | FAMILY MEMBER OF CONOR DELANEY, M.D., PH.D., CCF OFFICER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | SCI Board Member | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_04_BIZTRANSAC_RELATIONSHIP, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
