# SN_02_DOA_RECIP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_02_DOA_RECIP_ADDR_L2

Recipient street address line 2

- Description: Address Foreign - AddressLine2

- Table:

  [`SN-P02-T01-DISPOSITION-OF-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p02-t01-disposition-of-assets)
  (many)

- Part: Part II - Sale, Exchange, Disposition, or Other Transfer of More
  Than 25% of the Organization's Assets

- Location:

  `SCHED-N-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

442

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/DispositionTable/AddressUS/AddressLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/DispositionTable/AddressUS/AddressLine2` | SZ | 2009–2012 | 51 | 0.00439% | 21.6% |
| x2 | `IRS990ScheduleN/DispositionTable/AddressForeign/AddressLine2` | SZ | 2011–2012 | 5 | 0.0011% | 40.0% |
| x3 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine2` | SZ | 2013–2013 | 26 | 0.00857% | 19.2% |
| x4 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 1 | 0.00033% | 100.0% |
| x5 | `IRS990ScheduleN/DispositionOfAssetsDetail/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 340 | 0.00986% | 20.3% |
| x6 | `IRS990ScheduleN/DispositionOfAssetsDetail/ForeignAddress/AddressLine2Txt` | SZ | 2015–2024 | 19 | 0.0011% | 36.8% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartII/DispositionTable/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5 | 16 | 18 | 12 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 26 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 18 | 31 | 13 | 17 | 23 | 28 | 38 | 40 | 50 | 37 | 45 |
| x6 |  |  |  |  |  |  | 1 | 1 | 1 | 1 | 2 | 1 | 3 | 3 | 1 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 300     | 14             | 35      |
| 990-EZ | 142     | 12             | 29      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `Suite 100` | 6       | 3.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | NISHIMACHI FOUNDATION | MotoAzabu | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349300008_public.xml) |
| 2024 | 990 | x5 | UNITED METHODIST WOMEN GREAT PLAINS CON… | 777 United Nations Plaza | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531519349300103_public.xml) |
| 2013 | 990 | x4 | NISHIMACHI FOUNDATION | Minato | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411299349300406_public.xml) |
| 2013 | 990 | x3 | KAPPA KAPPA GAMMA FRATERNITY INC | 265 PROSPECT ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443569349300119_public.xml) |
| 2012 | 990 | x2 | NISHIMACHI FOUNDATION | Minato-ku | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349300314_public.xml) |
| 2012 | 990 | x1 | PROTESTANTS FOR THE COMMON GOOD | Ste 500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349306309_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_02_DOA_RECIP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
