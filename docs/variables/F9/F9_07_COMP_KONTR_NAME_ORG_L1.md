# F9_07_COMP_KONTR_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_NAME_ORG_L1

Independent contractor business name line 1

- Description: Highest compensated independent contractor (top 5 above
  100K) business name line 1

- Table:

  [`F9-P07-T02-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t02-contractors)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-B-LINE-01-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

6 / 7

xpaths observed / mapped

417k

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
| x1 | `IRS990/ContractorCompensation/NameOfContractor/NameBusiness/BusinessNameLine1` | PC | 2009–2012 | 64,066 | 11.6% | 63.2% |
| x2 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/NameBusiness/BusinessNameLine1` | EZ | 2009–2012 | 198 | 0.0832% | 10.1% |
| x3 | `IRS990/ContractorCompensationGrp/ContractorName/BusinessName/BusinessNameLine1` | PC | 2013–2013 | 22,029 | 11.1% | 60.9% |
| x4 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine1` | EZ | 2013–2013 | 68 | 0.0651% | 8.8% |
| x5 | `IRS990/ContractorCompensationGrp/ContractorName/BusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 329,323 | 9.66% | 62.3% |
| x6 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine1Txt` | EZ | 2014–2024 | 1,397 | 0.0744% | 13.0% |
| x7 | `IRS990/Form990PartVIISectionB/ContractorCompensation/NameOfContractor/NameBusiness/BusinessNameLine1` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.3k | 17k | 19k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 39 | 34 | 47 | 78 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 22k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 68 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 24k | 25k | 26k | 29k | 29k | 30k | 32k | 34k | 36k | 38k | 27k |
| x6 |  |  |  |  |  | 83 | 87 | 109 | 117 | 117 | 128 | 143 | 154 | 167 | 159 | 133 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 22 | 13 | 12 | 12 | 11 | 11 | 11 | 11 | 11 | 11 | 11 | 10 | 10 | 10 | 11 | 10 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 415,414 | 21             | 74      |
| 990-EZ | 1,663   | 20             | 60      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 2,061   | 16.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | GLENBROOK HISTORICAL SOCIETY INC | JP FENCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543059349200104_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | QUALIVIS LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990EZ | x4 | NUDGERS INC | WESTBROOKE CONSTRUCTION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349201719_public.xml) |
| 2013 | 990 | x3 | PHYSICIANS ADVOCACY INSTITUTE INC | MJ MALONE SERVICE CORP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413159349302761_public.xml) |
| 2012 | 990EZ | x2 | Princeton Future Inc | Sturges Publishing Company | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301759349200515_public.xml) |
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | WOODROW WILSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
