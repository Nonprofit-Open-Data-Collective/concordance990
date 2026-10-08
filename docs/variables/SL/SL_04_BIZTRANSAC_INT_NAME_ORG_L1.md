# SL_04_BIZTRANSAC_INT_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_04_BIZTRANSAC_INT_NAME_ORG_L1

Interested organization name line 1

- Description: Business Name - BusinessNameLine1

- Table:

  [`SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p04-t01-biz-transac-interested-pers)
  (many)

- Part: Part IV - Business Transactions Involving Interested Persons

- Location:

  `SCHED-L-PART-04-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

86k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990ScheduleL/Form990ScheduleLPartIV/NameOfInterestedPerson/NameBusiness/BusinessNameLine1: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIV/NameOfInterestedPerson/NameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 15,297 | 1.94% | 32.3% |
| x2 | `IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 5,711 | 1.88% | 31.9% |
| x3 | `IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/NameOfInterested/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 65,431 | 1.02% | 29.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.8k | 4.8k | 5.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.7k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 5.7k | 5.9k | 5.9k | 6.1k | 6.2k | 6.0k | 6.2k | 6.2k | 6.3k | 6.5k | 4.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 85,873  | 21             | 75      |
| 990-EZ | 566     | 21             | 61      |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `SUBSTANTIAL CONTRIBUTOR`   | 577     | 21.3% |
| `SEE PART V`                | 229     | 8.4%  |
| `DEBORAH J STOUFF`          | 160     | 5.9%  |
| `CONSTELLATION SCHOOLS LLC` | 151     | 5.6%  |
| `FRANK ROSSELLO JR`         | 142     | 5.2%  |
| `ANDERS PLETT`              | 127     | 4.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Angel Christian Television Trust Inc | Artisan 7 LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2013 | 990 | x2 | COLORADO INSTITUTE FOR DRUG DEVICE | FITZSIMONS REDEVELOPMENT AUTHORITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540289349300739_public.xml) |
| 2012 | 990 | x1 | TEAM BRECKENRIDGE SPORTS CLUB INC | LAVIN LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420389349300142_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_04_BIZTRANSAC_INT_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
