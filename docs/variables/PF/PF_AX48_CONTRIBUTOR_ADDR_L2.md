# PF_AX48_CONTRIBUTOR_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_L2

AddressLine2

- Description: Foreign Address - AddressLine2

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

6 / 6

xpaths observed / mapped

3.2k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 12% of values are numeric |
| ⓘ info | No sign of truncation | SubstantialContributorsSch/SubstantialContributor/USAddress/AddressLine2: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine2: longest value is exactly 35 characters; SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/USAddress/AddressLine2` | PF | 2009–2012 | 372 | 0.371% | 13.2% |
| x2 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/AddressLine2` | PF | 2010–2012 | 17 | 0.015% | 5.9% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine2` | PF | 2013–2013 | 155 | 0.338% | 13.5% |
| x4 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine2` | PF | 2013–2013 | 9 | 0.0196% |  |
| x5 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/AddressLine2Txt` | PF | 2014–2024 | 2,563 | 0.286% | 17.1% |
| x6 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 116 | 0.00958% | 14.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3 | 85 | 136 | 148 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 4 | 7 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 155 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 9 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 201 | 148 | 159 | 156 | 143 | 163 | 298 | 321 | 326 | 320 | 328 |
| x6 |  |  |  |  |  | 15 | 9 | 10 | 14 | 7 | 8 | 12 | 6 | 11 | 13 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 3,232   | 11             | 35      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `STREET` | 91      | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | Looloo Kids | 8B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610709349100301_public.xml) |
| 2024 | 990PF | x5 | THE MELINDA & WILLIAM J VANDEN HEUVEL | OF THE AMERICAS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620479349100862_public.xml) |
| 2013 | 990PF | x4 | THE FRANCES AND HENRY RIECKEN FOUNDATION | A NO3738 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433179349100858_public.xml) |
| 2013 | 990PF | x3 | CONRAD N HILTON MEMORIAL PARK | SUITE 1000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422279349101122_public.xml) |
| 2012 | 990PF | x2 | BROWN UNIVERSITY CHARITABLE TRUST | VILLAGE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332199349100113_public.xml) |
| 2012 | 990PF | x1 | JOHN P KAVOORAS CHARITABLE FOUNDATION | AVE 307 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331169349100108_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
