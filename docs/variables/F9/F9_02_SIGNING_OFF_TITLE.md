# F9_02_SIGNING_OFF_TITLE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_SIGNING_OFF_TITLE

Signing officer title

- Description: Signing Officer Title

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: text

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

2 / 2

xpaths observed / mapped

7.1M

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
| ⓘ info | No sign of truncation | BusinessOfficerGrp/PersonTitleTxt: longest value is exactly 35 characters; Officer/Title: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Officer/Title` | PC | 2009–2012 | 852,246 | 100% |  |
| x2 | `BusinessOfficerGrp/PersonTitleTxt` | PC | 2013–2024 | 6,280,104 | 100% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 212k | 276k | 313k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 349k | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 659k | 678k | 686k | 571k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,845,115 | 12             | 35      |
| 990-EZ | 2,135,878 | 10             | 35      |
| 990-PF | 1,151,314 | 10             | 35      |

### Most common values

| Value                      | Filings   | Share |
|----------------------------|-----------|-------|
| `PRESIDENT`                | 1,288,925 | 26.3% |
| `TREASURER`                | 911,943   | 18.6% |
| `President`                | 579,117   | 11.8% |
| `Treasurer`                | 533,473   | 10.9% |
| `EXECUTIVE DIRECTOR`       | 504,015   | 10.3% |
| `TRUSTEE`                  | 194,160   | 4.0%  |
| `DIRECTOR`                 | 191,132   | 3.9%  |
| `Executive Director`       | 174,978   | 3.6%  |
| `CEO`                      | 160,114   | 3.3%  |
| `CFO`                      | 126,086   | 2.6%  |
| `Director`                 | 64,257    | 1.3%  |
| `Trustee`                  | 50,842    | 1.0%  |
| `VICE PRESIDENT`           | 40,397    | 0.8%  |
| `CHAIRMAN`                 | 29,553    | 0.6%  |
| `MANAGING DIR`             | 25,028    | 0.5%  |
| `OFFICER`                  | 9,170     | 0.2%  |
| `Vice President`           | 7,213     | 0.1%  |
| `SVP Tax`                  | 4,573     | 0.1%  |
| `ASSISTANT VICE PRESIDENT` | 3,267     | 0.1%  |
| `SECRETARY`                | 1,396     | 0.0%  |
| `CHIEF FINANCIAL OFFICER`  | 533       | 0.0%  |
| `AUTHORIZED OFFICER`       | 484       | 0.0%  |
| `TAX MANAGER`              | 408       | 0.0%  |
| `president`                | 39        | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | PRESIDENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | Chairman | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_SIGNING_OFF_TITLE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
