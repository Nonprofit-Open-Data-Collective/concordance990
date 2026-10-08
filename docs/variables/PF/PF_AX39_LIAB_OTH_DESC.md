# PF_AX39_LIAB_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX39_LIAB_OTH_DESC

Other liabilities schedule - description

- Description: Other Liabilities - Description

- Table:

  [`PF-P99-T39-LIAB-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t39-liab-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-39`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

108k

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
| ⓘ info | No sign of truncation | OtherLiabilitiesSchedule/OtherLiabilitiesDetail/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherLiabilitiesSchedule/OtherLiabilities/Description` | PF | 2009–2012 | 9,376 | 9.54% | 27.4% |
| x2 | `OtherLiabilitiesSchedule/OtherLiabilitiesDetail/Desc` | PF | 2013–2024 | 98,547 | 9.11% | 27.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 293 | 2.2k | 3.1k | 3.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.7k | 5.4k | 5.7k | 6.0k | 6.6k | 7.1k | 8.1k | 11k | 11k | 11k | 11k | 10k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 12 | 9 | 9 | 10 | 10 | 10 | 10 | 10 | 10 | 9 | 9 | 9 | 9 | 9 | 9 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 107,923 | 20             | 100     |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `Rounding`            | 4,340   | 17.2% |
| `CREDIT CARD PAYABLE` | 3,984   | 15.8% |
| `PAYROLL LIABILITIES` | 3,302   | 13.1% |
| `EXCISE TAX PAYABLE`  | 3,021   | 12.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE GRIMM FAMILY EDUCATION FOUNDATION | LEASE LIABILITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601059349100815_public.xml) |
| 2012 | 990PF | x1 | Duane Reade Charitable Foundation | Funds held for others | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321559349100512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX39_LIAB_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
