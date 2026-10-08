# SH_01_FPG_DCNT_CARE_PCT_250_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_FPG_DCNT_CARE_PCT_250_X

Used 250% of federal poverty guidelines as the family income limit in
determining eligibility for providing discounted care \[x\]

- Description: IRS990 Schedule H - 250%

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-03B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Pcent250` | SZ | 2009–2012 | 510 | 0.0746% |  |
| x2 | `IRS990ScheduleH/Percent250Ind` | SZ | 2013–2024 | 1,411 | 0.0123% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartI/DiscountedCare/Pcent250` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 92 | 140 | 144 | 134 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 142 | 152 | 145 | 134 | 131 | 130 | 109 | 118 | 113 | 107 | 96 | 34 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 1,921   | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Hospital For Special Care | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620289349300642_public.xml) |
| 2012 | 990 | x1 | ST CROIX REGIONAL MEDICAL CENTER | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401339349301880_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_FPG_DCNT_CARE_PCT_250_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
