# PF_08_COMP_KONTR_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_ADDR_CITY

City

- Description: Foreign Address - City

- Table:

  [`PF-P08-T03-COMPENSATION-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t03-compensation-contractors)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-03-COL-A`

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

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/USAddress/City` | PF | 2009–2012 | 2,061 | 2.04% | 39.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/City` | PF | 2009–2012 | 61 | 0.0601% | 18.0% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/City` | PF | 2013–2013 | 1,020 | 2.22% | 40.5% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/City` | PF | 2013–2013 | 32 | 0.0697% | 12.5% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/CityNm` | PF | 2014–2024 | 36,057 | 4.5% | 43.9% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/CityNm` | PF | 2014–2024 | 1,540 | 0.218% | 29.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 87 | 485 | 673 | 816 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 11 | 23 | 24 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 32 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.3k | 1.5k | 1.6k | 1.8k | 2.1k | 2.9k | 4.4k | 4.8k | 5.1k | 5.4k | 5.2k |
| x6 |  |  |  |  |  | 31 | 49 | 60 | 62 | 68 | 103 | 175 | 220 | 255 | 267 | 250 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 40,771  | 9              | 30      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 6,818   | 32.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | The Schocken Foundation Inc | Pardes Hanna | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513079349101041_public.xml) |
| 2024 | 990PF | x5 | H & M KELLOGG CHARITABLE TRUST | SIOUX FALLS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501349349102390_public.xml) |
| 2013 | 990PF | x4 | THE CALIFORNIA ENDOWMENT | LONDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500429349100005_public.xml) |
| 2013 | 990PF | x3 | Bert Fish Foundation Inc | Ormond Beach | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423169349100007_public.xml) |
| 2012 | 990PF | x2 | COMMISSION FOR ART RECOVERY INC | Mayfair | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349100617_public.xml) |
| 2012 | 990PF | x1 | THE HARVEST FOUNDATION OF THE PIEDMONT | WINSTON SALEM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349100517_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
