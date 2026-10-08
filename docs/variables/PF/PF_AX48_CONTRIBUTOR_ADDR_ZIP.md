# PF_AX48_CONTRIBUTOR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX48_CONTRIBUTOR_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

- Table:

  [`PF-P99-T48-CONTRIBUTOR`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t48-contributor)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-48`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

85k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.7% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 5 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SubstantialContributorsSch/SubstantialContributor/USAddress/ZIPCode` | PF | 2009–2012 | 8,981 | 9.14% | 22.2% |
| x2 | `SubstantialContributorsSch/SubstantialContributor/ForeignAddress/PostalCode` | PF | 2009–2012 | 54 | 0.0526% | 14.8% |
| x3 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/ZIPCode` | PF | 2013–2013 | 4,134 | 9.01% | 24.0% |
| x4 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/PostalCode` | PF | 2013–2013 | 29 | 0.0632% | 10.3% |
| x5 | `SubstantialContributorsSch/SubstantialContributorDetail/USAddress/ZIPCd` | PF | 2014–2024 | 71,219 | 6.61% | 25.2% |
| x6 | `SubstantialContributorsSch/SubstantialContributorDetail/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 566 | 0.0523% | 18.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 160 | 2.2k | 3.0k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 14 | 17 | 21 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 4.1k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 29 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 4.7k | 4.6k | 4.8k | 5.1k | 5.3k | 5.9k | 7.9k | 8.8k | 8.4k | 8.1k | 7.6k |
| x6 |  |  |  |  |  | 34 | 31 | 38 | 46 | 38 | 52 | 61 | 62 | 67 | 77 | 60 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 9 | 9 | 9 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 79,703  | 93.1% |
| `999999999` | 5,587   | 6.5%  |
| `A9A 9A9`   | 85      | 0.1%  |
| `9999`      | 75      | 0.1%  |
| `AA9 9AA`   | 57      | 0.1%  |
| `999999`    | 41      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | BOYER JOHN 1ST T-P-C-C-M FD-CHAR TR | 40667 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349102300_public.xml) |
| 2024 | 990PF | x5 | CARLSON FAMILY LIGHTSHIELD FOUNDATION | 55330 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349101877_public.xml) |
| 2013 | 990PF | x4 | 613 TR | 99012 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201643209349103329_public.xml) |
| 2013 | 990PF | x3 | MCELLIGOTT FAMILY FOUNDATION | 70518 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402559349100105_public.xml) |
| 2012 | 990PF | x2 | Wansink Consumer Education Foundation | 14850 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311059349100611_public.xml) |
| 2012 | 990PF | x1 | THE STEWARDSHIP FOUNDATION | 49464 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349101662_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX48_CONTRIBUTOR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
