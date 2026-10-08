# SD_13_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_13_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule DPart XIII - Explanation

- Table:

  [`SD-P13-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p13-t99-supplemental-info)
  (many)

- Part: Part XIII - Supplemental Information

- Location:

  `SCHED-D-PART-13`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

1.3M

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
| ⓘ info | No sign of truncation | IRS990ScheduleD/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/Form990ScheduleDPartXIV/Explanation` | SZ | 2009–2011 | 135,458 | 41.7% | 57.9% |
| x2 | `IRS990ScheduleD/Form990ScheduleDPartXIII/Explanation` | SZ | 2012–2012 | 71,082 | 39.6% | 54.3% |
| x3 | `IRS990ScheduleD/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 1,121,991 | 25.8% | 48.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19k | 50k | 67k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 71k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 78k | 84k | 87k | 90k | 95k | 96k | 98k | 104k | 106k | 107k | 106k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 56 | 41 | 42 | 40 | 39 | 38 | 37 | 37 | 36 | 35 | 35 | 32 | 31 | 31 | 30 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,328,531 | 325            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `ACCOUNTING PRINCIPLES GENERALLY ACCEPTED IN THE UNITED STATES OF AMERICA REQUIRE MANAGEME…` | 10,692 | 20.0% |
| `MANAGEMENT HAS EVALUATED THEIR INCOME TAX POSITIONS UNDER THE GUIDANCE INCLUDED IN ASC 74…` | 7,737 | 14.5% |
| `THE CORPORATION IS EXEMPT FROM FEDERAL INCOME TAX UNDER SECTION 501(C)(3) OF THE INTERNAL…` | 6,836 | 12.8% |
| `THE ORGANIZATION IS EXEMPT FROM FEDERAL INCOME TAXES UNDER SECTION 501(C)(3) OF THE INTER…` | 6,502 | 12.2% |
| `ACCOUNTING PRINCIPLES GENERALLY ACCEPTED IN THE UNITED STATES OF AMERICA REQUIRE PLAN MAN…` | 5,376 | 10.1% |
| `THE ORGANIZATION IS EXEMPT FROM FEDERAL INCOME TAX UNDER SECTION 501(C)(3) OF THE INTERNA…` | 3,757 | 7.0% |
| `Accounting principles generally accepted in the United States of America require manageme…` | 2,510 | 4.7% |
| `The financial statement effects of a tax position taken or expected to be taken are recog…` | 1,498 | 2.8% |
| `ROUNDING` | 1,444 | 2.7% |
| `THE ORGANIZATION IS A NOT-FOR-PROFIT ORGANIZATION THAT IS EXEMPT FROM INCOME TAXES UNDER …` | 1,248 | 2.3% |
| `FUNDRAISING EXPENSES` | 1,237 | 2.3% |
| `THE ACCOUNTING STANDARD ON ACCOUNTING FOR UNCERTAINTY IN INCOME TAXES ADDRESSES THE DETER…` | 1,223 | 2.3% |
| `UNCERTAIN TAX POSITIONS: MANAGEMENT HAS EVALUATED THEIR INCOME TAX POSITIONS UNDER THE GU…` | 897 | 1.7% |
| `THE ORGANIZATION RECOGNIZES THE EFFECT OF INCOME TAX POSITIONS ONLY IF THOSE POSITIONS AR…` | 860 | 1.6% |
| `BOOK / TAX DEPRECIATION DIFFERENCE 1` | 473 | 0.9% |
| `ROUNDING 1.` | 282 | 0.5% |
| `Management has evaluated their income tax positions under the guidance included in ASC 74…` | 185 | 0.3% |
| `THE SYSTEM ACCOUNTS FOR UNCERTAINTY IN INCOME TAX POSITIONS BY APPLYING A RECOGNITION THR…` | 162 | 0.3% |
| `U.S. GAAP REQUIRES MANAGEMENT TO EVALUATE TAX POSITIONS TAKEN BY THE ORGANIZATION AND REC…` | 158 | 0.3% |
| `THE CORPORATION HAS ADOPTED THE INCOME TAXES TOPIC OF THE FASB ACCOUNTING STANDARDS CODIF…` | 79 | 0.1% |
| `N/A` | 74 | 0.1% |
| `In 2009, the Corporation adopted the Income Taxes topic of the FASB Accounting Standards …` | 63 | 0.1% |
| `Effective July 1, 2009, the provisions of U.S. generally accepted accounting principles r…` | 45 | 0.1% |
| `THE ORGANIZATION FOLLOWS THE ACCOUNTING STANDARD FOR CONTINGENCIES IN EVALUATING UNCERTAI…` | 35 | 0.1% |
| `Not applicable` | 32 | 0.1% |
| `THE ORGANIZATION ADOPTED THE PROVISIONS OF FINANCIAL ACCOUNTING STANDARDS BOARD (FASB) IN…` | 32 | 0.1% |
| `Schedule D, Part X, Line 2 requires that the organization provide the text of the footnot…` | 31 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | THE COMPANY ACTS AS AGENT FOR THE CLIENTS IN ITS REPRESENTATIVE PAYEE PROGRAM W… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x2 | BAPTIST HEALTH AMBULATORY SERVICES INC | NOTES TO CONSOLIDATED FINANCIAL STATEMENTS (DOLLARS IN THOUSANDS) 10. INCOME TA… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |
| 2011 | 990 | x1 | THE JUNIOR LEAGUE OF BOCA RATON | Investment Related Fees -4,248. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201232269349301253_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_13_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
