# SR_02_RLTD_ORG_CTRL_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_CTRL_NAME_L2

Direct controlling entity name line 2

- Description: Direct Controlling Entity Name - BusinessNameLine2

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

9.8k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntityName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine2: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntityName/BusinessNameLine2` | SZ | 2009–2012 | 998 | 0.205% | 48.8% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine2` | SZ | 2013–2013 | 413 | 0.208% | 44.8% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine2Txt` | SZ | 2014–2024 | 8,402 | 0.179% | 34.1% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntity/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 94 | 232 | 303 | 369 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 413 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 426 | 530 | 567 | 697 | 919 | 940 | 956 | 968 | 964 | 939 | 496 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 9,813   | 19             | 37      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `S NETWORK`              | 1,484   | 34.7% |
| `N/A`                    | 929     | 21.7% |
| `CATHOLIC DIOCESE OF LA` | 270     | 6.3%  |
| `MUNSON HOME HEALTH`     | 185     | 4.3%  |
| `MUNSON HEALTHCARE`      | 171     | 4.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CURRY LANE HOUSING CORPORATION | MENTAL HEALTH CENTERS OF WESTERN IL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532869349300628_public.xml) |
| 2013 | 990 | x2 | ARCHWAY CLASSICAL ACADEMY TRIVIUM | HEARTS ACADEMIES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201501359349309170_public.xml) |
| 2012 | 990 | x1 | NORTH VALLEY HOSPITAL INC | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349302074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_CTRL_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
