# SK_06_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_06_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SK-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-K-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

3.5k

filings with a value

2010–2012

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 19% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleK/Form990ScheduleKPartV/ReturnReference: longest value is exactly 75 characters; IRS990ScheduleK/Form990ScheduleKPartVI/ReturnReference: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartV/ReturnReference` | SZ | 2010–2010 | 621 | 0.505% | 33.2% |
| x2 | `IRS990ScheduleK/Form990ScheduleKPartVI/ReturnReference` | SZ | 2011–2012 | 2,888 | 1.06% | 34.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 621 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 984 | 1.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 3,509   | 21             | 75      |

### Most common values

| Value                               | Filings | Share |
|-------------------------------------|---------|-------|
| `0`                                 | 659     | 28.8% |
| `SCHEDULE K`                        | 402     | 17.6% |
| `DATE REBATE COMPUTATION PERFORMED` | 300     | 13.1% |
| `Schedule K, Part IV, Line 2c`      | 162     | 7.1%  |
| `Part VI`                           | 130     | 5.7%  |
| `Schedule K, Part II, Line 3`       | 100     | 4.4%  |
| `Date Rebate Computation Performed` | 93      | 4.1%  |
| `DESCRIPTION OF PURPOSE`            | 87      | 3.8%  |
| `SCHEDULE K, PART II, LINE 3`       | 84      | 3.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | Phoenix Children's Hospital | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |
| 2010 | 990 | x1 | Orlando Lutheran Towers Inc | Purpose of Bond Issuance | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201142629349300414_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_06_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
