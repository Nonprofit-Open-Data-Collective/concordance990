# SK_01_BOND_ISSUER_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_01_BOND_ISSUER_NAME_L2

Issuer name line 2

- Description: Issuer Name - BusinessNameLine2

- Table:

  [`SK-P01-T01-BOND-ISSUES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p01-t01-bond-issues)
  (many)

- Part: Part I - Bond Issues

- Location:

  `SCHED-K-PART-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

2.5k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartI/IssuerName/BusinessNameLine2` | SZ | 2009–2012 | 518 | 0.0863% | 44.6% |
| x2 | `IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine2` | SZ | 2013–2013 | 182 | 0.0915% | 39.6% |
| x3 | `IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine2Txt` | SZ | 2014–2024 | 1,760 | 0.022% | 36.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 91 | 123 | 149 | 155 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 182 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 184 | 188 | 176 | 190 | 170 | 169 | 169 | 151 | 159 | 143 | 61 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,460   | 23             | 74      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `AUTHORITY` | 118     | 21.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CHO-YEH CAMP AND CONFERENCE CENTER | FINANCE CORPORATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349314665_public.xml) |
| 2013 | 990 | x2 | BROWNS VALLEY HEALTH CENTER | REVENUE NOTE 2009A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500229349300610_public.xml) |
| 2012 | 990 | x1 | SHOALS COMMITTEE ON PROGRAMS & EM- | BANK INDEPENDENT REVENUE BONDS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422249349302402_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_01_BOND_ISSUER_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
