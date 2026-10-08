# F9_02_PREP_FIRM_EIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_EIN

Preparer firm EIN

- Description: Employer Identification Number of Preparer Firm

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

2 / 2

xpaths observed / mapped

4.9M

filings with a value

2009–2024

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the EIN format | 100.0% of values match ^999999999\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 1941.5x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 1459.9x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 38.1x year-on-year (in 2011) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/EIN` | PC | 2009–2012 | 223,564 | 40.1% |  |
| x2 | `PreparerFirmGrp/PreparerFirmEIN` | PC | 2013–2024 | 4,638,257 | 80.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15 | 291 | 98k | 126k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 188k | 230k | 249k | 265k | 359k | 381k | 399k | 448k | 541k | 555k | 562k | 461k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | 41 | 45 | 60 | 64 | 65 | 66 | 80 | 80 | 80 | 77 | 87 | 87 | 88 | 87 |
| 990-EZ |  | \<1 | 23 | 31 | 44 | 51 | 51 | 52 | 71 | 71 | 71 | 68 | 74 | 73 | 72 | 70 |
| 990-PF | 1 | 1 | 38 | 41 | 49 | 57 | 58 | 59 | 75 | 76 | 75 | 75 | 82 | 82 | 82 | 82 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings   | Share  |
|-------------|-----------|--------|
| `999999999` | 4,861,821 | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 581253395 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | 570857434 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_EIN, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
