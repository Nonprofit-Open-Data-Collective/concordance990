# SD_03_COLLEC_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_03_COLLEC_OTH_DESC

Collection used for other purposes description

- Description: Collection Used For Other - DescriptionOfOtherPurposes

- Table:

  [`SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p03-t00-orgs-collect-art-hist-treasure-oth)
  (one)

- Part: Part III - Organizations Maintaining Collections of Art,
  Historical Treasures, or Other Similar Assets

- Location:

  `SCHED-D-PART-03-LINE-03E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

6.2k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/CollectionUsedForOther/DescriptionOfOtherPurposes` | SZ | 2009–2012 | 1,054 | 0.183% |  |
| x2 | `IRS990ScheduleD/CollectionUsedOtherPurposesGrp/OtherPurposesDesc` | SZ | 2013–2024 | 5,180 | 0.109% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIII/CollectionUsedForOtherPurposes/DescriptionOfOtherPurposes` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 143 | 266 | 316 | 329 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 344 | 368 | 391 | 404 | 451 | 455 | 464 | 502 | 508 | 495 | 496 | 302 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 6,234   | 19             | 95      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `EDUCATION` | 681     | 45.7% |
| `Education` | 175     | 11.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | FUNDRAISING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | MASSACHUSETTS SCHOOL OF PROFESSIONAL | IMPROVE LEARNING ENVIRONMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440389349300009_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_03_COLLEC_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
