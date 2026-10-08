# F9_06_DISCLOSURE_STATES_FILED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_STATES_FILED

States where required to file Form 990

- Description: States where return filed

- Table:

  [`F9-P06-T00-GOVERNANCE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p06-t00-governance)
  (one)

- Part: Part VI - Governance, Management, and Disclosure

- Location:

  `F990-PC-PART-06-SECTION-C-LINE-17`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

2.8M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 71 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/StatesWhereCopyOfReturnIsFiled` | PC | 2009–2012 | 260,142 | 51.7% | 5.5% |
| x2 | `IRS990EZ/StatesWhereCopyOfReturnIsFiled` | EZ | 2009–2012 | 103,795 | 39.7% | 1.1% |
| x3 | `IRS990/StatesWhereCopyOfReturnIsFldCd` | PC | 2013–2024 | 1,719,773 | 51.1% | 6.0% |
| x4 | `IRS990EZ/StatesWhereCopyOfReturnIsFldCd` | EZ | 2013–2024 | 744,061 | 42.1% | 1.4% |
| x5 | `IRS990/Form990PartVI/StatesWhereCopyOfReturnIsFiled` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 20k | 65k | 83k | 93k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6.9k | 27k | 33k | 37k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 91k | 112k | 119k | 126k | 136k | 140k | 147k | 166k | 175k | 181k | 184k | 142k |
| x4 |  |  |  |  | 36k | 44k | 47k | 50k | 54k | 57k | 59k | 67k | 84k | 85k | 85k | 75k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 53 | 52 | 52 | 46 | 51 | 51 | 52 | 52 | 52 | 52 | 52 | 52 | 52 | 52 | 51 |
| 990-EZ | 44 | 42 | 40 | 40 | 34 | 38 | 38 | 39 | 39 | 38 | 39 | 39 | 41 | 41 | 41 | 42 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 499,757 | 23.1% |
| `NY`  | 355,434 | 16.4% |
| `MA`  | 200,636 | 9.3%  |
| `PA`  | 186,640 | 8.6%  |
| `IL`  | 180,780 | 8.3%  |
| `OH`  | 157,252 | 7.3%  |
| `FL`  | 150,577 | 6.9%  |
| `GA`  | 138,713 | 6.4%  |
| `NJ`  | 134,685 | 6.2%  |
| `MN`  | 117,235 | 5.4%  |
| `IN`  | 22,639  | 1.0%  |
| `MI`  | 16,663  | 0.8%  |
| `TX`  | 5,712   | 0.3%  |
| `MD`  | 984     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | WILD WEST WOMEN INC | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349205389_public.xml) |
| 2024 | 990 | x3 | GIRL SCOUTS OF KANSAS HEARTLAND INC | KS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | SC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_STATES_FILED, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
