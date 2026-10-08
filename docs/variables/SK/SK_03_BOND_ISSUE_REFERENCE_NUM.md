# SK_03_BOND_ISSUE_REFERENCE_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_03_BOND_ISSUE_REFERENCE_NUM

Bond issue reference number

- Description: Bond issue reference number (A-D)

- Table:

  [`SK-P03-T01-BOND-PRIVATE-BIZ-USE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p03-t01-bond-private-biz-use)
  (many)

- Part: Part III - Private Business Use

- Location:

  `SCHED-K-PART-03-LINE-00`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

71k

filings with a value

2012–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 4 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape A                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIII/BondReferenceCd` | SZ | 2012–2012 | 5,525 | 3.07% | 41.2% |
| x2 | `IRS990ScheduleK/TaxExemptBondsPrivateBusUseGrp/BondReferenceCd` | SZ | 2013–2024 | 64,993 | 0.992% | 40.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 5.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.6k | 5.7k | 5.7k | 5.6k | 6.0k | 5.7k | 5.7k | 5.7k | 5.6k | 5.5k | 5.4k | 2.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `A`   | 70,170  | 57.2% |
| `B`   | 28,890  | 23.5% |
| `C`   | 15,068  | 12.3% |
| `D`   | 8,623   | 7.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_03_BOND_ISSUE_REFERENCE_NUM, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
