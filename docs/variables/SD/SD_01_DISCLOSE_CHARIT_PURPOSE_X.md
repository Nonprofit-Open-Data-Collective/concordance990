# SD_01_DISCLOSE_CHARIT_PURPOSE_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_01_DISCLOSE_CHARIT_PURPOSE_X

Informed all grantees, donors, and advisors in writing that grant funds
must be used for charitable purpose \[x\]

- Description: Did the organization inform all grantees; donors; and
  donor advisors in writing that grant funds may be used only for
  charitable purposes and not for the benefit of the donor or donor
  advisor?

- Table:

  [`SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p01-t00-orgs-donor-advised-funds-oth)
  (one)

- Part: Part I - Organizations Maintaining Donor Advised Funds or Other
  Similar Funds or Accounts

- Location:

  `SCHED-D-PART-01-LINE-06`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

101k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 71% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 12.3x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/DisclosedForCharitablePurposes` | SZ | 2009–2012 | 54,412 | 1.38% |  |
| x2 | `IRS990ScheduleD/DisclosedForCharitablePrpsInd` | SZ | 2013–2024 | 46,709 | 0.966% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartI/DisclosedForCharitablePurposes` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.9k | 20k | 27k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.8k | 2.5k | 2.8k | 3.1k | 3.4k | 3.6k | 4.0k | 5.3k | 5.1k | 5.4k | 5.8k | 2.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 15 | 16 | 17 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 69,372  | 68.6% |
| `1`     | 16,923  | 16.7% |
| `true`  | 12,891  | 12.7% |
| `0`     | 1,935   | 1.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Upward Bound Community Development Corp… | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530909349301753_public.xml) |
| 2012 | 990 | x1 | United Methodist Foundation of Indiana … | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333179349301843_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_01_DISCLOSE_CHARIT_PURPOSE_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
