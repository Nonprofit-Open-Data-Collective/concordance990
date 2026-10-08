# SI_03_GRANT_US_INDIV_DESC_NONCSH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_03_GRANT_US_INDIV_DESC_NONCSH

Description of noncash assistance

- Description: Description of non-cash assistance

- Table:

  [`SI-P03-T01-GRANTS-US-INDIV`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p03-t01-grants-us-indiv)
  (many)

- Part: Part III - Grants and Other Assistance to Domestic Individuals

- Location:

  `SCHED-I-PART-03-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

101k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/Form990ScheduleIPartIII/DescriptionOfNonCashAssistance: longest value is exactly 1000 characters; IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/NonCashAssistanceDesc: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIII/DescriptionOfNonCashAssistance` | SZ | 2009–2012 | 12,864 | 2.5% | 29.4% |
| x2 | `IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/NonCashAssistanceDesc` | SZ | 2013–2024 | 87,750 | 2.45% | 28.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.0k | 3.9k | 4.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.9k | 5.6k | 6.0k | 6.4k | 7.2k | 7.2k | 7.7k | 8.5k | 8.7k | 9.2k | 9.5k | 6.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 2 | 3 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 100,614 | 29             | 1,000   |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `N/A`                | 15,141  | 54.9% |
| `FOOD`               | 3,639   | 13.2% |
| `SCHOLARSHIPS`       | 1,512   | 5.5%  |
| `NONE`               | 1,131   | 4.1%  |
| `FINANCIAL AID`      | 1,071   | 3.9%  |
| `CLOTHING`           | 1,050   | 3.8%  |
| `TUITION REDUCTION`  | 789     | 2.9%  |
| (blank)              | 782     | 2.8%  |
| `0`                  | 773     | 2.8%  |
| `Food`               | 673     | 2.4%  |
| `TUITION ASSISTANCE` | 577     | 2.1%  |
| `n/a`                | 414     | 1.5%  |
| `Financial Aid`      | 16      | 0.1%  |
| `Tuition reduction`  | 15      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FEEDING AVERY FAMILIES INC | FOOD ASSISTANCE TO THE NEEDY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521689349300707_public.xml) |
| 2012 | 990 | x1 | Colleagues of the Arts | none | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411309349300016_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_03_GRANT_US_INDIV_DESC_NONCSH, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
