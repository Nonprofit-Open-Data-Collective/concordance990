# SR_04_RLTD_ORG_CORP_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_TYPE

Type of entity (C corp, S corp, or trust)

- Description: Type of entity (C corp; S corp; or trust)

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

237k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/TypeOfEntity` | SZ | 2009–2012 | 40,845 | 7.49% | 53.1% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/EntityTypeTxt` | SZ | 2013–2024 | 196,347 | 4.19% | 52.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.1k | 11k | 13k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14k | 15k | 15k | 16k | 16k | 17k | 17k | 18k | 19k | 19k | 19k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 9 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 237,192 | 4              | 20      |

### Most common values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `C`             | 145,787 | 57.9% |
| `C CORP`        | 30,696  | 12.2% |
| `T`             | 16,639  | 6.6%  |
| `C Corp`        | 14,385  | 5.7%  |
| `S`             | 11,964  | 4.8%  |
| `C Corporation` | 11,902  | 4.7%  |
| `Trust`         | 5,708   | 2.3%  |
| `TRUST`         | 4,881   | 1.9%  |
| `C corp`        | 3,797   | 1.5%  |
| `C-CORP`        | 2,214   | 0.9%  |
| `C CORPORATION` | 1,979   | 0.8%  |
| `S CORP`        | 729     | 0.3%  |
| `c corp`        | 580     | 0.2%  |
| `C CORP.`       | 342     | 0.1%  |
| `LLC`           | 100     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | C | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | C CORPORATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
