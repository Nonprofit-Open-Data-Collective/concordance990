# SK_03_BOND_BIZUSE_COUNS_KONTR_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_03_BOND_BIZUSE_COUNS_KONTR_X

Routinely engages bond or other outside counsel to review management or
service contracts \[x\]

- Description: Bond Counsel routinely engaged to review management or
  service contracts?

- Table:

  [`SK-P03-T01-BOND-PRIVATE-BIZ-USE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p03-t01-bond-private-biz-use)
  (many)

- Part: Part III - Private Business Use

- Location:

  `SCHED-K-PART-03-LINE-03B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

15k

filings with a value

2011–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 24% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIII/EngageBondCounselContracts` | SZ | 2011–2012 | 2,198 | 0.542% | 43.7% |
| x2 | `IRS990ScheduleK/TaxExemptBondsPrivateBusUseGrp/EngageBondCounselContractsInd` | SZ | 2013–2024 | 12,742 | 0.275% | 49.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 1.2k | 974 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 964 | 1.0k | 1.0k | 1.1k | 1.1k | 1.1k | 1.1k | 1.1k | 1.1k | 1.1k | 1.1k | 763 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 7,013   | 46.4% |
| `true`  | 4,440   | 29.4% |
| `false` | 2,515   | 16.6% |
| `0`     | 1,140   | 7.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INFIRMARY HEALTH SYSTEM INC | true | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610429349300441_public.xml) |
| 2012 | 990 | x1 | CHARLESTOWN COMMUNITY INC | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332779349300313_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_03_BOND_BIZUSE_COUNS_KONTR_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
