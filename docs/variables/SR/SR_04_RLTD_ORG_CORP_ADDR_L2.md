# SR_04_RLTD_ORG_CORP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_ADDR_L2

Related organization street address line 2

- Description: Address Foreign - AddressLine2

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

6 / 6

xpaths observed / mapped

7.4k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressUS/AddressLine2` | SZ | 2009–2012 | 428 | 0.0657% | 34.1% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIV/AddressForeign/AddressLine2` | SZ | 2009–2012 | 91 | 0.0139% | 14.3% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 116 | 0.0583% | 31.0% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 38 | 0.0191% | 26.3% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 4,364 | 0.0963% | 60.3% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 2,332 | 0.0642% | 33.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 68 | 111 | 131 | 118 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 19 | 23 | 24 | 25 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 116 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 38 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 147 | 165 | 173 | 179 | 475 | 510 | 589 | 596 | 616 | 647 | 267 |
| x6 |  |  |  |  |  | 42 | 50 | 85 | 61 | 320 | 326 | 356 | 354 | 370 | 190 | 178 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 7,369   | 13             | 35      |

### Most common values

| Value                  | Filings | Share |
|------------------------|---------|-------|
| `130 FENCHURCH STREET` | 1,275   | 15.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | St Francis Hospital Inc | Clanwilliam Place | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349302599_public.xml) |
| 2024 | 990 | x5 | St Francis Hospital Inc | Ste 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349302599_public.xml) |
| 2013 | 990 | x4 | MIDMICHIGAN HEALTH DEVELOPMENT | GOVERNORS SQUARE BLDG 4 2ND FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521349349307557_public.xml) |
| 2013 | 990 | x3 | SCHEURER HOSPITAL | 170 N CASEVILLE ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500419349300115_public.xml) |
| 2012 | 990 | x2 | MIDMICHIGAN MEDICAL CENTER-GLADWIN | GOVERNORS SQUARE BLDG 4 2ND FLOOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349306245_public.xml) |
| 2012 | 990 | x1 | FRIENDS OF GOETHE INC | 1197 PEACHTREE RD NE PLAZA LEVEL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343169349301504_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
