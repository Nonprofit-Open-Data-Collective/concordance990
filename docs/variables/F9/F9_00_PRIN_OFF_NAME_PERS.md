# F9_00_PRIN_OFF_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_NAME_PERS

Principal officer person name

- Description: Name of Principal Officer (Person)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-F`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.3M

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
| ⓘ info | No sign of truncation | IRS990/NameOfPrincipalOfficerPerson: longest value is exactly 35 characters; IRS990/PrincipalOfficerNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NameOfPrincipalOfficerPerson` | PC | 2009–2012 | 406,693 | 53.6% |  |
| x2 | `IRS990/PrincipalOfficerNm` | PC | 2013–2024 | 2,872,128 | 52.2% |  |
| x3 | `IRS990/Form990PartI/NameOfPrincipalOfficer/NamePerson` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 101k | 130k | 147k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 162k | 177k | 198k | 210k | 227k | 236k | 247k | 279k | 292k | 302k | 304k | 238k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 82 | 82 | 82 | 82 | 81 | 85 | 86 | 87 | 87 | 87 | 87 | 87 | 86 | 86 | 86 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,278,795 | 14             | 35      |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `STEPHEN VANDER SCHAAF`       | 1,702   | 12.6% |
| `SAME AS C ABOVE`             | 1,400   | 10.4% |
| `DEBORAH STOUFF`              | 1,193   | 8.8%  |
| `JOSEPH A BUDZYNSKI`          | 759     | 5.6%  |
| `THE BANK OF NEW YORK MELLON` | 687     | 5.1%  |
| `JILL KOLB`                   | 677     | 5.0%  |
| `CINDY LAMB`                  | 547     | 4.1%  |
| `C David Massa`               | 479     | 3.5%  |
| `MARK MEYER`                  | 476     | 3.5%  |
| `STUART HARTMAN`              | 462     | 3.4%  |
| `STEVE T BODKIN`              | 447     | 3.3%  |
| `PETER DESJARDINS`            | 432     | 3.2%  |
| `STEVEN T BODKIN`             | 373     | 2.8%  |
| `MARK R RICKETTS`             | 324     | 2.4%  |
| `SAME AS ABOVE`               | 310     | 2.3%  |
| `MATTHEW O FRANKLIN`          | 292     | 2.2%  |
| `Marlena Casellini`           | 269     | 2.0%  |
| `MICHAEL J DOWLING`           | 226     | 1.7%  |
| `JULIA A FRATIANNE`           | 221     | 1.6%  |
| `JOSEPH PISTONE`              | 194     | 1.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | KYLE FONVILLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | ANN BOSSLER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
