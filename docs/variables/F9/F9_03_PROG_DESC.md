# F9_03_PROG_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_PROG_DESC

Program service accomplishment

- Description: Program Accomplishment Description

- Table:

  [`F9-P03-T00-PROGRAM-ONE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-one)
  (one)  
  [`F9-P03-T00-PROGRAM-THREE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-three)
  (one)  
  [`F9-P03-T00-PROGRAM-TWO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-program-two)
  (one)  
  [`F9-P03-T01-PROGRAMS-OTHER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t01-programs-other)
  (many)  
  [`F9-P03-T02-PROGRAMS-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t02-programs-ez)
  (many)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-04-ABCD`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

10 / 18

xpaths observed / mapped

8.4M

filings with a value

2009–2024

tax years observed

2 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990/Description: longest value is exactly 9000 characters; IRS990/Activity3/Description: longest value is exactly 9000 characters; IRS990/ProgSrvcAccomActy3Grp/Desc: longest value is exactly 9000 characters; IRS990/Activity2/Description: longest value is exactly 9000 characters; IRS990/ProgSrvcAccomActy2Grp/Desc: longest value is exactly 9000 characters; IRS990/ActivityOther/Description: longest value is exactly 9000 characters; IRS990/ProgSrvcAccomActyOtherGrp/Desc: longest value is exactly 9000 characters; IRS990EZ/ProgramServiceAccomplishment/DescriptionProgramServiceAccom: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Description` | PC | 2009–2012 | 495,528 | 100% |  |
| x2 | `IRS990EZ/ProgramServiceAccomplishment/DescriptionProgramServiceAccom` | EZ | 2009–2012 | 254,594 | 100% | 27.3% |
| x3 | `IRS990/Activity2/Description` | PC | 2009–2012 | 158,068 | 31.3% |  |
| x4 | `IRS990/Activity3/Description` | PC | 2009–2012 | 113,303 | 22.2% |  |
| x5 | `IRS990/ActivityOther/Description` | PC | 2009–2012 | 68,286 | 13.7% | 17.6% |
| x6 | `IRS990/Desc` | PC | 2013–2024 | 3,349,613 | 100% |  |
| x7 | `IRS990EZ/ProgramSrvcAccomplishmentGrp/DescriptionProgramSrvcAccomTxt` | EZ | 2013–2024 | 1,881,301 | 100% | 28.2% |
| x8 | `IRS990/ProgSrvcAccomActy2Grp/Desc` | PC | 2013–2024 | 992,253 | 28.4% |  |
| x9 | `IRS990/ProgSrvcAccomActy3Grp/Desc` | PC | 2013–2024 | 692,458 | 19.8% |  |
| x10 | `IRS990/ProgSrvcAccomActyOtherGrp/Desc` | PC | 2013–2024 | 424,545 | 12.9% | 12.8% |
| x11 | `IRS990/Form990PartIII/Activity2/Description` | PC | not observed | 0 |  |  |
| x12 | `IRS990/Form990PartIII/Activity3/Description` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartIII/ActivityOther/Description` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartIII/Description` | PC | not observed | 0 |  |  |
| x15 | `IRS990/ProgramServiceAccomplishments/DescriptionProgramServiceAccom` | PC | not observed | 0 |  |  |
| x16 | `IRS990EZ/ProgSrvcAccomActy2Grp/Desc` | EZ | not observed | 0 |  |  |
| x17 | `IRS990EZ/ProgSrvcAccomActy3Grp/Desc` | EZ | not observed | 0 |  |  |
| x18 | `IRS990EZ/ProgSrvcAccomActyOtherGrp/Desc` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 12k | 39k | 50k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 9.4k | 28k | 36k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 | 5.5k | 17k | 21k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x7 |  |  |  |  | 104k | 116k | 125k | 130k | 139k | 149k | 153k | 170k | 203k | 206k | 206k | 179k |
| x8 |  |  |  |  | 62k | 67k | 71k | 74k | 78k | 80k | 84k | 94k | 98k | 102k | 103k | 79k |
| x9 |  |  |  |  | 43k | 47k | 49k | 51k | 54k | 56k | 58k | 66k | 69k | 71k | 72k | 55k |
| x10 |  |  |  |  | 27k | 29k | 31k | 32k | 34k | 35k | 36k | 40k | 41k | 43k | 43k | 36k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 6,294,017 | 332            | 9,004   |
| 990-EZ | 2,135,878 | 159            | 9,002   |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `N/A`            | 37,196  | 24.5% |
| `SEE SCHEDULE O` | 23,834  | 15.7% |
| `NONE`           | 15,920  | 10.5% |
| `0`              | 15,749  | 10.4% |
| `See Schedule O` | 6,679   | 4.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | IAAI FOUNDATION INC | SCHOLARSHIPS AWARDED TO 7 INDIVIDUALS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x9 | RISEWELL COMMUNITY SERVICES INC FKA | CONSUMER AFFAIRS - OUR CONSUMER AFFAIRS DIVISION CONSISTS OF A VARIETY OF SERVI… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2024 | 990 | x8 | IAAI FOUNDATION INC | SUPPORT TRAINING AND PROFESSIONAL DEVELOPMENT PROGRAMS CONSISTENT WITH THE PURP… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2024 | 990 | x10 | OWL CREEK COUNTRY CLUB | ENTERTAINMENT, FOOD, BEVERAGE, AND RECREATION FOR MEMBERS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2024 | 990EZ | x7 | THE CREATIVES PROJECT INC | . Completed 60 ours of artistic outreach activities with homeless youth | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | SEE SCHEDULE O | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |
| 2012 | 990 | x4 | MINNEAPOLIS COLLEGE OF ART & DESIGN | ACADEMIC SERVICES:- THE LIBRARY RECEIVED A GRANT FROM MINNESOTA HISTORICAL SOCI… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2012 | 990 | x3 | Oregon Council of the Blind | Annually, Oregon Council of the Blind sponsors a convention for visually impair… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_PROG_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
