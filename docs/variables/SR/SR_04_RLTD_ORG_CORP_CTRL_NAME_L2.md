# SR_04_RLTD_ORG_CORP_CTRL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_CTRL_NAME_L2

Direct controlling entity name line 2

- Description: Direct Controlling Entity Name - BusinessNameLine2

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

1.4k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/DirectControllingEntityName/BusinessNameLine2` | SZ | 2009–2012 | 165 | 0.0351% | 39.4% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine2` | SZ | 2013–2013 | 88 | 0.0443% | 20.5% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine2Txt` | SZ | 2014–2024 | 1,141 | 0.0281% | 17.4% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartIV/DirectControllingEntity/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 25 | 25 | 52 | 63 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 88 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 97 | 98 | 102 | 104 | 95 | 102 | 106 | 118 | 119 | 122 | 78 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,394   | 17             | 40      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 63      | 16.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UTICA TEACHERS ASSOCIATION | UTICA TEACHERS ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349303481_public.xml) |
| 2013 | 990 | x2 | ST FRANCIS HOSPITAL INC | ST FRANCIS HOSPITAL INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443249349300324_public.xml) |
| 2012 | 990 | x1 | ST JOSEPH'SCANDLER HEALTH | ST JOSEPH'S/CANDLER HEALTH SYSTEM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420439349301772_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_CTRL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
