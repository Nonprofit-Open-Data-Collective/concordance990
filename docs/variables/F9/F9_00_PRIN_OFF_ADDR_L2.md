# F9_00_PRIN_OFF_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_ADDR_L2

Principal officer street address line 2

- Description: Address of Filing Organization (Foreign Line 2)

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

42k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 7% of values are numeric |
| ⓘ info | No sign of truncation | IRS990/AddressPrincipalOfficerUS/AddressLine2: longest value is exactly 35 characters; IRS990/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AddressPrincipalOfficerUS/AddressLine2` | PC | 2009–2012 | 4,300 | 0.525% |  |
| x2 | `IRS990/AddressPrincipalOfficerForeign/AddressLine2` | PC | 2010–2012 | 40 | 0.00805% |  |
| x3 | `IRS990/USAddress/AddressLine2` | PC | 2013–2013 | 1,582 | 0.522% |  |
| x4 | `IRS990/ForeignAddress/AddressLine2` | PC | 2013–2013 | 22 | 0.00726% |  |
| x5 | `IRS990/USAddress/AddressLine2Txt` | PC | 2014–2024 | 35,891 | 0.89% |  |
| x6 | `IRS990/ForeignAddress/AddressLine2Txt` | PC | 2014–2024 | 655 | 0.0182% |  |
| x7 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressForeign/AddressLine2` | PC | not observed | 0 |  |  |
| x8 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressUS/AddressLine2` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 386 | 1.1k | 1.4k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 5 | 13 | 22 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.6k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.1k | 2.7k | 2.7k | 2.8k | 2.7k | 2.9k | 3.8k | 4.1k | 4.4k | 4.6k | 4.1k |
| x6 |  |  |  |  |  | 19 | 28 | 36 | 41 | 38 | 40 | 83 | 97 | 100 | 90 | 83 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 42,490  | 11             | 35      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `Suite 200` | 370     | 11.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | KOLLEL OHR HATALMUD INC | COL POLANCO CP 15510 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349328228_public.xml) |
| 2024 | 990 | x5 | VETERANS OF FOREIGN WARS OF THE UNITED … | Number 159 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512949349300006_public.xml) |
| 2013 | 990 | x4 | INTERNATIONAL INSOLVENCY INSTITUTE | WEST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402749349300110_public.xml) |
| 2013 | 990 | x3 | ALLEN TEMPLE DEVELOPMENT CORP NO 1 | NO 3RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201512239349301801_public.xml) |
| 2012 | 990 | x2 | THE AMERICAN CHAMBER OF COMMERCE IN CHI… | RD NO 6TH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313129349301401_public.xml) |
| 2012 | 990 | x1 | CBS TELEVISION NETWORK AFFILIATES ASSOC… | FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322259349300337_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
