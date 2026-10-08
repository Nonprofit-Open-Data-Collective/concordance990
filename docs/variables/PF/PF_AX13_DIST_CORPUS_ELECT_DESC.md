# PF_AX13_DIST_CORPUS_ELECT_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX13_DIST_CORPUS_ELECT_DESC

Election

- Description: Distribution From Corpus Election - Election

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-13`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

6.9k

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
| ⓘ info | No sign of truncation | DistributionFromCorpusElection/ElectionDesc: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DistributionFromCorpusElection/Election` | PF | 2009–2012 | 924 | 0.947% |  |
| x2 | `DistributionFromCorpusElection/ElectionDesc` | PF | 2013–2024 | 5,989 | 0.448% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 23 | 177 | 346 | 378 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 388 | 401 | 409 | 419 | 420 | 396 | 473 | 657 | 669 | 640 | 603 | 514 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 6,913   | 260            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PURSUANT TO IRC SEC. 4942(H)(2) AND REG. 53.4942(A)-3(D)(2), THE ABOVE REFERENCED FOUNDAT…` | 214 | 23.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | MARION BRADLEY VIA MEMORIAL FOUNDATION | AS TO THE TREATMENT OF QUALIFYING DISTRIBUTIONS PURSUANT TO IRC SECTION 4942(H)… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541349349103949_public.xml) |
| 2012 | 990PF | x1 | PETHERICK FAMILY FOUNDATION INC | PURSUANT TO CODE SEC. 4942(H)(2) AND REG. 53.4942(A)-3(D)(2), PETHERICK FAMILY … | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301289349100740_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX13_DIST_CORPUS_ELECT_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
