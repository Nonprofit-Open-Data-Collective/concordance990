# PF_08_COMP_KONTR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/USAddress/AddressLine1` | PF | 2009–2012 | 2,061 | 2.04% | 39.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/AddressLine1` | PF | 2009–2012 | 81 | 0.0801% | 18.5% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1` | PF | 2013–2013 | 1,020 | 2.22% | 40.5% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 42 | 0.0915% | 11.9% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 36,057 | 4.5% | 43.9% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 1,663 | 0.232% | 30.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 87 | 485 | 673 | 816 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 15 | 31 | 32 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 42 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.3k | 1.5k | 1.6k | 1.8k | 2.1k | 2.9k | 4.4k | 4.8k | 5.1k | 5.4k | 5.2k |
| x6 |  |  |  |  |  | 38 | 54 | 64 | 69 | 73 | 113 | 191 | 236 | 273 | 286 | 266 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 40,924  | 21             | 35      |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `55 Walls Drive 3rd Fl` | 555     | 21.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | THE PACKARD HUMANITIES INSTITUTE | VIA MICHELANGELO SCHIPA 100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512769349100301_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | 222 BERKELEY STREET 15TH FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | BUTLER CONSERVATION FUND INC | 1 UNIVERSITY AVENUE SUITE 1910 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403219349102285_public.xml) |
| 2013 | 990PF | x3 | FIRST FEDERAL CHARITABLE FOUNDATION | 2201 RIDGEWOOD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521359349102062_public.xml) |
| 2012 | 990PF | x2 | FOUNDATION FOR INFORMED MEDICAL | 8 BITTERELL EYNSHAM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410639349100506_public.xml) |
| 2012 | 990PF | x1 | JAMES C MELVIN TRUST UW | 800 BOYLSTON STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310959349100206_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
