# SG_03_THIRD_PARTY_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_NAME_ORG_L1

Thirty party - organization name line 1

- Description: Business Name - BusinessNameLine1

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

4.4k

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
| x1 | `IRS990ScheduleG/NameOfThirdPartyBusiness/BusinessNameLine1` | SZ | 2009–2012 | 462 | 0.0618% |  |
| x2 | `IRS990ScheduleG/ThirdPartyBusinessName/BusinessNameLine1` | SZ | 2013–2013 | 166 | 0.0547% |  |
| x3 | `IRS990ScheduleG/ThirdPartyBusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 3,728 | 0.0967% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartIII/NameOfThirdParty/BusinessName/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 115 | 159 | 169 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 166 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 200 | 222 | 242 | 264 | 274 | 287 | 377 | 438 | 467 | 516 | 441 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 3,418   | 21             | 60      |
| 990-EZ | 938     | 21             | 46      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `LOYAL LADY ENTERPRISES` | 52      | 9.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | CHILI OPEN GOLF CLASSIC INC | BEDFORD TRAILS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630779349200833_public.xml) |
| 2013 | 990 | x2 | BENEVOLENT & PROTECTIVE ORDER OF TIFTON… | ALL AMERICAN FOOD STORES INC DBA SOUTH GEORGIA AMUSEMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401819349300810_public.xml) |
| 2012 | 990 | x1 | AMERICAN LEGION POST \#18 | D&E Music & Vending | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341639349300129_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
