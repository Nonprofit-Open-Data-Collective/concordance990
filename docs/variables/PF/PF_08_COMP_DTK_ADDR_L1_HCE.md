# PF_08_COMP_DTK_ADDR_L1_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_L1_HCE

AddressLine1

- Description: Foreign Address - AddressLine1

- Table:

  [`PF-P08-T02-COMPENSATION-HIGHEST`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t02-compensation-highest)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-02-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

5 / 6

xpaths observed / mapped

24k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/USAddress/AddressLine1` | PF | 2009–2012 | 1,577 | 1.54% | 57.1% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/ForeignAddress/AddressLine1` | PF | 2010–2012 | 5 | 0.00751% | 20.0% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine1` | PF | 2013–2013 | 737 | 1.61% | 55.1% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 21,800 | 2.44% | 61.6% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 210 | 0.0253% | 58.1% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/AddressLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 66 | 393 | 502 | 616 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 |  | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 737 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 899 | 1.0k | 1.1k | 1.3k | 1.5k | 1.8k | 2.7k | 2.8k | 2.9k | 3.0k | 2.8k |
| x5 |  |  |  |  |  | 5 | 6 | 9 | 9 | 12 | 12 | 29 | 32 | 33 | 34 | 29 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 24,329  | 21             | 35      |

### Most common values

| Value                               | Filings | Share |
|-------------------------------------|---------|-------|
| `ONE EMBARCADERO CENTER SUITE 2410` | 40      | 7.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | UNBOUND PHILANTHROPY | 70 COWCROSS STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513089349101376_public.xml) |
| 2024 | 990PF | x4 | Robert W Woodruff Foundation Inc | 191 Peachtree St Suite 3540 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x3 | Bert Fish Foundation Inc | 1209 Weeping Willow Drive | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423169349100007_public.xml) |
| 2012 | 990PF | x2 | Sugar Palm Foundation Inc | 61 National Rd 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349101033_public.xml) |
| 2012 | 990PF | x1 | JANET H & C HARRY KNOWLES FOUNDATION INC | 211 COLONIAL RIDGE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420439349100702_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_L1_HCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
