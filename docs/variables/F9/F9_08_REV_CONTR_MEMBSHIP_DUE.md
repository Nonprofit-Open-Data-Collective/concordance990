# F9_08_REV_CONTR_MEMBSHIP_DUE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_CONTR_MEMBSHIP_DUE

Membership dues

- Description: Membership Dues

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-01B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 4

xpaths observed / mapped

1.7M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.1x (IRS990EZ/MembershipDues, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/MembershipDues` | EZ | 2009–2012 | 119,692 | 46.3% |  |
| x2 | `IRS990/MembershipDues` | PC | 2009–2012 | 82,096 | 17.1% |  |
| x3 | `IRS990EZ/MembershipDuesAmt` | EZ | 2013–2024 | 808,741 | 44.8% |  |
| x4 | `IRS990/MembershipDuesAmt` | PC | 2013–2024 | 646,017 | 22.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.5k | 30k | 38k | 43k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 4.5k | 20k | 27k | 31k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 47k | 51k | 54k | 55k | 58k | 60k | 61k | 69k | 90k | 92k | 92k | 80k |
| x4 |  |  |  |  | 35k | 39k | 42k | 44k | 46k | 49k | 52k | 65k | 69k | 72k | 74k | 61k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 16 | 17 | 17 | 17 | 18 | 18 | 18 | 18 | 18 | 18 | 20 | 20 | 21 | 21 | 22 |
| 990-EZ | 49 | 48 | 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 40 | 41 | 45 | 45 | 45 | 45 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 728,113 | 100.0%    | 15.3%  | 0.0%       | 3,391 | 24,015 | 130,235 | 3,238,987 |
| 990-EZ | 928,430 | 100.0%    | 31.7%  | 0.0%       | 0     | 5,721  | 29,468  | 159,169   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | KANPE HAITI | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510769349200611_public.xml) |
| 2024 | 990 | x4 | THE CHILDREN'S MUSEUM IN EASTON INC | 89417 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543029349302179_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 1903 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x2 | IZAAK WALTON LEAGUE-ALEXANDRIA CHPT | 176554 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349306451_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_CONTR_MEMBSHIP_DUE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
