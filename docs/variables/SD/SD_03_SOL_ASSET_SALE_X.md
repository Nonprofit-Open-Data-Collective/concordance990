# SD_03_SOL_ASSET_SALE_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_03_SOL_ASSET_SALE_X

Solicited or received donations of art, historical treasures, or other
similar assets to be sold to raise funds \[x\]

- Description: During the year; did the organization solicit or receive
  donations of art; historical treasures or other similar assets to be
  sold to raise funds rather than to be maintained as part of the
  organization's collection?

- Table:

  [`SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p03-t00-orgs-collect-art-hist-treasure-oth)
  (one)

- Part: Part III - Organizations Maintaining Collections of Art,
  Historical Treasures, or Other Similar Assets

- Location:

  `SCHED-D-PART-03-LINE-05`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

145k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 97% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 7.3x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/SolicitedAssetsForSale` | SZ | 2009–2012 | 59,590 | 2.41% |  |
| x2 | `IRS990ScheduleD/SolicitedAssetsSaleInd` | SZ | 2013–2024 | 85,119 | 1.79% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIII/SolicitedAssetsForSale` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.7k | 21k | 28k | 4.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.7k | 5.1k | 5.7k | 6.1k | 6.8k | 6.9k | 7.4k | 8.8k | 9.2k | 9.6k | 10.0k | 5.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 17 | 18 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 100,644 | 69.5% |
| `0`     | 39,142  | 27.0% |
| `1`     | 3,078   | 2.1%  |
| `true`  | 1,845   | 1.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | AMERICAN FOLK ART MUSEUM | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430459349302583_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_03_SOL_ASSET_SALE_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
