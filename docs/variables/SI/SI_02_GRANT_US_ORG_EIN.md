# SI_02_GRANT_US_ORG_EIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_EIN

Grantee EIN

- Description: EIN of recipient

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

476k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the EIN format | 100.0% of values match ^999999999\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/EINOfRecipient` | SZ | 2009–2012 | 61,691 | 12.2% | 51.1% |
| x2 | `IRS990ScheduleI/RecipientTable/RecipientEIN` | SZ | 2013–2024 | 413,945 | 12% | 50.6% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/EINOfRecipient` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.0k | 15k | 20k | 22k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 25k | 27k | 29k | 30k | 33k | 34k | 36k | 39k | 40k | 42k | 44k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 15 | 12 | 12 | 12 | 13 | 13 | 12 | 12 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share  |
|-------------|---------|--------|
| `999999999` | 475,636 | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | 522257109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503099349303295_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 311043937 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_EIN, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
