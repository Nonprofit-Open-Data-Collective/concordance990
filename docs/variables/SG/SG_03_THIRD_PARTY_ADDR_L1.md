# SG_03_THIRD_PARTY_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_ADDR_L1

Thirty party - street address line 1

- Description: Address Of Third Party Foreign - AddressLine1

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

6.5k

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/ThirdPartyUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfThirdPartyUS/AddressLine1` | SZ | 2009–2012 | 660 | 0.0896% |  |
| x2 | `IRS990ScheduleG/AddressOfThirdPartyForeign/AddressLine1` | SZ | 2010–2010 | 1 | 0.000537% |  |
| x3 | `IRS990ScheduleG/ThirdPartyUSAddress/AddressLine1` | SZ | 2013–2013 | 266 | 0.0877% |  |
| x4 | `IRS990ScheduleG/ThirdPartyForeignAddress/AddressLine1` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x5 | `IRS990ScheduleG/ThirdPartyUSAddress/AddressLine1Txt` | SZ | 2014–2024 | 5,498 | 0.137% |  |
| x6 | `IRS990ScheduleG/ThirdPartyForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 63 | 0.00132% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29 | 162 | 224 | 245 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 266 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 308 | 347 | 374 | 392 | 408 | 434 | 542 | 640 | 682 | 746 | 625 |
| x6 |  |  |  |  |  | 5 | 4 | 3 | 4 | 7 | 10 | 5 | 4 | 8 | 7 | 6 |
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
| 990    | 5,158   | 17             | 35      |
| 990-EZ | 1,331   | 18             | 35      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `PO BOX 92669` | 121     | 15.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | JEWISH COMMUNITY CENTRE OF GREATER VANC… | PO Box 9310 Stn Prov Govt | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610279349300216_public.xml) |
| 2024 | 990 | x5 | ROANOKE LODGE 197 BPO ELKS | 9900 CLINTON RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522119349300212_public.xml) |
| 2013 | 990 | x4 | THE RED SOX FOUNDATION INC | 50 MINTHORN BOULEVARD SUITE 400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403189349304650_public.xml) |
| 2013 | 990 | x3 | BENEVOLENT & PROTECTIVE ORDER OF TIFTON… | P O BOX 1908 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401819349300810_public.xml) |
| 2012 | 990 | x1 | TORAH LEARNING CENTER OF SAN ANTONIO | 3003 SHOLOM DRIVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349300514_public.xml) |
| 2010 | 990 | x2 | THE RED SOX FOUNDATION INC | 285 WATER STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201133199349306528_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
