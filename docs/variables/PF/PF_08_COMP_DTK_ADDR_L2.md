# PF_08_COMP_DTK_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_L2

AddressLine2

- Description: Foreign Address - AddressLine2

- Table:

  [`PF-P08-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t01-compensation)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-01-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

41k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 10% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/AddressLine2` | PF | 2009–2012 | 3,505 | 3.34% | 59.6% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/AddressLine2` | PF | 2009–2012 | 103 | 0.0902% | 27.2% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine2` | PF | 2013–2013 | 1,607 | 3.5% | 60.8% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine2` | PF | 2013–2013 | 42 | 0.0915% | 31.0% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine2Txt` | PF | 2014–2024 | 34,992 | 3.65% | 58.7% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 897 | 0.0914% | 34.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 90 | 903 | 1.2k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 32 | 32 | 36 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.6k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 42 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.6k | 1.7k | 2.2k | 2.5k | 2.5k | 3.0k | 4.2k | 4.2k | 4.4k | 4.4k | 4.2k |
| x6 |  |  |  |  |  | 46 | 51 | 49 | 52 | 58 | 74 | 108 | 112 | 123 | 119 | 105 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 4 | 3 | 3 | 4 | 3 | 3 | 3 | 4 | 3 | 3 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 41,146  | 11             | 35      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `STREET` | 741     | 19.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | RKB CHARITABLE FOUNDATION INC | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349101933_public.xml) |
| 2024 | 990PF | x5 | BITS OF LOVE HORSE RESCUE INC | APT 150 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501359349100615_public.xml) |
| 2013 | 990PF | x4 | PARES CHANDRA AND SIVANICHAKRAVORTY | 100 ST GEORGE STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423309349100502_public.xml) |
| 2013 | 990PF | x3 | INTERPOEZIA INC | SUITE 338 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433149349100248_public.xml) |
| 2012 | 990PF | x2 | DELTA ENVIRONMENTAL&EDUCATIONAL FND | TAIPEI 10508 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313169349100621_public.xml) |
| 2012 | 990PF | x1 | THE EFRAIM GRINBERG FAMILY FOUNDATION | LEXINGTON AVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310609349100006_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
