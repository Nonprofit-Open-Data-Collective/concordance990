# F9_00_PRIN_OFF_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_NAME_ORG_L1

Principal officer organization name line 1

- Description: Name of Principal Officer (Business, Line 1)

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

3 / 6

xpaths observed / mapped

108k

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
| ⓘ info | No sign of truncation | IRS990/NameOfPrincipalOfficerBusiness/BusinessNameLine1: longest value is exactly 75 characters; IRS990/PrincipalOfcrBusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NameOfPrincipalOfficerBusiness/BusinessNameLine1` | PC | 2009–2012 | 9,370 | 1.28% |  |
| x2 | `IRS990/PrincipalOfcrBusinessAddress/BusinessNameLine1` | PC | 2013–2013 | 3,570 | 1.18% |  |
| x3 | `IRS990/PrincipalOfcrBusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 94,780 | 2.42% |  |
| x4 | `IRS990/Form990PartI/NameOfPrincipalOfficer/NameBusiness/BusinessNameLine1` | PC | not observed | 0 |  |  |
| x5 | `IRS990/Form990PartI/NameOfPrincipalOfficer/NameBusiness/BusinessNameLine2` | PC | not observed | 0 |  |  |
| x6 | `IRS990/PrincipalOfcrBusinessAddress/BusinessNameLine1Txt` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 337 | 2.4k | 3.2k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 4.2k | 5.0k | 5.4k | 5.6k | 5.9k | 6.9k | 11k | 11k | 13k | 16k | 11k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 107,720 | 16             | 75      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `John K Renner` | 503     | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | The Family YMCA | Chris Daniels | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349301161_public.xml) |
| 2013 | 990 | x2 | PRINCETON NURSERY SCHOOL | WENDY COTTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531319349302093_public.xml) |
| 2012 | 990 | x1 | THE CHILDREN'S MUSEUM GUILD INC | ALLI STITLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303039349300930_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
