# PF_AX23_INVEST_CORP_BOND_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX23_INVEST_CORP_BOND_NAME

Name of Bond

- Description: Investments Corp Bonds - Name of Bond

- Table:

  [`PF-P99-T23-INVEST-CORP-BOND`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t23-invest-corp-bond)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-23`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

193k

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
| ⓘ info | No sign of truncation | InvestmentsCorpBondsSchedule/InvestmentsCorpBonds/NameOfBond: longest value is exactly 100 characters; InvestmentsCorpBondsSchedule/InvestmentsCorporateBondsGrp/BondNm: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsCorpBondsSchedule/InvestmentsCorpBonds/NameOfBond` | PF | 2009–2012 | 21,095 | 19.7% | 54.5% |
| x2 | `InvestmentsCorpBondsSchedule/InvestmentsCorporateBondsGrp/BondNm` | PF | 2013–2024 | 171,593 | 15.6% | 53.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 584 | 5.5k | 7.1k | 7.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.5k | 8.7k | 9.4k | 10k | 12k | 12k | 14k | 20k | 20k | 20k | 19k | 18k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 25 | 22 | 21 | 20 | 19 | 16 | 16 | 16 | 17 | 16 | 16 | 17 | 16 | 16 | 15 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 192,688 | 29             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `CORPORATE BONDS`                | 18,860  | 21.8% |
| `54401E143 LORD ABBETT SHRT DUR` | 5,926   | 6.8%  |
| `464287432 ISHARES 20+ YEAR TRE` | 5,251   | 6.1%  |
| `83002G884 SIX CIRCLES CREDIT O` | 4,849   | 5.6%  |
| `83002G702 SIX CIRCLES GLOBAL B` | 4,738   | 5.5%  |
| `92206C771 VANGUARD MORTGAGE-BA` | 3,809   | 4.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | HUGHES WALTER M TUW XXXXX9009 | 54401E143 LORD ABBETT SHRT DUR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541279349102579_public.xml) |
| 2012 | 990PF | x1 | UNIV OF PITTS OBSERVATORY FUND PNC BANK… | FIXED INCOME | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420279349100352_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX23_INVEST_CORP_BOND_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
