# SR_01_DISREG_ENTITY_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_01_DISREG_ENTITY_ADDR_ZIP

Disregarded entity zip

- Description: Foreign Address - Postal code

- Table:

  [`SR-P01-T01-ID-DISREGARDED-ENTITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p01-t01-id-disregarded-entities)
  (many)

- Part: Part I - Identification of Disregarded Entities

- Location:

  `SCHED-R-PART-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

117k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.4% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 1 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressUS/ZIPCode` | SZ | 2009–2012 | 15,198 | 2.87% | 41.7% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartI/AddressForeign/PostalCode` | SZ | 2009–2012 | 141 | 0.0262% | 18.4% |
| x3 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 5,674 | 2.85% | 41.6% |
| x4 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 61 | 0.0307% | 19.7% |
| x5 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 94,365 | 2.6% | 41.7% |
| x6 | `IRS990ScheduleR/IdDisregardedEntitiesGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 1,080 | 0.0332% | 30.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 3.8k | 4.6k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 19 | 37 | 38 | 47 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 61 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 6.4k | 7.0k | 7.5k | 8.2k | 8.4k | 8.9k | 9.7k | 10k | 10k | 11k | 7.2k |
| x6 |  |  |  |  |  | 66 | 77 | 79 | 84 | 92 | 100 | 116 | 117 | 128 | 129 | 92 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 111,201 | 95.1% |
| `999999999` | 4,977   | 4.3%  |
| `999999`    | 304     | 0.3%  |
| `AA9A 9AA`  | 178     | 0.2%  |
| `9999`      | 170     | 0.1%  |
| `99999-999` | 42      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | THE GOOD FOOD INSTITUTE INC | 05414-001 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543189349301719_public.xml) |
| 2024 | 990 | x5 | FaithBridge Foster Care Inc | 30009 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349301837_public.xml) |
| 2013 | 990 | x4 | Bar Ilan University in Israel Inc | 52900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201512299349303541_public.xml) |
| 2013 | 990 | x3 | CHRIS KIDS INC | 30316 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401749349300010_public.xml) |
| 2012 | 990 | x2 | DUKE UNIVERSITY | EC2V 7QJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349301637_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 20005 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_01_DISREG_ENTITY_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
