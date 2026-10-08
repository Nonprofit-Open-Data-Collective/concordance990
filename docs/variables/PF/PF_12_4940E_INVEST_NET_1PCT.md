# PF_12_4940E_INVEST_NET_1PCT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_12_4940E_INVEST_NET_1PCT

1% of Section 4940(e) Organizations Net Investment Income

- Description: 1% of Section 4940(e) Organizations Net Investment Income

- Table:

  [`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p12-t00-qualifying-distributions)
  (one)

- Part: Part XII - Qualifying Distributions (2023: Part XI)

- Location:

  `F990-PF-PART-12-LINE-05`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

447k

filings with a value

2009–2020

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 40.5x (IRS990PF/QualifyingDistriPartXIIGrp/PctSect4940eOrgNetInvstIncmAmt, 990PF, TY2014) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 14.1x (990PF: IRS990PF/QualifyingDistributions/OnePctSect4940eOrgNetInvstIncm vs IRS990PF/QualifyingDistriPartXIIGrp/PctSect4940eOrgNetInvstIncmAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QualifyingDistributions/OnePctSect4940eOrgNetInvstIncm` | PF | 2009–2012 | 67,591 | 64.6% |  |
| x2 | `IRS990PF/QualifyingDistriPartXIIGrp/PctSect4940eOrgNetInvstIncmAmt` | PF | 2013–2020 | 379,069 | 65.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 17k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 29k | 35k | 39k | 41k | 44k | 53k | 62k | 76k |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 71 | 67 | 67 | 65 | 64 | 65 | 66 | 65 | 65 | 70 | 71 | 66 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990-PF | 446,660 | 100.0%    | 58.1%  | 0.0%       | 0   | 3.50   | 454 | 25,147 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990PF | x2 | LENZMEIER FAMILY FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113359349100211_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 73 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_12_4940E_INVEST_NET_1PCT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
