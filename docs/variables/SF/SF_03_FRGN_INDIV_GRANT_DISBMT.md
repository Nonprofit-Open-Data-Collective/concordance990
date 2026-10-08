# SF_03_FRGN_INDIV_GRANT_DISBMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_03_FRGN_INDIV_GRANT_DISBMT

Manner of cash disbursement

- Description: Way the cash was disbursed to the individuals outside the
  US

- Table:

  [`SF-P03-T01-FRGN-INDIV-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p03-t01-frgn-indiv-grants)
  (many)

- Part: Part III - Grants and Other Assistance to Individuals Outside
  the United States

- Location:

  `SCHED-F-PART-03-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

26k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/ForeignIndividualsGrantsGrp/MannerOfCashDisbursementTxt: longest value is exactly 100 characters; IRS990ScheduleF/GrantsToIndOutsideUS/MannerOfCashDisbursement: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToIndOutsideUS/MannerOfCashDisbursement` | SZ | 2009–2012 | 3,319 | 0.636% | 59.3% |
| x2 | `IRS990ScheduleF/ForeignIndividualsGrantsGrp/MannerOfCashDisbursementTxt` | SZ | 2013–2024 | 22,924 | 0.732% | 57.7% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartIII/GrantsToIndOutsideUS/MannerOfCashDisbursement` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 330 | 818 | 1.0k | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.3k | 1.4k | 1.5k | 1.6k | 1.8k | 1.8k | 1.9k | 2.0k | 2.3k | 2.5k | 2.6k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 26,243  | 12             | 100     |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `CHECK`         | 3,430   | 24.0% |
| `WIRE TRANSFER` | 3,107   | 21.7% |
| `WIRE`          | 2,751   | 19.2% |
| `CASH`          | 1,051   | 7.3%  |
| `Wire`          | 919     | 6.4%  |
| `Check`         | 885     | 6.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OZER OLAM INC | CASH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543089349301619_public.xml) |
| 2012 | 990 | x1 | MINORITIES FOR CHRIST INTERNATIONAL | PRIMARILY CHECK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349305856_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_03_FRGN_INDIV_GRANT_DISBMT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
