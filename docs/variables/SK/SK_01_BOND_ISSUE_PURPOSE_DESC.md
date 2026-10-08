# SK_01_BOND_ISSUE_PURPOSE_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_01_BOND_ISSUE_PURPOSE_DESC

Description of purpose

- Description: Description of purpose

- Table:

  [`SK-P01-T01-BOND-ISSUES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p01-t01-bond-issues)
  (many)

- Part: Part I - Bond Issues

- Location:

  `SCHED-K-PART-01-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

88k

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
| ⓘ info | No sign of truncation | IRS990ScheduleK/Form990ScheduleKPartI/DescriptionOfPurpose: longest value is exactly 100 characters; IRS990ScheduleK/TaxExemptBondsIssuesGrp/PurposeDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartI/DescriptionOfPurpose` | SZ | 2009–2012 | 19,466 | 3.22% | 41.3% |
| x2 | `IRS990ScheduleK/TaxExemptBondsIssuesGrp/PurposeDesc` | SZ | 2013–2024 | 68,498 | 1.06% | 40.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 5.2k | 5.6k | 5.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.8k | 6.0k | 6.0k | 6.0k | 6.3k | 6.0k | 6.0k | 6.0k | 6.0k | 5.9k | 5.7k | 2.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 87,964  | 34             | 100     |

### Most common values

| Value                          | Filings | Share |
|--------------------------------|---------|-------|
| `SEE PART VI`                  | 4,344   | 43.5% |
| `CONSTRUCTION`                 | 1,141   | 11.4% |
| `See Part VI`                  | 822     | 8.2%  |
| `CAPITAL IMPROVEMENTS`         | 532     | 5.3%  |
| `SEE SUPPLEMENTAL INFORMATION` | 451     | 4.5%  |
| `SEE SCHEDULE O`               | 438     | 4.4%  |
| `REFUNDING`                    | 354     | 3.5%  |
| `CAPITAL EXPENDITURES`         | 348     | 3.5%  |
| `REFINANCE`                    | 345     | 3.5%  |
| `SEE PART V`                   | 314     | 3.1%  |
| `CAPITAL PROJECTS`             | 215     | 2.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | REFINANCE 00 & 10 BOND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | Refinance Existing Debt | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_01_BOND_ISSUE_PURPOSE_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
