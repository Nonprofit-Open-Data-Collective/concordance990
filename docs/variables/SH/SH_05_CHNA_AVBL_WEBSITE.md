# SH_05_CHNA_AVBL_WEBSITE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_CHNA_AVBL_WEBSITE

Hospital facility website

- Description: Hospital facilities website URL

- Table:

  [`SH-P05-T03-FACILITY-POLICIES-PRACTICES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t03-facility-policies-practices)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-B-LINE-07A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

25k

filings with a value

2013–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/OwnWebsiteURLTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/OwnWebsiteURLTxt` | SZ | 2013–2024 | 25,146 | 0.335% | 7.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 2.0k | 2.2k | 2.2k | 2.2k | 2.3k | 2.2k | 2.2k | 2.2k | 2.2k | 2.2k | 2.2k | 928 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 25,146  | 33             | 100     |

### Most common values

| Value                                   | Filings | Share |
|-----------------------------------------|---------|-------|
| `SEE PART V, SECTION C`                 | 1,935   | 34.9% |
| `SEE SCHEDULE H, PART V, SECTION C`     | 681     | 12.3% |
| `SEE PART V, PAGE 8`                    | 637     | 11.5% |
| `See Part V, Section C`                 | 353     | 6.4%  |
| `https://healthcare.ascension.org/CHNA` | 336     | 6.1%  |
| `See Part V, Page 8`                    | 314     | 5.7%  |
| `See Section C`                         | 241     | 4.3%  |
| `SEE SECTION C`                         | 195     | 3.5%  |
| `SEE SUPPLEMENTAL INFORMATION`          | 179     | 3.2%  |
| `SEE PART V`                            | 109     | 2.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | THE CLEVELAND CLINIC FOUNDATION | SEE PART V, SECTION C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_CHNA_AVBL_WEBSITE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
