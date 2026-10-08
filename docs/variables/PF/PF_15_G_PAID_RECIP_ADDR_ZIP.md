# PF_15_G_PAID_RECIP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_ADDR_ZIP

Postal code

- Description: Recipient Foreign Address - Postal code

- Table:

  [`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t01-supplementary-info-grant-paid)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03A-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 8

xpaths observed / mapped

931k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 98.8% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 472 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientUSAddress/ZIPCode` | PF | 2009–2012 | 83,387 | 81.3% | 77.5% |
| x2 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientForeignAddress/PostalCode` | PF | 2009–2012 | 2,024 | 2.01% | 30.6% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/ZIPCode` | PF | 2013–2013 | 37,437 | 81.6% | 78.3% |
| x4 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/PostalCode` | PF | 2013–2013 | 926 | 2.02% | 29.6% |
| x5 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientUSAddress/ZIPCd` | PF | 2014–2024 | 784,774 | 75.7% | 76.0% |
| x6 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 22,443 | 2.48% | 35.6% |
| x7 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientForeignAddress/PostalCode` | PF | not observed | 0 |  |  |
| x8 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientUSAddress/ZIPCode` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 21k | 28k | 32k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 60 | 472 | 688 | 804 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 37k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 926 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 44k | 48k | 51k | 55k | 61k | 71k | 90k | 92k | 93k | 94k | 87k |
| x6 |  |  |  |  |  | 1.1k | 1.2k | 1.2k | 1.4k | 1.5k | 1.8k | 2.6k | 2.7k | 2.9k | 3.0k | 2.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 81 | 82 | 82 | 81 | 82 | 82 | 81 | 81 | 81 | 81 | 81 | 78 | 77 | 76 | 75 | 76 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 866,092 | 80.9% |
| `999999999` | 191,358 | 17.9% |
| `999999`    | 3,926   | 0.4%  |
| `A9A 9A9`   | 3,726   | 0.3%  |
| `9999`      | 3,407   | 0.3%  |
| `AA9 9AA`   | 1,960   | 0.2%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | NIRMALA FOUNDATION INC | 533101 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540779349100914_public.xml) |
| 2024 | 990PF | x5 | THELMA WEBB SCHOLARSHIP | 15219 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2013 | 990PF | x4 | EZCORP FOUNDATION | M2H3P2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349102592_public.xml) |
| 2013 | 990PF | x3 | ALEXANDRA R MCCORMICK REVOCABLE TRUST | 152121607 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402619349100500_public.xml) |
| 2012 | 990PF | x2 | MILDRED HITCHCOCK HUFF CHARITABLE TRUST | CORK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342879349100509_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 95202 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
