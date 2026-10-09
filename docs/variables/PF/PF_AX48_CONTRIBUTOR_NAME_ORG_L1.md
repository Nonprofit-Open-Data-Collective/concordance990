# PF_AX48_CONTRIBUTOR_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_NAME_ORG_L1

Substantial contributor - business name line 1

- Description: Business Name - BusinessNameLine1

- Table:

  [`PF-P99-T48-CONTRIBUTOR`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t48-contributor)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-48`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

17k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | SubstantialContributorsSch/SubstantialContributor/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/BusinessName/BusinessNameLine1` | PF | 2009–2012 | 1,810 | 1.78% | 20.8% |
| x2 | `SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 832 | 1.81% | 21.4% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 14,289 | 1.48% | 23.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33 | 441 | 624 | 712 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 832 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 913 | 896 | 967 | 1.0k | 1.1k | 1.2k | 1.6k | 1.6k | 1.7k | 1.7k | 1.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 16,931  | 25             | 75      |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `SHENANDOAH FOUNDATION` | 42      | 10.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | UTAH GEOLOGICAL FOUNDATION | UTAH GEOLOGICAL ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511189349101211_public.xml) |
| 2013 | 990PF | x2 | JULIA LEE TAUBERT FOUNDATION | JULIA LEE TAUBERT CHARITABLE LEAD TRUST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401299349101800_public.xml) |
| 2012 | 990PF | x1 | THE MORAVITS FAMILY FOUNDATION | TJM RANCH LP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332419349100308_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
