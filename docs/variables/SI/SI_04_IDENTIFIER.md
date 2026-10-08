# SI_04_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_04_IDENTIFIER

Identifier

- Description: Form990 Schedule IPart IV - Identifier

- Table:

  [`SI-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-I-PART-04`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

75k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/Form990ScheduleIPartIV/Identifier: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIV/Identifier` | SZ | 2009–2012 | 74,993 | 14.3% | 6.5% |
| x2 | `IRS990ScheduleI/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.4k | 19k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 22 | 15 | 14 | 14 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 74,993  | 37             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PROCEDURE FOR MONITORING GRANTS IN THE U.S.:` | 31,690 | 49.2% |
| `Procedure for Monitoring Grants in the U.S.:` | 8,483 | 13.2% |
| `Grantmaker's Description of How Grants are Used` | 5,717 | 8.9% |
| `PROCEDURES FOR MONITORING THE USE OF GRANT FUNDS INSIDE THE UNITED STATES` | 5,329 | 8.3% |
| `Pt I Line 2` | 4,240 | 6.6% |
| `SchI_P01_S00_L02` | 2,794 | 4.3% |
| `OTHER INFORMATION:` | 1,140 | 1.8% |
| `Procedures for monitoring use of grant funds` | 1,137 | 1.8% |
| `Monitoring procedures (Part I, line 2)` | 990 | 1.5% |
| `ADDITIONAL INFORMATION` | 754 | 1.2% |
| `I1` | 722 | 1.1% |
| `I` | 538 | 0.8% |
| `Other Information:` | 500 | 0.8% |
| `Additional Supplemental Information` | 349 | 0.5% |
| `Form 990, Schedule I` | 58 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | PROCEDURE FOR MONITORING GRANTS IN THE U.S.: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_04_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
