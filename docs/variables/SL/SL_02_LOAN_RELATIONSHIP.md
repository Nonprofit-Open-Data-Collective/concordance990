# SL_02_LOAN_RELATIONSHIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_02_LOAN_RELATIONSHIP

Relationship with org

- Description: Relationship with organization

- Table:

  [`SL-P02-T01-LOANS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p02-t01-loans-interested-pers)
  (many)

- Part: Part II - Loans to and/or From Interested Persons

- Location:

  `SCHED-L-PART-02-COL-B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

117k

filings with a value

2012–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/LoanTable/RelationshipWithOrganization: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/LoanTable/RelationshipWithOrganization` | SZ | 2012–2012 | 5,502 | 2.01% | 28.8% |
| x2 | `IRS990ScheduleL/LoansBtwnOrgInterestedPrsnGrp/RelationshipWithOrgTxt` | SZ | 2013–2024 | 111,689 | 1.79% | 27.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.9k | 8.0k | 8.8k | 9.1k | 9.7k | 10.0k | 10k | 10k | 10k | 10k | 10k | 8.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 |
| 990-EZ |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 91,728  | 13             | 98      |
| 990-EZ | 25,463  | 11             | 95      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `PRESIDENT`          | 12,615  | 20.2% |
| `DIRECTOR`           | 9,290   | 14.9% |
| `OFFICER`            | 8,697   | 14.0% |
| `President`          | 6,123   | 9.8%  |
| `EXECUTIVE DIRECTOR` | 5,355   | 8.6%  |
| `BOARD MEMBER`       | 5,163   | 8.3%  |
| `Director`           | 5,105   | 8.2%  |
| `CEO`                | 4,487   | 7.2%  |
| `Officer`            | 2,910   | 4.7%  |
| `Executive Director` | 2,561   | 4.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Everyone's Counseling Center Inc | Officer | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511029349300221_public.xml) |
| 2012 | 990 | x1 | University Mound Ladies Home | DIRECTOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349302832_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_02_LOAN_RELATIONSHIP, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
