# F9_03_PROG_CODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_CODE

Activity code

- Description: IRS990 - Activity code

- Table:

  [`F9-P03-T00-PROGRAM-ONE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-one)
  (one)  
  [`F9-P03-T00-PROGRAM-THREE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-three)
  (one)  
  [`F9-P03-T00-PROGRAM-TWO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-two)
  (one)  
  [`F9-P03-T01-PROGRAMS-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t01-programs-other)
  (many)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04-ABCD`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: PC

7 / 12

xpaths observed / mapped

10k

filings with a value

2009–2024

tax years observed

3 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 223 distinct values per xpath and year |
| ▲ warn | Codes share one format | 60% have the shape 999999                    |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ActivityCode` | PC | 2009–2012 | 1,046 | 0.176% |  |
| x2 | `IRS990/Activity2/ActivityCode` | PC | 2009–2012 | 395 | 0.0701% |  |
| x3 | `IRS990/Activity3/ActivityCode` | PC | 2009–2012 | 282 | 0.0529% |  |
| x4 | `IRS990/ActivityCd` | PC | 2013–2024 | 5,327 | 0.229% |  |
| x5 | `IRS990/ProgSrvcAccomActy2Grp/ActivityCd` | PC | 2013–2024 | 1,727 | 0.0721% |  |
| x6 | `IRS990/ProgSrvcAccomActy3Grp/ActivityCd` | PC | 2013–2024 | 1,119 | 0.0487% |  |
| x7 | `IRS990/ProgSrvcAccomActyOtherGrp/ActivityCd` | PC | 2013–2024 | 197 | 0.00685% | 25.9% |
| x8 | `IRS990/ActivityOther/ActivityCode` | PC | not observed | 0 |  |  |
| x9 | `IRS990/Form990PartIII/Activity2/ActivityCode` | PC | not observed | 0 |  |  |
| x10 | `IRS990/Form990PartIII/Activity3/ActivityCode` | PC | not observed | 0 |  |  |
| x11 | `IRS990/Form990PartIII/ActivityCode` | PC | not observed | 0 |  |  |
| x12 | `IRS990/Form990PartIII/ActivityOther/ActivityCode` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 102 | 320 | 308 | 316 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 46 | 106 | 117 | 126 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 38 | 68 | 81 | 95 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 309 | 343 | 340 | 334 | 340 | 343 | 362 | 534 | 555 | 608 | 624 | 635 |
| x5 |  |  |  |  | 120 | 125 | 114 | 113 | 110 | 115 | 109 | 164 | 169 | 183 | 204 | 201 |
| x6 |  |  |  |  | 81 | 85 | 68 | 75 | 67 | 77 | 70 | 99 | 106 | 120 | 135 | 136 |
| x7 |  |  |  |  | 1 | 8 | 7 | 12 | 11 | 9 | 18 | 28 | 30 | 25 | 29 | 19 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `1`   | 864     | 16.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | Therapy Plus | 30 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513019349301551_public.xml) |
| 2024 | 990 | x6 | RIO SALADO SPORTSMANS CLUB INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610839349300321_public.xml) |
| 2024 | 990 | x5 | RIO SALADO SPORTSMANS CLUB INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610839349300321_public.xml) |
| 2024 | 990 | x7 | Friends For Life Foundation Inc | 900099 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501209349301530_public.xml) |
| 2012 | 990 | x1 | Friends of the Big Timber Car | 611710 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321489349300002_public.xml) |
| 2012 | 990 | x3 | HOSPITAL SYSTEM CREDIT UNION | 522130 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301289349301255_public.xml) |
| 2012 | 990 | x2 | HOSPITAL SYSTEM CREDIT UNION | 522130 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301289349301255_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_CODE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
