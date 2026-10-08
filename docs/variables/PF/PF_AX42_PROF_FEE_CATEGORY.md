# PF_AX42_PROF_FEE_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX42_PROF_FEE_CATEGORY

Other professional fees schedule - category

- Description: Other Professional Fees - Category

- Table:

  [`PF-P99-T42-PROF-FEES-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t42-prof-fees-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-42`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

355k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | OtherProfessionalFeesSchedule/OtherProfessionalFeesDetail/CategoryTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherProfessionalFeesSchedule/OtherProfessionalFees/Category` | PF | 2009–2012 | 26,807 | 27.4% | 24.1% |
| x2 | `OtherProfessionalFeesSchedule/OtherProfessionalFeesDetail/CategoryTxt` | PF | 2013–2024 | 328,653 | 33.5% | 26.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 617 | 6.3k | 8.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 15k | 17k | 19k | 21k | 23k | 28k | 36k | 38k | 40k | 41k | 38k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 26 | 25 | 26 | 27 | 28 | 29 | 29 | 30 | 30 | 30 | 31 | 31 | 32 | 32 | 33 | 34 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 355,460 | 21             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `INVESTMENT MANAGEMENT FEES`     | 33,264  | 22.7% |
| `INVESTMENT FEES`                | 33,260  | 22.7% |
| `INVESTMENT ADVISORY FEES`       | 15,585  | 10.6% |
| `MANAGEMENT FEES`                | 11,571  | 7.9%  |
| `Investment Management Services` | 11,030  | 7.5%  |
| `PROFESSIONAL FEES`              | 9,355   | 6.4%  |
| `INVESTMNT MNGMNT FEES (NON-DED` | 9,117   | 6.2%  |
| `OTHER PROFESSIONAL FEES`        | 8,205   | 5.6%  |
| `ADVISORY FEES`                  | 6,771   | 4.6%  |
| `CONSULTING FEES`                | 6,312   | 4.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TRUSS MANUFACTURERES ASSOC OF TEXAS | TAX PREPERATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349102514_public.xml) |
| 2012 | 990PF | x1 | ALBANY GUARDIAN SOCIETY | INVESTMENT FEES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101060_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX42_PROF_FEE_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
