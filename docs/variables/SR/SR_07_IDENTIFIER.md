# SR_07_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_07_IDENTIFIER

Identifier

- Description: Form990 Schedule RPart VII - Identifier

- Table:

  [`SR-P07-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p07-t99-supplemental-info)
  (many)

- Part: Part VII - Supplemental Information

- Location:

  `SCHED-R-PART-07`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

5.6k

filings with a value

2010–2012

tax years observed

0 + 1 reviewed

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
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVII/Identifier` | SZ | 2010–2012 | 5,645 | 1.35% | 12.1% |
| x2 | `IRS990ScheduleR/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.2k | 2.0k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 5,645   | 30             | 91      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `ADDITIONAL INFORMATION` | 909 | 36.2% |
| `TRANSACTIONS WITH RELATED ORGANIZATIONS` | 568 | 22.6% |
| `SHARING OF PAID EMPLOYEES` | 246 | 9.8% |
| `RELATED TAX-EXEMPT ORGANIZATIONS` | 187 | 7.5% |
| `GROUP EXEMPTION RELATIONSHIPS` | 145 | 5.8% |
| `IDENTIFICATION OF RELATED ORGANIZATIONS TAXABLE AS A PARTNERSHIP` | 86 | 3.4% |
| `SECTION 512(B)(13) CONTROLLED ENTITY` | 78 | 3.1% |
| `FORM 990, SCHEDULE R, PART V` | 52 | 2.1% |
| `PRIMARY ACTIVITY` | 51 | 2.0% |
| `Portfolio, LLC: To serve as an endowment investment solution for` | 38 | 1.5% |
| `a Corporation or Trust: Split interest trusts, in order to preserve donor` | 35 | 1.4% |
| `FORM 990, SCHEDULE R, PART II` | 28 | 1.1% |
| `Related Tax Exempt Organizations` | 25 | 1.0% |
| `ADDITIONAL SCHEDULE R DISCLOSURES` | 22 | 0.9% |
| `SchR_P05_S00_L02` | 20 | 0.8% |
| `PART II, COLUMN (G), SECTION 512(B)(13) CONTROLLED ENTITY?` | 18 | 0.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | ARAB AMERICAN INSTITUTE FOUNDATION | RELATED TAX-EXEMPT ORGANIZATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312879349300866_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_07_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
