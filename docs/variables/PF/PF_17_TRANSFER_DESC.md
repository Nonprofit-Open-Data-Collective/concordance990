# PF_17_TRANSFER_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_17_TRANSFER_DESC

Description of transfers; transactions; and sharing arrangements

- Description: Description of transfers; transactions; and sharing
  arrangements

- Table:

  [`PF-P17-T01-TRANSFERS-TRANSACTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p17-t01-transfers-transactions)
  (many)

- Part: Part XVII - Information Regarding Transfers to and Transactions
  and Relationships With Noncharitable Exempt Organizations (2023: Part
  XVI)

- Location:

  `F990-PF-PART-17-LINE-01D-COL-D`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

6.8k

filings with a value

2009–2024

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
| x1 | `IRS990PF/TrnsfrTrRlnWithNoncharitableEO/TransferSchedule/DescriptionOfTransfersEtc` | PF | 2009–2012 | 535 | 0.516% | 37.0% |
| x2 | `IRS990PF/TrnsfrTransRlnNonchrtblEOGrp/TransferScheduleDetail/TransfersTransAndShrArrngmDesc` | PF | 2013–2024 | 6,255 | 0.673% | 27.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21 | 130 | 178 | 206 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 258 | 282 | 304 | 349 | 382 | 440 | 479 | 693 | 721 | 763 | 811 | 773 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 6,790   | 66             | 1,971   |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `CASH` | 347     | 37.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | GATKA FEDERATION USA INC | CASH DONATION AND ONLINE REGISTRATION FEES FOR CAMP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521339349102557_public.xml) |
| 2012 | 990PF | x1 | SHERWOOD TRUST | CONTRIBUTION TO HELP FUND EQUIPMENT PURCHASES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349101151_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_17_TRANSFER_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
