# F9_00_PRIN_OFF_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_ADDR_CITY

Principal officer city

- Description: Address of Filing Organization (Foreign City)

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

6 / 8

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
| ⓘ info | No sign of truncation | IRS990/ForeignAddress/CityNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AddressPrincipalOfficerUS/City` | PC | 2009–2012 | 404,804 | 53.1% |  |
| x2 | `IRS990/AddressPrincipalOfficerForeign/City` | PC | 2009–2012 | 588 | 0.079% |  |
| x3 | `IRS990/USAddress/City` | PC | 2013–2013 | 159,430 | 52.6% |  |
| x4 | `IRS990/ForeignAddress/City` | PC | 2013–2013 | 266 | 0.0877% |  |
| x5 | `IRS990/USAddress/CityNm` | PC | 2014–2024 | 2,719,798 | 54.9% |  |
| x6 | `IRS990/ForeignAddress/CityNm` | PC | 2014–2024 | 5,923 | 0.127% |  |
| x7 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressForeign/City` | PC | not observed | 0 |  |  |
| x8 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressUS/City` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 101k | 130k | 145k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 36 | 135 | 201 | 216 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 159k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 266 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 174k | 187k | 197k | 212k | 243k | 253k | 285k | 298k | 308k | 312k | 250k |
| x6 |  |  |  |  |  | 294 | 326 | 377 | 516 | 507 | 507 | 706 | 696 | 715 | 699 | 580 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 82 | 81 | 81 | 80 | 80 | 80 | 81 | 81 | 89 | 89 | 89 | 89 | 88 | 88 | 90 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,290,783 | 9              | 35      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 60,793  | 23.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | OFRENDA INC | FILANDIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349306520_public.xml) |
| 2024 | 990 | x5 | IAAI FOUNDATION INC | COLUMBIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2013 | 990 | x4 | AMIGOUR ASSET MANAGEMENT LTD | TEL AVIV ISRAEL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422889349300832_public.xml) |
| 2013 | 990 | x3 | OPEN OPTIONS INC | OKLAHOMA CITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540489349300424_public.xml) |
| 2012 | 990 | x2 | ARZENU INC C0 DIEDRA M GILBERT | TORONTO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322179349300627_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | Jacksonville | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
