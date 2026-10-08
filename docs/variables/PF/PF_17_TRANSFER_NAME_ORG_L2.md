# PF_17_TRANSFER_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_17_TRANSFER_NAME_ORG_L2

BusinessNameLine2

- Description: Name Of Noncharitable EO - BusinessNameLine2

- Table:

  [`PF-P17-T01-TRANSFERS-TRANSACTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p17-t01-transfers-transactions)
  (many)

- Part: Part XVII - Information Regarding Transfers to and Transactions
  and Relationships With Noncharitable Exempt Organizations (2023: Part
  XVI)

- Location:

  `F990-PF-PART-17-LINE-01D-COL-C`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

81

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

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
| x1 | `IRS990PF/TrnsfrTrRlnWithNoncharitableEO/TransferSchedule/NameOfNoncharitableEO/BusinessNameLine2` | PF | 2009–2012 | 23 | 0.0175% | 13.0% |
| x2 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/NoncharitableExemptOrgName/BusinessNameLine2` | PF | 2013–2013 | 10 | 0.0218% |  |
| x3 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/NoncharitableExemptOrgName/BusinessNameLine2Txt` | PF | 2014–2024 | 48 | 0.00174% | 12.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 7 | 8 | 7 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 10 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6 | 6 | 4 | 6 | 4 | 2 | 4 | 6 | 5 | 3 | 2 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 81      | 12             | 21      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `OF NEW YORK INC` | 13      | 15.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | FREEPORT PUBLIC LIBRARY FOUNDATION | LIBRARY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349101814_public.xml) |
| 2013 | 990PF | x2 | OTERO COUNTY ECONOMIC DEVELOPMENT | OF COMMERCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443219349102019_public.xml) |
| 2012 | 990PF | x1 | RUTH T JINKS FOUNDATION INC | DEVELOPMENT AUTH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441969349100514_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_17_TRANSFER_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
