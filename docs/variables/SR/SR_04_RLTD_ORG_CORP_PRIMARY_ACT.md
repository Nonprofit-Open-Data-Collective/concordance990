# SR_04_RLTD_ORG_CORP_PRIMARY_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_PRIMARY_ACT

Primary activity

- Description: Primary activity; product or service

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

250k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/PrimaryActivitiesTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/PrimaryActivity` | SZ | 2009–2012 | 42,261 | 7.79% | 53.4% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/PrimaryActivitiesTxt` | SZ | 2013–2024 | 208,108 | 4.45% | 52.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.3k | 11k | 13k | 14k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 16k | 16k | 17k | 18k | 18k | 18k | 19k | 20k | 20k | 20k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 250,369 | 17             | 100     |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `INSURANCE`           | 18,799  | 16.1% |
| `REAL ESTATE`         | 16,195  | 13.8% |
| `INACTIVE`            | 13,203  | 11.3% |
| `HOLDING COMPANY`     | 12,141  | 10.4% |
| `HEALTHCARE`          | 11,933  | 10.2% |
| `MEDICAL SERVICES`    | 10,588  | 9.1%  |
| `HOUSING`             | 8,661   | 7.4%  |
| `MANAGEMENT SERVICES` | 6,996   | 6.0%  |
| `INVESTMENT`          | 5,723   | 4.9%  |
| `PHARMACY`            | 4,370   | 3.7%  |
| `Insurance`           | 3,727   | 3.2%  |
| `MANAGEMENT`          | 1,679   | 1.4%  |
| `Inactive`            | 1,486   | 1.3%  |
| `HOLDING CO`          | 661     | 0.6%  |
| `HEALTH CARE`         | 334     | 0.3%  |
| `Real Estate`         | 152     | 0.1%  |
| `Healthcare`          | 148     | 0.1%  |
| `Management`          | 141     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | MANAGES FEDERATION BUILDING 74, L.P. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | PHYSICIAN PRACTICES / RETAIL PHARMACIES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_PRIMARY_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
