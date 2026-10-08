# PF_AX43_OFF_OTH_REPAY_TERM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX43_OFF_OTH_REPAY_TERM

Repayment terms

- Description: Repayment terms

- Table:

  [`PF-P99-T43-OFF-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t43-off-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-43`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.1k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ⓘ info | No sign of truncation | OtherReceivablesOfficersSch/OtherReceivablesOfficer/RepaymentTerms: longest value is exactly 50 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherReceivablesOfficersSch/OtherReceivablesOfficer/RepaymentTerms` | PF | 2009–2012 | 133 | 0.12% | 16.5% |
| x2 | `OtherReceivablesOfficersSch/OfficerOtherRcvblGrp/RepaymentTermsTxt` | PF | 2013–2024 | 1,010 | 0.0906% | 17.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 33 | 51 | 48 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 48 | 50 | 58 | 73 | 75 | 68 | 71 | 90 | 109 | 128 | 136 | 104 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,143   | 18             | 99      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `ON DEMAND` | 121     | 25.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Paul M Angell Family Foundation | On Demand | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349102108_public.xml) |
| 2012 | 990PF | x1 | LAURA E PORTER TRUST | MONTHLY 7% | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342279349100129_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX43_OFF_OTH_REPAY_TERM, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
