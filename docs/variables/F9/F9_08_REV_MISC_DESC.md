# F9_08_REV_MISC_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_MISC_DESC

Miscellaneous revenue description

- Description: Misc. Revenue Description

- Table:

  [`F9-P08-T02-REVENUE-MISC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t02-revenue-misc)
  (many)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-11-ABC`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.4M

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990/OtherRevenueMiscGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/OtherRevenueMisc/Description` | PC | 2009–2012 | 204,081 | 39.7% | 38.8% |
| x2 | `IRS990/OtherRevenueMiscGrp/Desc` | PC | 2013–2024 | 1,186,468 | 31.3% | 34.7% |
| x3 | `IRS990/Form990PartVIII/OtherRevenueMisc/Description` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 51k | 64k | 71k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 78k | 84k | 88k | 90k | 96k | 97k | 101k | 114k | 117k | 117k | 118k | 87k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 51 | 42 | 40 | 40 | 39 | 38 | 38 | 37 | 37 | 36 | 36 | 36 | 35 | 34 | 33 | 31 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,390,547 | 16             | 100     |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `MISCELLANEOUS`         | 190,279 | 26.8% |
| `OTHER INCOME`          | 151,109 | 21.3% |
| `MISCELLANEOUS INCOME`  | 113,252 | 15.9% |
| `OTHER REVENUE`         | 69,774  | 9.8%  |
| `MISCELLANEOUS REVENUE` | 58,592  | 8.2%  |
| `OTHER`                 | 38,384  | 5.4%  |
| `Miscellaneous`         | 36,106  | 5.1%  |
| `Other Income`          | 18,531  | 2.6%  |
| `MISC INCOME`           | 16,742  | 2.4%  |
| `ADVERTISING`           | 6,798   | 1.0%  |
| `PPP LOAN FORGIVENESS`  | 4,188   | 0.6%  |
| `Miscellaneous Income`  | 2,373   | 0.3%  |
| `INSURANCE PROCEEDS`    | 2,357   | 0.3%  |
| `TENANT CHARGES`        | 1,247   | 0.2%  |
| `Other`                 | 896     | 0.1%  |
| `Other Revenue`         | 227     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | DEVELOPER FEES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOUTH CENTRAL BEHAVIORAL SERVICES | MISCELLANEOUS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420229349300902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_MISC_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
