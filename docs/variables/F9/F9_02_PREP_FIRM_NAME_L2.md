# F9_02_PREP_FIRM_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_NAME_L2

Preparer firm name line 2

- Description: Paid Preparer Firm Name (Line 2)

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

534

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmBusinessName/BusinessNameLine2` | PC | 2010–2012 | 49 | 0.00549% |  |
| x2 | `PreparerFirmGrp/PreparerFirmName/BusinessNameLine2` | PC | 2013–2013 | 22 | 0.00726% |  |
| x3 | `PreparerFirmGrp/PreparerFirmName/BusinessNameLine2Txt` | PC | 2014–2024 | 463 | 0.0151% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 13 | 21 | 15 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 10 | 17 | 22 | 19 | 21 | 51 | 54 | 61 | 65 | 74 | 69 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 344     | 24             | 45      |
| 990-EZ | 190     | 19             | 54      |

### Most common values

| Value                                        | Filings | Share |
|----------------------------------------------|---------|-------|
| `CERTIFIED PUBLIC ACCOUNTANTS & CONSULTANTS` | 36      | 13.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | SALAM ACADEMY INCORPORATED | PD Rubio | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349311147_public.xml) |
| 2013 | 990 | x2 | Presbyterian Welcome | Easy Office Inc dba jitasa | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432969349300323_public.xml) |
| 2012 | 990 | x1 | Bruce Wood Dance Company Inc | Microbooks Management | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331159349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
