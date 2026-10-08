# SG_03_THIRD_PARTY_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_NAME_PERS

Thirty party - person name

- Description: Person name of third party

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

2 / 3

xpaths observed / mapped

2.3k

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/NameOfThirdPartyPerson: longest value is exactly 35 characters; IRS990ScheduleG/ThirdPartyPersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/NameOfThirdPartyPerson` | SZ | 2009–2012 | 222 | 0.0307% |  |
| x2 | `IRS990ScheduleG/ThirdPartyPersonNm` | SZ | 2013–2024 | 2,050 | 0.0443% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/NameOfThirdParty/PersonName` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 56 | 71 | 84 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 105 | 126 | 141 | 144 | 142 | 153 | 165 | 181 | 212 | 231 | 248 | 202 |
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
| 990    | 1,847   | 19             | 35      |
| 990-EZ | 425     | 17             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 79      | 18.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | ROANOKE LODGE 197 BPO ELKS | ARROW INTERNATIONAL INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522119349300212_public.xml) |
| 2012 | 990 | x1 | GREATER ANCHORAGEINC | JOHN POWERSTUDOR BINGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349305885_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
