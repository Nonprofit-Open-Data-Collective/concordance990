# PF_17_TRANSFER_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_17_TRANSFER_NAME_ORG_L1

Noncharitable exempt organization (transfer schedule) - business name
line 1

- Description: Name Of Noncharitable EO - BusinessNameLine1

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

7.3k

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
| ⓘ info | No sign of truncation | IRS990PF/TrnsfrTrRlnWithNoncharitableEO/TransferSchedule/NameOfNoncharitableEO/BusinessNameLine1: longest value is exactly 75 characters; IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/NoncharitableExemptOrgName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/TrnsfrTrRlnWithNoncharitableEO/TransferSchedule/NameOfNoncharitableEO/BusinessNameLine1` | PF | 2009–2012 | 581 | 0.568% | 34.3% |
| x2 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/NoncharitableExemptOrgName/BusinessNameLine1` | PF | 2013–2013 | 279 | 0.608% | 31.2% |
| x3 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/NoncharitableExemptOrgName/BusinessNameLine1Txt` | PF | 2014–2024 | 6,448 | 0.707% | 25.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22 | 144 | 188 | 227 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 279 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 308 | 328 | 380 | 415 | 478 | 525 | 754 | 771 | 812 | 865 | 812 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 7,308   | 24             | 75      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| (blank) | 212     | 28.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | MIRIAM & ARTHUR DIAMOND CHARITABLE TRUST | JGIVTS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541299349102994_public.xml) |
| 2013 | 990PF | x2 | FRANCIS O & ELIZABETH M HUNNEWELL FOUND… |  | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431329349102143_public.xml) |
| 2012 | 990PF | x1 | SHERWOOD TRUST | PRESCOTT WA PARKS & REC DISTRICT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349101151_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_17_TRANSFER_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
