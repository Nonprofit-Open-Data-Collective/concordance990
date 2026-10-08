# SD_08_INVEST_PROG_RLTD_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_08_INVEST_PROG_RLTD_MOV

Program related investment - method of valuation

- Description: Method of valuation

- Table:

  [`SD-P08-T01-INVESTMENTS-PROG-RLTD`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p08-t01-investments-prog-rltd)
  (many)

- Part: Part VIII - Investments - Program Related

- Location:

  `SCHED-D-PART-08-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

68k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/InvestmentsProgramRelated/MethodOfValuation` | SZ | 2009–2012 | 9,936 | 1.92% | 50.1% |
| x2 | `IRS990ScheduleD/InvstProgramRelatedOrgGrp/MethodValuationCd` | SZ | 2013–2024 | 57,820 | 1.53% | 46.0% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVIII/InvestmentsProgramRelated/MethodOfValuation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 710 | 2.6k | 3.1k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.8k | 4.0k | 4.2k | 4.4k | 4.7k | 4.8k | 5.0k | 5.5k | 5.7k | 5.7k | 5.8k | 4.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 67,756  | 1              | 1       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `C`   | 42,040  | 59.3% |
| `F`   | 28,805  | 40.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HUNTERS POINT AFFORDABLE HOUSING INC | C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502769349301530_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | F | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_08_INVEST_PROG_RLTD_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
