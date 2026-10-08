# PF_AX16_EXP_RESP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

- Table:

  [`PF-P99-T16-EXP-RESPONSIBILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t16-exp-responsibility)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-16`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ⚠ fail | Values have the ZIP format | 82.2% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 41 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/ZIPCode` | PF | 2009–2012 | 399 | 0.396% | 53.1% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/PostalCode` | PF | 2009–2012 | 105 | 0.12% | 61.0% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/ZIPCode` | PF | 2013–2013 | 213 | 0.464% | 40.4% |
| x4 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/PostalCode` | PF | 2013–2013 | 54 | 0.118% | 59.3% |
| x5 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/ZIPCd` | PF | 2014–2024 | 10,486 | 1.36% | 43.6% |
| x6 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 3,276 | 0.438% | 61.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 87 | 135 | 158 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 20 | 34 | 48 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 213 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 54 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 243 | 285 | 347 | 416 | 592 | 929 | 1.4k | 1.5k | 1.6k | 1.7k | 1.6k |
| x6 |  |  |  |  |  | 69 | 102 | 112 | 142 | 175 | 240 | 424 | 471 | 520 | 518 | 503 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 11,638  | 72.6% |
| `999999999` | 1,540   | 9.6%  |
| `9999`      | 940     | 5.9%  |
| `999999`    | 778     | 4.9%  |
| `A9A 9A9`   | 604     | 3.8%  |
| `AA9 9AA`   | 496     | 3.1%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | MUSEO REINA SOFIA FOUNDATION (USA) INC | 28012 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543149349101874_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | 39870 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | THE GRIFFIN FOUNDATION INC | CV2 2FT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412279349100401_public.xml) |
| 2013 | 990PF | x3 | No 33 The 1994 Christopher W Johnson | 78701 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349100740_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | 101011 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | The David and Lucile Packard Foundation | 29403 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
