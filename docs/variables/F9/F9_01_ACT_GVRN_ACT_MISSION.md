# F9_01_ACT_GVRN_ACT_MISSION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_ACT_GVRN_ACT_MISSION

Mission or most significant activities

- Description: Organization mission or most signif activities

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.8M

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
| ⓘ info | No sign of truncation | IRS990/ActivityOrMissionDesc: longest value is exactly 1000 characters; IRS990/ActivityOrMissionDescription: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ActivityOrMissionDescription` | PC | 2009–2012 | 495,528 | 100% |  |
| x2 | `IRS990/ActivityOrMissionDesc` | PC | 2013–2024 | 3,349,613 | 100% |  |
| x3 | `IRS990/Form990PartI/ActivityOrMissionDescription` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,845,115 | 161            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SEE SCHEDULE O` | 23,004 | 41.0% |
| `See Schedule O` | 6,056 | 10.8% |
| `SEE PART III, LINE 1.` | 5,385 | 9.6% |
| `SEE SCHEDULE O.` | 5,279 | 9.4% |
| `LABOR UNION` | 4,376 | 7.8% |
| `EDUCATION` | 3,420 | 6.1% |
| `PROVIDE HOUSING FOR LOW AND MODERATE INCOME PERSONS.` | 2,023 | 3.6% |
| `SOCIAL CLUB` | 1,197 | 2.1% |
| `VOLUNTEER FIRE DEPARTMENT` | 1,171 | 2.1% |
| `FRATERNAL ORGANIZATION` | 1,077 | 1.9% |
| `LOW INCOME HOUSING` | 1,050 | 1.9% |
| `Promote social/economic justice through collective bargaining, meetings, education, commu…` | 914 | 1.6% |
| `TO PROVIDE ACCESSIBLE HOUSING FOR ADULTS WITH DISABILITIES AND SENIORS. ALSO TO PROVIDE S…` | 410 | 0.7% |
| `Title Holding Corporation For Real Property` | 298 | 0.5% |
| `To improve the health and well-being of all people in the communities we serve.` | 153 | 0.3% |
| `See Schedule O.` | 147 | 0.3% |
| `THE MISSION OF THE ORGANIZATION IS TO ENRICH THE LIVES OF OLDER ADULTS THROUGH SERVICE AN…` | 30 | 0.1% |
| `TO PROVIDE HEALTH AND WELFARE BENEFITS` | 28 | 0.0% |
| `Education` | 24 | 0.0% |
| `SEE STATEMENT 1` | 21 | 0.0% |
| `TO PROVIDE HEALTHCARE, INDEPENDENT AND AFFORDABLE HOUSING FOR THE ELDERLY, TRANSITIONAL S…` | 21 | 0.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | TRAINING AND RESEARCH: TRAINING FOR THOSE ENGAGED IN OR RELATED TO THE FIELD OF… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | PROVIDE FINANCIAL AND ACADEMIC ASSISTANCE FOR SAN DIEGO STUDENTS TO COMPLETE AN… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_ACT_GVRN_ACT_MISSION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
