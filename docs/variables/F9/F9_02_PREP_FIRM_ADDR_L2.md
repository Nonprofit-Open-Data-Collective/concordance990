# F9_02_PREP_FIRM_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_ADDR_L2

Preparer firm street address line 2

- Description: Foreign Address of Preparer Firm (Line 2)

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: text

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

6 / 6

xpaths observed / mapped

41k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 42% of values are numeric |
| ⓘ info | No sign of truncation | PreparerFirmGrp/PreparerUSAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 4.1x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmUSAddress/AddressLine2` | PC | 2009–2012 | 2,626 | 0.491% |  |
| x2 | `PreparerFirm/PreparerFirmForeignAddress/AddressLine2` | PC | 2009–2012 | 5 | 0.0011% |  |
| x3 | `PreparerFirmGrp/PreparerUSAddress/AddressLine2` | PC | 2013–2013 | 1,732 | 0.496% |  |
| x4 | `PreparerFirmGrp/PreparerForeignAddress/AddressLine2` | PC | 2013–2013 | 13 | 0.00429% |  |
| x5 | `PreparerFirmGrp/PreparerUSAddress/AddressLine2Txt` | PC | 2014–2024 | 36,300 | 0.694% |  |
| x6 | `PreparerFirmGrp/PreparerForeignAddress/AddressLine2Txt` | PC | 2014–2024 | 178 | 0.00228% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 189 | 382 | 516 | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 |  | 1 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 13 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.9k | 2.2k | 1.7k | 2.1k | 2.7k | 3.0k | 4.2k | 4.8k | 4.9k | 4.9k | 4.0k |
| x6 |  |  |  |  |  | 16 | 13 | 14 | 13 | 16 | 21 | 23 | 16 | 15 | 18 | 13 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 |
| 990-PF |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 27,221  | 6              | 35      |
| 990-EZ | 8,105   | 6              | 33      |
| 990-PF | 5,528   | 5              | 31      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `WEST` | 4,110   | 17.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AMERICAN FRIENDS OF KOLEL TIFERES YISRO… | APT 7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501779349301320_public.xml) |
| 2024 | 990EZ | x5 | BROWARD COUNTY HISPANIC BAR ASSOCIATION… | SUITE 133 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202542289349200509_public.xml) |
| 2013 | 990 | x4 | Morovis Community Health Center Inc | 100 Gran Bulevar Paseos | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443109349300749_public.xml) |
| 2013 | 990 | x3 | FTRMH BANKRUPTCY INC (FKA FRANK T RUTHE… | SUITE 700 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421999349300632_public.xml) |
| 2012 | 990 | x2 | Corporacion De Salud Asegurada Por Nues… | 100 Gran Bulevar Paseos | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400459349301010_public.xml) |
| 2012 | 990 | x1 | CALIFORNIA BEER & BEVERAGE DISTRIBUTORS | Suite 1200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349300300_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
