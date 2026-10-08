# SR_04_RLTD_ORG_CORP_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_NAME_L2

Related organization name line 2

- Description: Name Of Related Org - BusinessNameLine2

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

3.5k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 5% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/NameOfRelatedOrg/BusinessNameLine2` | SZ | 2009–2012 | 541 | 0.142% | 30.9% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine2` | SZ | 2013–2013 | 271 | 0.136% | 18.1% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine2Txt` | SZ | 2014–2024 | 2,725 | 0.0389% | 42.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 65 | 96 | 124 | 256 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 271 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 304 | 314 | 334 | 358 | 333 | 188 | 199 | 205 | 197 | 185 | 108 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 3,537   | 19             | 53      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `Assoc`                           | 644     | 22.3% |
| `uilding Comdominium Association` | 644     | 22.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | UTICA TEACHERS ASSOCIATION | CORP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349303481_public.xml) |
| 2013 | 990 | x2 | WEST VIRGINIA AFL-CIO UNITY CENTER | UNITY INSURANCE GROUP INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531269349301448_public.xml) |
| 2012 | 990 | x1 | ST FRANCIS OF BAKER CITY FKA ST ELIZABE… | UILDING CONDOMINIUM ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421219349300707_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
