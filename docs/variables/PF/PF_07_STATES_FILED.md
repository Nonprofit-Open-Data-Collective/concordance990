# PF_07_STATES_FILED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_STATES_FILED

States Filed With

- Description: States Filed With

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-08A`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

966k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 66 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/StatesFiledWith` | PF | 2009–2012 | 86,202 | 84.4% | 2.9% |
| x2 | `IRS990PF/StatementsRegardingActyGrp/OrgReportOrRegisterStateCd` | PF | 2013–2024 | 879,418 | 81.7% | 3.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.1k | 21k | 29k | 34k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 40k | 46k | 50k | 54k | 58k | 64k | 75k | 97k | 100k | 101k | 101k | 94k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 88 | 84 | 84 | 84 | 86 | 86 | 86 | 85 | 85 | 85 | 85 | 84 | 84 | 82 | 81 | 82 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 117,763 | 19.6% |
| `CA`  | 105,925 | 17.6% |
| `PA`  | 64,163  | 10.7% |
| `TX`  | 55,394  | 9.2%  |
| `FL`  | 54,077  | 9.0%  |
| `IL`  | 47,903  | 8.0%  |
| `MA`  | 45,144  | 7.5%  |
| `OH`  | 38,995  | 6.5%  |
| `DE`  | 37,548  | 6.3%  |
| `NJ`  | 30,446  | 5.1%  |
| `MI`  | 3,104   | 0.5%  |
| `WI`  | 62      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | WI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_STATES_FILED, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
