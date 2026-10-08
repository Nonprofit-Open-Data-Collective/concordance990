# SK_05_BOND_ISSUE_REFERENCE_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_05_BOND_ISSUE_REFERENCE_NUM

Bond issue reference number

- Description: Bond issue reference number (A-D)

- Table:

  [`SK-P05-T01-PROCEDURE-CORRECTIVE-ACT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p05-t01-procedure-corrective-act)
  (many)

- Part: Part V - Procedures To Undertake Corrective Action

- Location:

  `SCHED-K-PART-05`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

68k

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
| x1 | `IRS990ScheduleK/Form990ScheduleKPartV/BondReferenceCd` | SZ | 2012–2012 | 3,995 | 2.22% | 41.6% |
| x2 | `IRS990ScheduleK/ProceduresCorrectiveActionGrp/BondReferenceCd` | SZ | 2013–2024 | 64,130 | 1.01% | 41.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 4.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.9k | 5.3k | 5.6k | 5.6k | 6.0k | 5.7k | 5.7k | 5.8k | 5.7k | 5.6k | 5.5k | 2.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `A`   | 68,078  | 57.0% |
| `B`   | 28,134  | 23.5% |
| `C`   | 14,765  | 12.4% |
| `D`   | 8,514   | 7.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_05_BOND_ISSUE_REFERENCE_NUM, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
