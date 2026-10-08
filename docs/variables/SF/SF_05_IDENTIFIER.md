# SF_05_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_05_IDENTIFIER

Identifier

- Description: Form990 Schedule FPart IV - Identifier

- Table:

  [`SF-P05-T99-EXPLANATION-TEXT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p05-t99-explanation-text)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-F-PART-05`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

12k

filings with a value

2009–2012

tax years observed

0 + 2 reviewed

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
| x1 | `IRS990ScheduleF/Form990ScheduleFPartIV/Identifier` | SZ | 2009–2009 | 959 | 2.88% | 18.0% |
| x2 | `IRS990ScheduleF/Form990ScheduleFPartV/Identifier` | SZ | 2010–2012 | 11,136 | 2.53% | 22.8% |
| x3 | `IRS990ScheduleF/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 959 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.9k | 3.7k | 4.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 12,095  | 39             | 78      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PROCEDURE FOR MONITORING GRANTS OUTSIDE THE U.S.:` | 3,572 | 32.9% |
| `METHOD USED TO ACCCOUNT FOR EXPENDITURES:` | 1,271 | 11.7% |
| `Procedure for Monitoring Grants Outside the U.S.:` | 1,177 | 10.8% |
| `Grantmaker's Description of How Grants are Used in Foreign Country` | 916 | 8.4% |
| `Pt I Line 2` | 738 | 6.8% |
| `Method Used to Acccount for Expenditures:` | 671 | 6.2% |
| `PROCEDURES FOR MONITORING THE USE OF GRANT FUNDS OUTSIDE THE UNITED STATES` | 589 | 5.4% |
| `ACTIVITIES PER REGION` | 586 | 5.4% |
| `SchF_P01_S00_L02` | 547 | 5.0% |
| `ADDITIONAL INFORMATION` | 271 | 2.5% |
| `OTHER INFORMATION` | 225 | 2.1% |
| `Additional Supplemental Information` | 208 | 1.9% |
| `Schedule F, Part IV` | 82 | 0.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | MINNEAPOLIS COLLEGE OF ART & DESIGN | PROCEDURE FOR MONITORING GRANTS OUTSIDE THE U.S.: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2009 | 990 | x1 | Roger Williams University | SchF_P01_S00_L02 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201121309349302317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_05_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
