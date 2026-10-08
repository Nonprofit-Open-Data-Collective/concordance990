# F9_02_PREP_FIRM_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_NAME_L1

Preparer firm name line 1

- Description: Paid Preparer Firm Name (Line 1)

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

6.5M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmBusinessName/BusinessNameLine1` | PC | 2009–2012 | 796,383 | 94.3% |  |
| x2 | `PreparerFirmGrp/PreparerFirmName/BusinessNameLine1` | PC | 2013–2013 | 329,759 | 94.5% |  |
| x3 | `PreparerFirmGrp/PreparerFirmName/BusinessNameLine1Txt` | PC | 2014–2024 | 5,390,957 | 85.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47k | 196k | 258k | 296k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 330k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 368k | 395k | 414k | 445k | 470k | 491k | 550k | 578k | 593k | 597k | 490k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 97 | 97 | 96 | 93 | 93 | 93 | 93 | 92 |
| 990-EZ | 88 | 90 | 92 | 92 | 93 | 93 | 93 | 93 | 93 | 93 | 91 | 88 | 78 | 78 | 77 | 75 |
| 990-PF | 85 | 87 | 88 | 91 | 91 | 90 | 91 | 91 | 92 | 92 | 91 | 90 | 90 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,638,514 | 22             | 72      |
| 990-EZ | 1,842,561 | 23             | 63      |
| 990-PF | 1,035,983 | 22             | 64      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `CLIFTONLARSONALLEN LLP`     | 81,551  | 18.7% |
| `ERNST & YOUNG US LLP`       | 56,575  | 13.0% |
| `PRICEWATERHOUSECOOPERS LLP` | 31,925  | 7.3%  |
| `RSM US LLP`                 | 27,966  | 6.4%  |
| `BKD LLP`                    | 22,283  | 5.1%  |
| `BDO USA LLP`                | 19,282  | 4.4%  |
| `PWC US TAX LLP`             | 18,288  | 4.2%  |
| `WIPFLI LLP`                 | 16,496  | 3.8%  |
| `Foundation Source`          | 15,592  | 3.6%  |
| `COHNREZNICK LLP`            | 12,951  | 3.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | SAINT CLAIR HOUSE INC | MALONEY NOVOTNY LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2013 | 990EZ | x2 | Awesome Cooper Band Boosters | Jerry Love CPA LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | Knight & Blanchard PA CPA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
