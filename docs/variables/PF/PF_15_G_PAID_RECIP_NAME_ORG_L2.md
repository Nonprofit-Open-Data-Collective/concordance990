# PF_15_G_PAID_RECIP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_NAME_ORG_L2

Recipient of grant paid during the year - business name line 2

- Description: Recipient Business Name - BusinessNameLine2

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

3 / 4

xpaths observed / mapped

90k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine2: longest value is exactly 50 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine2: longest value is exactly 50 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine2` | PF | 2009–2012 | 7,470 | 6.35% | 54.0% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine2` | PF | 2013–2013 | 2,777 | 6.05% | 54.1% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine2Txt` | PF | 2014–2024 | 79,989 | 6.99% | 46.3% |
| x4 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 156 | 2.1k | 2.6k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.8k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 4.4k | 4.9k | 5.1k | 5.5k | 6.3k | 8.0k | 10.0k | 9.7k | 9.1k | 9.0k | 8.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 9 | 8 | 6 | 6 | 8 | 8 | 8 | 8 | 8 | 9 | 9 | 8 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 90,236  | 19             | 61      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `FOUNDATION`     | 4,123   | 28.6% |
| `CHURCH`         | 1,553   | 10.8% |
| `CENTER`         | 1,403   | 9.7%  |
| `ATTN TREASURER` | 1,348   | 9.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | HUGHES WALTER M TUW XXXXX9009 | MUSKINGUM UNIVERSITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541279349102579_public.xml) |
| 2013 | 990PF | x2 | CALVIN P & IRMA B BENTLEY CHARITABLE FND | MONTGOMERY-SCHOOL OF NURSING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530449349100863_public.xml) |
| 2012 | 990PF | x1 | LEO J SIGNAIGO CHARITABLE TRUST | BOY SCOUTS OF AMERICA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101540_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
