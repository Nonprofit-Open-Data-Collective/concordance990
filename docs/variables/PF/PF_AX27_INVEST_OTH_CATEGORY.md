# PF_AX27_INVEST_OTH_CATEGORY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX27_INVEST_OTH_CATEGORY

Category/ Item

- Description: Category/ Item

- Table:

  [`PF-P99-T27-INVEST-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t27-invest-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-27`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

368k

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
| ⓘ info | No sign of truncation | InvestmentsOtherSchedule2/InvestmentsOtherGrp/CategoryOrItemTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsOtherSchedule2/InvestmentsOther/CategoryOrItem` | PF | 2009–2012 | 31,122 | 31.5% | 60.0% |
| x2 | `InvestmentsOtherSchedule2/InvestmentsOtherGrp/CategoryOrItemTxt` | PF | 2013–2024 | 337,012 | 32.3% | 63.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 750 | 7.2k | 11k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 17k | 18k | 19k | 21k | 24k | 29k | 39k | 40k | 40k | 40k | 37k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 32 | 29 | 31 | 31 | 32 | 32 | 30 | 30 | 30 | 32 | 33 | 34 | 33 | 33 | 32 | 32 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 368,134 | 27             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `46434G103 ISHARES CORE MSCI EM` | 20,093  | 10.1% |
| `46432F842 ISHARES CORE MSCI EA` | 14,117  | 7.1%  |
| `922908629 VANGUARD MIDCAP VIPE` | 13,398  | 6.8%  |
| `74440Y884 PGIM HIGH YIELD-Q 10` | 11,017  | 5.6%  |
| `464287200 ISHARES CORE S&P 500` | 9,488   | 4.8%  |
| `476313408 JENSEN QUALITY GROWT` | 9,319   | 4.7%  |
| `87234N765 TCW EMRG MKTS INCM-I` | 8,438   | 4.3%  |
| `464287655 ISHARES RUSSELL 2000` | 7,979   | 4.0%  |
| `256210105 DODGE & COX INCOME F` | 7,781   | 3.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | 09252M883 BLACKROCK TOTAL RETU | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | HANS S MANNHEIMER TRUST 485-2519017071 | 04315J209 ARTIO TOTAL RETURN B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311139349100406_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX27_INVEST_OTH_CATEGORY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
