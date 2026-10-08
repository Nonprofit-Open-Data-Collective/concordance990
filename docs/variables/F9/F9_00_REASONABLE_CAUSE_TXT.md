# F9_00_REASONABLE_CAUSE_TXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_REASONABLE_CAUSE_TXT

Reasonable-cause explanation for not filing on time.

- Description: If the return isn't filed by the due date (including any
  extension granted), provide a reasonable-cause explanation giving the
  reasons for not filing on time.

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-X`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

107k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ReasonableCauseExplanation/Explanation` | PC | 2009–2012 | 10,532 | 0.963% |  |
| x2 | `ReasonableCauseExplanation/ExplanationTxt` | PC | 2013–2024 | 96,140 | 1.81% | 0.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 959 | 3.5k | 3.1k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 3.6k | 3.9k | 3.7k | 5.3k | 4.9k | 6.2k | 13k | 16k | 14k | 13k | 10k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 990-EZ | 4 | 3 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 3 | 5 | 4 | 3 | 3 |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 | 1 | 1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 46,669  | 242            | 8,964   |
| 990-EZ | 55,801  | 228            | 8,978   |
| 990-PF | 4,202   | 470            | 6,265   |

### Most common values

| Value                                          | Filings | Share |
|------------------------------------------------|---------|-------|
| `LATE FILED RETURN DUE TO CCH SOFTWARE OUTAGE` | 949     | 16.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | GOD ANSWERS PRAYER MINISTRIES INC | ANSWERING PRAYER VARIOUS PRAYER REQUEST AND HELPING THE COMMUNITES AND INDIVIDU… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520859349201307_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | Request for extension was submitted in October 2013 outside of efile system. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_REASONABLE_CAUSE_TXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
