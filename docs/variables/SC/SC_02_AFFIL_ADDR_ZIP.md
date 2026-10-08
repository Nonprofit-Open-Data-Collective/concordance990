# SC_02_AFFIL_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_AFFIL_ADDR_ZIP

Affiliated group member ZIP code

- Description: Affiliated group member ZIP code

- Table:

  [`SC-P02-T01-AFFILIATED-GROUP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t01-affiliated-group)
  (many)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

2.5k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 100.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2010, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AffiliatedGroupSchedule/AffiliatedSchedule/AddressUS/ZIPCode` | SZ | 2009–2012 | 363 | 0.0428% | 84.0% |
| x2 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 123 | 0.0406% | 79.7% |
| x3 | `AffiliatedGroupSchedule/AffiliatedScheduleGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 1,984 | 0.0274% | 81.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 58 | 90 | 98 | 117 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 123 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 126 | 145 | 165 | 182 | 166 | 182 | 208 | 216 | 225 | 244 | 125 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 2,302   | 85.4% |
| `999999999` | 392     | 14.6% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Casa Colina Hospital and Centers for He… | 91769 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610479349301421_public.xml) |
| 2013 | 990 | x2 | CITIZENS FOR COMMUNITY VALUES | 45241 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402239349301660_public.xml) |
| 2012 | 990 | x1 | MISSION ROAD MINISTRIES | 782143144 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430469349300303_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_AFFIL_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
