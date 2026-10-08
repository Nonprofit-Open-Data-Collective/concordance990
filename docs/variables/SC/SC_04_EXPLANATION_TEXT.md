# SC_04_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_04_EXPLANATION_TEXT

Additional explanations

- Description: Explanation

- Table:

  [`SC-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-C-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

138k

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
| ⓘ info | No sign of truncation | IRS990ScheduleC/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Form990ScheduleCPartIV/Explanation` | SZ | 2009–2012 | 20,889 | 2.56% | 4.4% |
| x2 | `IRS990ScheduleC/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 117,257 | 1.75% | 5.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 5.2k | 6.2k | 7.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.5k | 8.5k | 8.9k | 9.2k | 9.7k | 9.9k | 10k | 11k | 11k | 12k | 12k | 8.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 131,959 | 310            | 9,000   |
| 990-EZ | 6,187   | 197            | 6,192   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `NONE` | 500 | 13.1% |
| `Lobbying expenses represent the portion of dues paid to national and state hospital assoc…` | 378 | 9.9% |
| `Officers and/or Board Members of the corporation may, to an insubstantial degree, make co…` | 249 | 6.5% |
| `THE ORGANIZATION HAS MADE NO LOBBYING OR POLITICAL EXPENDITURES.` | 244 | 6.4% |
| `Statement Regarding Legislative Activity: Health care policy is critical to all Americans…` | 233 | 6.1% |
| `THE PORTION OF ORGANIZATION DUES THAT ARE RELATED TO LOBBYING ARE AS FOLLOWS: AMERICAN HO…` | 205 | 5.4% |
| `N/A` | 162 | 4.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | CLEVELAND CLINIC ENGAGES IN HEALTH CARE RELATED LOBBYING ACTIVITIES IN FURTHERA… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | SOUTH LYON HEALTH CENTER DBA | THE ORGANIZATION IS A MEMBER OF NEVADA HOSPITAL ASSOCIATION. A PORTION OF MEMBE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_04_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
