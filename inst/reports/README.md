# Validation report templates

One HTML report per variable, rendered by `render_reports()` (R/reports.R)
from the evidence tables (`evidence/`, built by `build_evidence()`) and the
flags (`evidence/xpath_flags.csv`, from `flag_xpaths()`). The DuckDB files are
not needed at render time.

`variable-report.Rmd` is the shared layout. It includes one type-specific
child section, chosen by `report_type()`:

| Report type | Chosen when | Automated checks | Chart |
|---|---|---|---|
| `amount` (`_amount.Rmd`) | numeric, not a count/ratio (the default for numeric) | values parse as numbers; no sudden change in the median between adjacent years; pooled xpaths on the same scale (within return type); sign convention | median and interquartile band by year, per xpath, faceted 990 / 990-EZ, log dollars |
| `number` (`_number.Rmd`) | numeric with count/ratio/decimal xsd types, or `NUM`/`PCT`/`HOURS` names | as for amounts, plus one scale (fraction 0-1 vs percent 0-100) across xpaths | same, linear axis |
| `checkbox` (`_checkbox.Rmd`) | `data_type_simple = checkbox` | values are checkbox codes; what a blank means (explicit false/0 present?); element names agree in polarity (`Not`/`No`) | how the box is coded when present, per xpath and year |
| `date` (`_date.Rmd`) | date type, or Date/Timestamp/Year xsd types | one format (date, year, timestamp); dates far after the tax year / before 1900 (informational) | share of values parsing as dates, per xpath and year |
| `text` (`_text.Rmd`) | text that is not a code or identifier | values are text, not numbers; dominant boilerplate; possible truncation at a common field limit | average length by year, per xpath |
| `code` (`_code.Rmd`) | State/Country xsd types, `Cd`/`Code` elements, `_STATE`/`_CNTR`/`_CODE` names | small code list; one format; consistent letter case | top 7 codes by year |
| `identifier` (`_identifier.Rmd`) | EIN/SSN/PTIN/phone/CUSIP/ZIP xsd types or names | expected format for the kind of identifier; stored as text; leading zeros; placeholder values | share of values in the expected format, per xpath and year |

Every report has: overview and headline numbers; open flags; the xpath
table (form, first and last year, schema versions, filings, repeats);
coverage by year and xpath; fill rate by return type; repeating groups (for
MANY tables or repeating xpaths); the type section; example filings with
links to the XML; and a reviewer checklist (shared items plus type-specific
items).

Charts use the reference categorical palette in fixed order: series follow
the xpath (oldest first), never its rank, and after eight xpaths the rest are
grouped as "Other". Every chart has a table view, and status is shown with
an icon and a label, never color alone.

Render the demo set (three variables per type):

```
Rscript data-raw/demo-reports.R evidence reports
```
