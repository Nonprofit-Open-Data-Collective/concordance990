# PF_08_COMP_DTK_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_NAME_ORG_L1

BusinessNameLine1

- Description: Business Name - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

50k

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
| ⓘ info | No sign of truncation | IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/BusinessName/BusinessNameLine1` | PF | 2009–2012 | 4,356 | 4.03% | 6.6% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 1,570 | 3.42% | 6.3% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 43,735 | 4.95% | 12.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 120 | 1.3k | 1.4k | 1.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 2.1k | 2.1k | 2.0k | 3.0k | 5.7k | 3.8k | 4.5k | 4.8k | 4.7k | 5.5k | 5.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 5 | 5 | 4 | 4 | 3 | 4 | 4 | 3 | 4 | 8 | 4 | 4 | 4 | 4 | 4 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 49,661  | 17             | 75      |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `JP MORGAN CHASE BANK NA` | 6,787   | 30.3% |
| `PNC BANK NA`             | 2,260   | 10.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | TRUSS MANUFACTURERES ASSOC OF TEXAS | ROBERT MARQUEZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349102514_public.xml) |
| 2013 | 990PF | x2 | HILLIARD A HASENKAMP TW | M AND T TRUST CO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401289349101805_public.xml) |
| 2012 | 990PF | x1 | LEO J SIGNAIGO CHARITABLE TRUST | FIRST COMMUNITY BANK NA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101540_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
