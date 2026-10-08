# SH_06_EXPLANATION_PART_03_L8

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PART_03_L8

Additional explanation for part 3 line 8

- Description: Part III; line 8 (see SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

1.2k

filings with a value

2009–2009

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/Form990ScheduleHPartVI/ShortfallAsCommunityBenefit: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/ShortfallAsCommunityBenefit` | SZ | 2009–2009 | 1,247 | 3.74% |  |
| x2 | `IRS990ScheduleH/Form990ScheduleHPartVI/PartIIILine8` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,247   | 617            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Part III, Line 8: Ascension Health and related health ministries follow the Catholic Heal…` | 26 | 17.6% |
| `Describe the costing methodology used to determine the Medicare allowable costs reported …` | 22 | 14.9% |
| `Part III, Line 8: Similar to CHA recommendations, which state that serving Medicare patie…` | 17 | 11.5% |
| `SERVING PATIENTS WITH GOVERNMENT HEALTH BENEFITS, SUCH AS MEDICARE, IS A COMPONENT OF THE…` | 14 | 9.5% |
| `AS A CATHOLIC HEALTH CARE MINISTRY, THE ORGANIZATION FOLLOWS THE CATHOLIC HEALTH ASSOCIAT…` | 13 | 8.8% |
| `Part III, Line 8: Medicare allowable costs of care are based on the Medicare cost report.…` | 12 | 8.1% |
| `Part III, Line 8: WE CAN'T GET THE PAYMENT AND MEDICARE ALLOWABLE COST INFORMATION FROM T…` | 12 | 8.1% |
| `The hospital continually strives to provide excellent patient care in the most cost effec…` | 12 | 8.1% |
| `(A) Describe the costing methodology used to determine the Medicare allowable costs repor…` | 10 | 6.8% |
| `Part III, Line 8: Part III, Line 6: Medicare allowable costs reflected in Part III come d…` | 10 | 6.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | QUEEN OF THE VALLEY MEDICAL CENTER | AS A CATHOLIC HEALTH CARE MINISTRY, THE ORGANIZATION FOLLOWS THE CATHOLIC HEALT… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201101319349303155_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PART_03_L8, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
