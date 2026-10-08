# PF_17_RELATIONSHIP_TYPE_ORG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_17_RELATIONSHIP_TYPE_ORG

Type of organization

- Description: Type of organization

- Table:

  [`PF-P17-T02-RELATIONSHIPS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p17-t02-relationships)
  (many)

- Part: Part XVII - Information Regarding Transfers to and Transactions
  and Relationships With Noncharitable Exempt Organizations (2023: Part
  XVI)

- Location:

  `F990-PF-PART-17-LINE-02B-COL-B`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

12k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/TrnsfrTrRlnWithNoncharitableEO/RelationshipSchedule/TypeOfOrganization` | PF | 2009–2012 | 1,128 | 1.09% | 15.8% |
| x2 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/RelationshipScheduleDetail/OrganizationTypeDesc` | PF | 2013–2024 | 10,932 | 1.01% | 18.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 40 | 290 | 361 | 437 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 494 | 576 | 600 | 666 | 689 | 739 | 915 | 1.3k | 1.3k | 1.3k | 1.3k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 12,060  | 10             | 20      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `501(C)(6)` | 1,099   | 20.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | MARION BRADLEY VIA MEMORIAL FOUNDATION | 501(C)(2) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541349349103949_public.xml) |
| 2012 | 990PF | x1 | LA FAMILIA FORMERLY NAT'L HISPANIC | 501(C)(3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332059349100308_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_17_RELATIONSHIP_TYPE_ORG, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
