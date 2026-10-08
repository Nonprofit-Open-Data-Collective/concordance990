# SN_02_DOA_RECIP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_NAME_ORG_L2

Recipient organization name line 2

- Description: Name Business - BusinessNameLine2

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

309

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionTable/NameBusiness/BusinessNameLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/NameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 38 | 0.00585% | 15.8% |
| x2 | `IRS990ScheduleN/DispositionOfAssetsDetail/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 14 | 0.00462% | 14.3% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 257 | 0.00636% | 25.3% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 13 | 8 | 16 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 13 | 20 | 20 | 24 | 23 | 27 | 32 | 22 | 26 | 21 | 29 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 212     | 21             | 52      |
| 990-EZ | 97      | 20             | 45      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `Archdiocese of San Antonio` | 7       | 4.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | NORTH AMERICAN SWISS ALLIANCE | GBU FINANCIAL LIFE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349304201_public.xml) |
| 2013 | 990 | x2 | KAPPA KAPPA GAMMA FRATERNITY INC | KAPPA KAPPA GAMMA HOUSE ASSOC INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443569349300119_public.xml) |
| 2012 | 990 | x1 | CEN TEX HUMANE SOCIETY | TEXAS HUMANE HEROS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201320769349300002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
