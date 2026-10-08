# F9_08_REV_PROG_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_PROG_DESC

Program service revenue description

- Description: Program service revenue group description

- Table:

  [`F9-P08-T01-REVENUE-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t01-revenue-programs)
  (many)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-02-ABCDE`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.5M

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
| ⓘ info | No sign of truncation | IRS990/ProgramServiceRevenue/Description: longest value is exactly 100 characters; IRS990/ProgramServiceRevenueGrp/Desc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ProgramServiceRevenue/Description` | PC | 2009–2012 | 345,031 | 68.7% | 58.3% |
| x2 | `IRS990/ProgramServiceRevenueGrp/Desc` | PC | 2013–2024 | 2,129,175 | 58.2% | 55.3% |
| x3 | `IRS990/Form990PartVIII/ProgramServiceRevenue/Description` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26k | 86k | 110k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 135k | 148k | 157k | 163k | 174k | 178k | 184k | 198k | 206k | 212k | 215k | 161k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 78 | 70 | 69 | 69 | 68 | 68 | 67 | 67 | 66 | 65 | 65 | 62 | 61 | 61 | 61 | 58 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 2,474,197 | 17             | 100     |

### Most common values

| Value                           | Filings | Share |
|---------------------------------|---------|-------|
| `MEMBERSHIP DUES`               | 149,591 | 29.4% |
| `RENTAL INCOME`                 | 73,828  | 14.5% |
| `Membership Dues & Assessments` | 52,378  | 10.3% |
| `PROGRAM SERVICE REVENUE`       | 45,686  | 9.0%  |
| `TUITION`                       | 40,382  | 7.9%  |
| `EMPLOYER CONTRIBUTIONS`        | 34,345  | 6.8%  |
| `PROGRAM FEES`                  | 32,296  | 6.4%  |
| `TUITION AND FEES`              | 26,422  | 5.2%  |
| `OTHER INCOME`                  | 26,059  | 5.1%  |
| `MISCELLANEOUS`                 | 14,063  | 2.8%  |
| `PROGRAM SERVICE FEES`          | 11,187  | 2.2%  |
| `PROGRAM REVENUE`               | 1,530   | 0.3%  |
| `TUITION & FEES`                | 301     | 0.1%  |
| `Rental Income`                 | 247     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | COMM MENTAL HEALTH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | CLINICAL CANCER RESEARCH TRIAL STUDIES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_PROG_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
