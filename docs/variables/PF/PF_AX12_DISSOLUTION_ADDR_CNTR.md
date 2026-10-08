# PF_AX12_DISSOLUTION_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX12_DISSOLUTION_ADDR_CNTR

Country

- Description: Foreign Address - Country

- Table:

  [`PF-P99-T12-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t12-dissolution)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-12`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

80

filings with a value

2010–2024

tax years observed

1 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 10 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DissolutionStmt/DissolutionInfo/ForeignAddress/Country` | PF | 2010–2012 | 8 | 0.01% |  |
| x2 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/Country` | PF | 2013–2013 | 3 | 0.00654% |  |
| x3 | `DissolutionStmt/DissolutionInformationGrp/ForeignAddress/CountryCd` | PF | 2014–2024 | 69 | 0.00697% | 8.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2 | 2 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 4 | 2 | 4 | 8 | 5 |  | 12 | 9 | 8 | 9 | 8 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 17      | 19.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | ZOETIS FOUNDATION INC | BE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349101044_public.xml) |
| 2013 | 990PF | x2 | WR GRACE FOUNDATION INC | OC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412199349100016_public.xml) |
| 2012 | 990PF | x1 | THE FRIEDMAN-KLARREICH FAMILY FOUNDATION | CS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341359349102169_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX12_DISSOLUTION_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
