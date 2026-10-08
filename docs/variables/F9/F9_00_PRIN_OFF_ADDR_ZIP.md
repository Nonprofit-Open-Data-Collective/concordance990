# F9_00_PRIN_OFF_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_ADDR_ZIP

Principal officer zip

- Description: Address of Filing Organization (Foreign Postal Code)

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
| ✓ pass | Values have the ZIP format | 99.9% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 14 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AddressPrincipalOfficerUS/ZIPCode` | PC | 2009–2012 | 404,804 | 53.1% |  |
| x2 | `IRS990/AddressPrincipalOfficerForeign/PostalCode` | PC | 2009–2012 | 415 | 0.0534% |  |
| x3 | `IRS990/USAddress/ZIPCode` | PC | 2013–2013 | 159,430 | 52.6% |  |
| x4 | `IRS990/ForeignAddress/PostalCode` | PC | 2013–2013 | 152 | 0.0501% |  |
| x5 | `IRS990/USAddress/ZIPCd` | PC | 2014–2024 | 2,719,798 | 54.9% |  |
| x6 | `IRS990/ForeignAddress/ForeignPostalCd` | PC | 2014–2024 | 4,587 | 0.102% |  |
| x7 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressForeign/PostalCode` | PC | not observed | 0 |  |  |
| x8 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressUS/ZIPCode` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 101k | 130k | 145k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 28 | 100 | 141 | 146 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 159k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 152 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 174k | 187k | 197k | 212k | 243k | 253k | 285k | 298k | 308k | 312k | 250k |
| x6 |  |  |  |  |  | 199 | 227 | 261 | 392 | 391 | 400 | 571 | 556 | 572 | 552 | 466 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 82 | 81 | 81 | 80 | 80 | 80 | 81 | 81 | 89 | 89 | 89 | 89 | 88 | 88 | 90 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings   | Share |
|-------------|-----------|-------|
| `99999`     | 2,988,597 | 90.9% |
| `999999999` | 297,161   | 9.0%  |
| `A9A 9A9`   | 1,246     | 0.0%  |
| `9999`      | 323       | 0.0%  |
| `A9A9A9`    | 272       | 0.0%  |
| `AA9 9AA`   | 150       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | THE AMERICAN CHAMBER OF COMMERCE | 100027 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349303503_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | 11704 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | IB Fund US Inc | 2517 JW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413219349310796_public.xml) |
| 2013 | 990 | x3 | NORTH BRUNSWICK BASEBALL ASSOCIATION INC | 08902 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402549349300330_public.xml) |
| 2012 | 990 | x2 | ARZENU INC C0 DIEDRA M GILBERT | M5R 3A8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322179349300627_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 92106 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
