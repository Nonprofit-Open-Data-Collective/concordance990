# F9_02_PREP_FIRM_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_ADDR_CNTR

Preparer firm country

- Description: Foreign Address of Preparer Firm (Country)

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: text

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

3 / 3

xpaths observed / mapped

2.6k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 15 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmForeignAddress/Country` | PC | 2009–2012 | 87 | 0.00957% |  |
| x2 | `PreparerFirmGrp/PreparerForeignAddress/Country` | PC | 2013–2013 | 81 | 0.0232% |  |
| x3 | `PreparerFirmGrp/PreparerForeignAddress/CountryCd` | PC | 2014–2024 | 2,424 | 0.0455% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6 | 22 | 29 | 30 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 81 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 111 | 88 | 142 | 154 | 204 | 225 | 284 | 307 | 324 | 325 | 260 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 974     | 38.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Under the Same Sun Foundation (USA) | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503529349301610_public.xml) |
| 2013 | 990 | x2 | MASONIC TEMPLE ASSOCIATION OF PHOENIX I… | OC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401139349300000_public.xml) |
| 2012 | 990 | x1 | YESHIVAT ASHREINU INC | IS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521279349301277_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
