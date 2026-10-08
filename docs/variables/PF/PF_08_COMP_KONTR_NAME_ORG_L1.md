# PF_08_COMP_KONTR_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_NAME_ORG_L1

BusinessNameLine1

- Description: Business Name - BusinessNameLine1

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

2 / 2

xpaths observed / mapped

35k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 70 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/BusinessName/BusinessNameLine1` | PF | 2009–2012 | 1,825 | 1.81% | 40.9% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 32,766 | 4.14% | 45.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 75 | 429 | 598 | 723 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 1.2k | 1.3k | 1.5k | 1.7k | 1.9k | 2.6k | 4.0k | 4.3k | 4.7k | 4.9k | 4.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 2 |  | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 34,591  | 21             | 70      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `Foundation Source` | 942     | 23.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Robert W Woodruff Foundation Inc | GANNETT WELSH & KOTLER LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2012 | 990PF | x1 | THE FLETCHER JONES FOUNDATION | CAMBRIDGE ADVISORS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312259349100131_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
