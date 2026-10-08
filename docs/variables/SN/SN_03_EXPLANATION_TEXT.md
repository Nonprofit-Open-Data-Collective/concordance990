# SN_03_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_03_EXPLANATION_TEXT

Additional explanations

- Description: Explanatory text

- Table:

  [`SN-P03-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p03-t99-supplemental-info)
  (many)

- Part: Part III - Supplemental Information

- Location:

  `SCHED-N-PART-03`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

17k

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
| ⓘ info | No sign of truncation | IRS990ScheduleN/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/Form990ScheduleNPartIII/Explanation` | SZ | 2009–2012 | 2,374 | 0.294% | 36.1% |
| x2 | `IRS990ScheduleN/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 15,111 | 0.279% | 35.0% |
| x3 | `IRS990ScheduleN/ExplanatoryText` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartIII/ExplanatoryText` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 184 | 617 | 770 | 803 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 991 | 1.0k | 1.0k | 1.2k | 1.2k | 1.3k | 1.3k | 1.4k | 1.4k | 1.6k | 1.5k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 11,966  | 251            | 9,000   |
| 990-EZ | 5,519   | 197            | 8,810   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE CHAPTER CEASED OPERATIONS UNDER ITS PRIOR EIN, AND ALL ASSETS AND LIABILITIES WERE TR…` | 47 | 5.1% |
| `Texas Health Resources (THR) is the parent company of a network of hospitals and affiliat…` | 42 | 4.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | ECORITY | THE ORGANIZATION DID NOT HAVE ANY ASSETS TO DISTRIBUTE. FUNDING WAS OBTAINED TO… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543509349300449_public.xml) |
| 2012 | 990 | x1 | MCKENNA MEMORIAL HOSPITAL | WES STUDDARD - CHAIRMAN BILL VAN KLEEF - VICE CHAIRMAN RANDY VANSTORY - SECRETA… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342969349300029_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_03_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
