# PF_15_G_FUTURE_RECIP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_ADDR_ZIP

Postal code

- Description: Recipient Foreign Address - Postal code

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 8

xpaths observed / mapped

27k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values have the ZIP format | 95.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 32 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientUSAddress/ZIPCode` | PF | 2009–2012 | 2,300 | 2.28% | 65.4% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientForeignAddress/PostalCode` | PF | 2009–2012 | 103 | 0.108% | 68.0% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/ZIPCode` | PF | 2013–2013 | 997 | 2.17% | 65.1% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/PostalCode` | PF | 2013–2013 | 40 | 0.0872% | 62.5% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientUSAddress/ZIPCd` | PF | 2014–2024 | 22,342 | 2.12% | 66.3% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 1,323 | 0.182% | 61.6% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientForeignAddress/PostalCode` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientUSAddress/ZIPCode` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 69 | 567 | 754 | 910 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6 | 20 | 34 | 43 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 997 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 40 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.4k | 1.5k | 1.9k | 2.9k | 2.9k | 2.9k | 2.8k | 2.4k |
| x6 |  |  |  |  |  | 44 | 41 | 48 | 52 | 66 | 110 | 167 | 184 | 198 | 204 | 209 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 25,661  | 81.3% |
| `999999999` | 4,340   | 13.7% |
| `9999`      | 463     | 1.5%  |
| `999999`    | 382     | 1.2%  |
| `A9A 9A9`   | 367     | 1.2%  |
| `AA9 9AA`   | 328     | 1.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BERRY CHARITABLE FOUNDATION | WC2A 2JR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349104656_public.xml) |
| 2024 | 990PF | x5 | DUCHEN FOUNDATION | 90037 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530599349100863_public.xml) |
| 2013 | 990PF | x4 | DENNIS & PHYLLIS WASHINGTON FOUNDATION | V9Z 0Z7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403209349100105_public.xml) |
| 2013 | 990PF | x3 | LYNDONVILLE AREA FOUNDATION INC | 14411 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349101833_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | 82120 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | THE HARVEST FOUNDATION OF THE PIEDMONT | 24112 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349100517_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
