# PF_15_G_PAID_RECIP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_RECIP_NAME_ORG_L1

BusinessNameLine1

- Description: Recipient Business Name - BusinessNameLine1

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

741k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine1: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine1` | PF | 2009–2012 | 68,021 | 65.1% | 76.6% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine1` | PF | 2013–2013 | 29,782 | 64.9% | 77.1% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/RecipientBusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 642,918 | 63.7% | 75.0% |
| x4 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/RecipientBusinessName/BusinessNameLine1` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 17k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 30k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 35k | 38k | 41k | 45k | 50k | 59k | 74k | 75k | 77k | 77k | 73k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 67 | 68 | 67 | 65 | 65 | 65 | 65 | 64 | 65 | 66 | 67 | 64 | 63 | 62 | 62 | 64 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 740,721 | 26             | 76      |

### Most common values

| Value                                  | Filings | Share |
|----------------------------------------|---------|-------|
| `SALVATION ARMY`                       | 22,760  | 15.6% |
| `AMERICAN RED CROSS`                   | 19,188  | 13.1% |
| `AMERICAN CANCER SOCIETY`              | 18,439  | 12.6% |
| `THE SALVATION ARMY`                   | 16,373  | 11.2% |
| `DOCTORS WITHOUT BORDERS`              | 14,891  | 10.2% |
| `AMERICAN HEART ASSOCIATION`           | 13,441  | 9.2%  |
| `HABITAT FOR HUMANITY`                 | 11,711  | 8.0%  |
| `PLANNED PARENTHOOD`                   | 10,603  | 7.3%  |
| `WOUNDED WARRIOR PROJECT`              | 6,456   | 4.4%  |
| `ALZHEIMER'S ASSOCIATION`              | 5,735   | 3.9%  |
| `WORLD CENTRAL KITCHEN`                | 1,733   | 1.2%  |
| `BOY SCOUTS OF AMERICA`                | 1,275   | 0.9%  |
| `FEEDING AMERICA`                      | 1,124   | 0.8%  |
| `SAMARITAN'S PURSE`                    | 878     | 0.6%  |
| `ST JUDE CHILDREN'S RESEARCH HOSPITAL` | 826     | 0.6%  |
| `MARCH OF DIMES`                       | 491     | 0.3%  |
| `UNITED WAY`                           | 192     | 0.1%  |
| `American Cancer Society`              | 19      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | FIRST CONGREGATIONAL CHURCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x2 | Tom & Helen Tonkin Foundation | ARC of Natrona County | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433439349100103_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | ARDMORE UNITED METHODIST CHURCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_RECIP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
