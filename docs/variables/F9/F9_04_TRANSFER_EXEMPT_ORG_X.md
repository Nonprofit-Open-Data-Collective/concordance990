# F9_04_TRANSFER_EXEMPT_ORG_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_TRANSFER_EXEMPT_ORG_X

Made transfers to an exempt non-charitable related organization \[x\]

- Description: Did the organization make any transfers to an exempt
  non-charitable related organization?

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-PC-PART-04-LINE-36`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

4.5M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 99% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TransfersToExemptNonChrtblOrg` | PC | 2009–2012 | 371,323 | 73.7% |  |
| x2 | `IRS990EZ/TrnsfrsExemptNonCharRelatedOrg` | EZ | 2009–2012 | 175,152 | 70.3% |  |
| x3 | `IRS990/TrnsfrExmptNonChrtblRltdOrgInd` | PC | 2013–2024 | 2,526,611 | 76.4% |  |
| x4 | `IRS990EZ/TrnsfrExmptNonChrtblRltdOrgInd` | EZ | 2013–2024 | 1,402,481 | 77.8% |  |
| x5 | `IRS990/Form990PartIV/TransfersToExemptNonChrtblOrg` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 92k | 118k | 132k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 11k | 40k | 58k | 66k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 147k | 161k | 172k | 180k | 185k | 207k | 218k | 244k | 258k | 269k | 274k | 212k |
| x4 |  |  |  |  | 73k | 83k | 90k | 94k | 100k | 108k | 116k | 129k | 153k | 157k | 159k | 139k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 75 | 74 | 74 | 74 | 74 | 74 | 74 | 71 | 76 | 77 | 76 | 77 | 77 | 77 | 76 |
| 990-EZ | 73 | 63 | 71 | 70 | 70 | 72 | 72 | 72 | 72 | 73 | 76 | 76 | 75 | 76 | 77 | 78 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings   | Share |
|---------|-----------|-------|
| `false` | 2,826,918 | 63.2% |
| `0`     | 1,609,507 | 36.0% |
| `1`     | 21,245    | 0.5%  |
| `true`  | 17,897    | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_TRANSFER_EXEMPT_ORG_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
