# SL_03_GRANT_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_03_GRANT_PURPOSE

Purpose of assistance

- Description: Form990 Schedule LPart III - PurposeOfAssistance

- Table:

  [`SL-P03-T01-GRANTS-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p03-t01-grants-interested-pers)
  (many)

- Part: Part III - Grants or Assistance Benefiting Interested Persons

- Location:

  `SCHED-L-PART-03-COL-E`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

11k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/AssistancePurposeTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIII/PurposeOfAssistance` | SZ | 2012–2012 | 607 | 0.222% | 34.3% |
| x2 | `IRS990ScheduleL/GrntAsstBnftInterestedPrsnGrp/AssistancePurposeTxt` | SZ | 2013–2024 | 10,715 | 0.151% | 31.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 607 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 738 | 787 | 847 | 855 | 941 | 869 | 909 | 991 | 981 | 1.0k | 1.1k | 691 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 11,243  | 20             | 100     |
| 990-EZ | 79      | 13             | 30      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `EDUCATION`          | 611     | 18.4% |
| `FINANCIAL AID`      | 607     | 18.3% |
| `TUITION ASSISTANCE` | 586     | 17.6% |
| `SCHOLARSHIP`        | 363     | 10.9% |
| `TUITION`            | 332     | 10.0% |
| `Education`          | 194     | 5.8%  |
| `EDUCATIONAL`        | 120     | 3.6%  |
| `EMPLOYEE BENEFIT`   | 118     | 3.5%  |
| `Scholarship`        | 115     | 3.5%  |
| `TUITION REMISSION`  | 98      | 2.9%  |
| `Tuition Assistance` | 71      | 2.1%  |
| `Tuition assistance` | 38      | 1.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHESAPEAKE MONTESSORI FOUNDATION INC | TUITION ASSISTANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640559349301014_public.xml) |
| 2012 | 990 | x1 | The Ayn Rand Institute The Center for | Travel | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420449349302292_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_03_GRANT_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
