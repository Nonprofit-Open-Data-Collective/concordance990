# F9_00_IRS_SEC_IP_ADDR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_IP_ADDR

Filer IP address

- Description: Verification

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-X`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

2 / 2

xpaths observed / mapped

1.4M

filings with a value

2016–2020

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 1647.3x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4769.2x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 352.9x year-on-year (in 2020) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/IPAddress/IPv4AddressTxt` | PC | 2016–2020 | 1,369,446 | 0.0445% |  |
| x2 | `FilingSecurityInformation/IPAddress/IPv6AddressTxt` | PC | 2019–2020 | 2 | 0.000204% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  | 273k | 389k | 404k | 303k | 269 |  |  |  |  |
| x2 |  |  |  |  |  |  |  |  |  |  | 1 | 1 |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  | 63 | 85 | 84 | 57 | \<1 |  |  |  |  |
| 990-EZ |  |  |  |  |  |  |  | 59 | 79 | 78 | 64 | \<1 |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  | 68 | 85 | 78 | 51 | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 764,226 | 13             | 15      |
| 990-EZ | 400,812 | 13             | 38      |
| 990-PF | 204,409 | 13             | 15      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `167.68.16.49` | 35,740  | 23.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990EZ | x1 | WOMEN UNITED RISE CORPORATION | 75.140.90.146 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202141019349200069_public.xml) |
| 2020 | 990EZ | x2 | Stallworth LLC | 2601:403:4202:3EF0:B599:9304:B0FE:5B09 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202111529349200756_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_IP_ADDR, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
