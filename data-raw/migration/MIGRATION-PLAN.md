# Moving downstream packages to concordance990 v2

Drafted 2026-10-07. Evidence: `downstream-diff.R` in this folder, which writes
`variable_diff.csv`, `table_diff.csv`, `code_references.csv` and
`release_lag.csv`. Run it from the concordance990 root with the sibling repos
checked out next to it. Rerun it after each step below.

## Where things stand

Only the published data uses the v2 concordance. Every package's code still uses v1.

| Repo | Concordance it reads | Default S3 release it reads |
|---|---|---|
| ef2 | v1 `concordance.csv` (`data-raw/update-concordance.R` → `data/concordance.rda`, Sep 23); `get_concordance(gh = TRUE)` downloads v1 again | `efile_v2_2` (`R/06_update_db.R`, `R/99_utils_s3.R`) |
| panel990 | v1 copy cached Aug 7 (`data-raw/concordance-master.csv` → `data/field_concordance.rda`) | `efile_v2_2` (`R/source.R`, `.EFILE_VERSION`) |
| fiscal | panel990's `financial_fields()`, plus a hard-coded `.VALID_TABLES` list (`R/globals.R`) | `efile_v2_1`, hard-coded (`R/retrieve-wrappers.R:33`, `R/panel-wrappers.R:169`) |
| nccs-data-core | v1 URL, read at load (`R/data-dictionary_helpers.R:8`) | — |
| efile-rdb-tables | v1, in the README and legacy scripts only | — |

The local v1 copies in ef2 and panel990 differ from the reference v1 only in
how one Schedule EZ compensation xpath is split across schema versions. They
are v1 for every purpose here.

## What changed from v1 to v2 (990 / 990-EZ)

- **Variables.** v1 has 2,318 variables:
  - 2,126 are kept in the same table;
  - 188 moved to another table;
  - 4 were renamed, all as typo or numbering fixes:
    - `SB_01_CONTRIBUTOR_TYPE` → `SB_01_CONTRIBUTOR_NUM`
    - `SH_01_CHNA_DESC_RESOURCES_X` → `SH_05_…`
    - `SH_05_IDENTIFIER` → `SH_06_…`
    - `SH_06_…_L7_f` → `…_L7_F`

  v2 also adds 99 variables. No v1 xpath was dropped.
- **Tables.** Five tables were renamed:

  | v1 | v2 |
  |---|---|
  | `SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES` | `SD-P07-T00-INVESTMENTS-OTH-DERIVATIVES` |
  | `SD-P07-T01-INVESTMENTS-OTH-EQUITY` | `SD-P07-T00-INVESTMENTS-OTH-EQUITY` |
  | `SG-P02-T01-FUNDRAISING-EVENTS` | `SG-P02-T00-FUNDRAISING-EVENTS` |
  | `SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY` | `SH-P99-T01-FAP-COMMUNITY-BENEFIT-POLICY` |
  | `SO-T99-SUPPLEMENTAL-INFO` | `SO-P00-T99-SUPPLEMENTAL-INFO` |

  13 tables are new on the 990 side:
  - `F9-P00-T01-AFFILIATE-LISTING`
  - `SA-P01-T02-HOSPITAL-NAME-ADDRESS`, `SA-P01-T03-AGRI-RESEARCH-UNIV`
  - `SB-P00-T00-HEADER`, `SB-P02-T01-NONCASH-PROPERTY`, `SB-P03-T00`/`T01-EXCLUSIVELY-RELIGIOUS`
  - `SC-P02-T01-AFFILIATED-GROUP`
  - `SH-P05-T03-FACILITY-POLICIES-PRACTICES`
  - 4 of the renamed tables above (`SG-P02-T00` already existed in v1, and
    the T01 rows merged into it)

  12 `-T99-` tables changed from ONE to MANY.
- **Values.** Values change for two variables that code references:
  - `F9_08_REV_OTH_GAMING`: v1 pooled `SpecialEventsGrossRevenue` (990 and EZ)
    into gaming. v2 moves it to a new variable, `F9_08_REV_OTH_EVNT_GRO`.
    Gaming values fall for every filing that reported special events, and
    panel990's net-gaming identity (`build-accounting-identities.R`) should hold
    more often.
  - `F9_00_TYPE_ORG_OTH_X`: v2 absorbs `TypeOfOrgOtherDescriptionInd`, which
    v1 mapped to `F9_00_TYPE_ORG_OTH_DESC`.
- **Types.** 24 variables went from numeric to text (EINs, phones, PTINs,
  CUSIPs, `*_MOV`). panel990 already forces these to text through
  `identifier_xsd`, so v2 now agrees with it.
- **990-PF** is new in v2: 1,062 variables in 83 tables. Only ef2 handles the PF.
- **Columns.** `versions` was renamed `schema_versions`, and `duplicated` was
  dropped. No downstream package reads either column (checked).
- **Form filter.** The top-level `concordance.csv` now includes the 990-PF
  rows. Consumers must call `concordance("v2", form = "F990")`, not read the
  whole CSV.

## What the code scan found

Names hard-coded in the packages that no longer exist in v2:

| Name | ef2 | panel990 | fiscal | efile-rdb-tables |
|---|---|---|---|---|
| `SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES` / `-EQUITY` | `R/99_utils_irs990efile.R:341,345` | `R/source.R:83-84` | `R/globals.R:147-148` | |
| `SG-P02-T01-FUNDRAISING-EVENTS` | `R/99_utils_irs990efile.R:389` | `R/source.R:112` | `R/globals.R:176` | `R/TABLE-HEADERS.R`, README |
| `SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY` | | `R/source.R:125` | `R/globals.R:189` | |
| `SB_01_CONTRIBUTOR_TYPE` | `CLAUDE.md:153` | | | |

All of the following are unchanged in v2:
- the 82 variable names in fiscal;
- the 43 in panel990;
- the 3 in nccs-data-core.

The table registries in panel990 (`source.R`) and fiscal (`globals.R`) lack
the 13 new 990 tables.

panel990's `build-concordance.R`, run on v2 F990, gives the same PC and EZ
core financial field sets as v1. The PZ set gains `F9_08_REV_OTH_EVNT_GRO`,
which `sanitize_financials()` will now zero-fill for every filer. Other
changes:
- one scope change: `F9_04_SCHED_B_REQ_X`, PZ → PC;
- five header checkboxes change from `literal_missing` to `implicit_false`;
- `SM_01_RE_OTH_NONCSH_CONTR` lost its XSD type in v2, so it changes from
  `implicit_zero` to `literal_missing`. That's a concordance gap to fix (step 0).

## The S3 releases lag the concordance

The published releases were relabelled from earlier commits:
- `efile_v2_3` from `3af11bb`;
- `efilepf_v2_3` from `56cbffa`.

Fixes 22–24 have changed things since then (`release_lag.csv`).

- **990:** the four table renames above (187 xpaths) are not in the release.
  It also lacks 52 Schedule B xpaths and 7 header security xpaths.
- **990-PF:** `PF-P09-T01-CHARITABLE-ACTIVITIES` and
  `PF-P09-T02-PROG-RELATED-INVESTMENTS` became `-T00-`.
  `PF-P99-T25-INVEST-GOVT-SEC` changed from ONE to MANY. The same 7 header
  xpaths are missing.

So the stale table names in panel990 and fiscal are correct for the data on
S3 today. **The code and the data have to move together.** Updating a
package's concordance before the release is relabelled would break its table
reads.

## Plan

**0. concordance990: cut a release.**
- Fix the `SM_01_RE_OTH_NONCSH_CONTR` XSD type.
- Bump to 2.0.0 and tag it, so downstream packages can pin a version rather
  than "whatever main is".
- Export the existing `v1_crosswalk()` / `v1_to_v2_crosswalk.csv` as the
  documented way to re-map v1-labelled data.

**1. Data: relabel to the tagged commit.**
- **990:** rerun the V2_3_WORK relabel pipeline (seconds per year) from
  v2_3 → `efile_v3_1`. It picks up the four table renames and the
  59 newly mapped xpaths, because relabelling matches on `XPATH2` and those
  xpaths are already in FLATXML.
- **990-PF:** fold the PF-P09 and P99-T25 changes into the planned EF2-17
  republish of `efilepf_v2_3`.
- **Decided 2026-10-07:** the 990 relabel publishes under a new prefix,
  `efile_v3_1`. `efile_v2_3` stays untouched for anyone pinned to it.
  The PF republish should follow the same rule and become `efilepf_v3_1`
  (to confirm with the EF2-17 work).

**2. ef2: start depending on concordance990.**
- `data-raw/update-concordance.R`: build `data/concordance.rda` from
  `concordance990::concordance("v2", form = "F990")`, plus a F990PF dataset,
  and record the commit or tag.
  - Keep a bundled snapshot rather than a runtime dependency, because
    `flatten_xml()` must stay reproducible.
  - `prep_concordance()` uses only `xpath`, `variable_name` and `rdb_table`,
    so no other code changes.
- Repoint or retire `get_concordance(gh = TRUE)`; it still downloads v1.
- Update the 3 stale table names in `R/99_utils_irs990efile.R`, and
  `CLAUDE.md:153`.
- Change the default release in `06_update_db.R` and `99_utils_s3.R` to the
  step 1 prefix.
- Check: a fresh `build_database()` on a sample year matches the relabelled
  archive for the same year.

**3. panel990.**
- `data-raw/build-concordance.R`: read `concordance990::concordance("v2", form = "F990")`.
  - Drop the Latin-1 read; v2 is UTF-8.
  - Keep `identifier_xsd` as a guard.
- Rebuild `field_concordance` and review the changes listed above.
- `R/source.R`:
  - default `.EFILE_VERSION` → the step 1 release;
  - 4 table renames;
  - add the 13 new tables.

  It would be better to generate the table list from
  `concordance990::table_names()` at build time.
- Update the attribution and `@source` in `R/data.R` to concordance990.
- Tests: `test-format.R`, `test-read-merge-panel.R`, `test-source-download.R`.
- Add a NEWS entry for the `F9_08_REV_OTH_GAMING` value change and the new
  `F9_08_REV_OTH_EVNT_GRO`.

**4. fiscal** (after panel990 is released).
- Replace the hard-coded `efile_v2_1` roots with `panel990::data_source()` or
  `efile_version()`. fiscal is two releases behind and silently diverges from
  panel990.
- Generate `.VALID_TABLES` from the concordance instead of hand-maintaining
  it: 4 renames and 13 additions.
  - `efile_tables("1xm")` infers cardinality from the T-number. The renames
    make that inference correct for SD-P07 and SG-P02, which are really ONE.
  - The 12 T99 tables that are now MANY are still "supplemental" as intended.
- Recheck metrics against the PZ field change (`F9_08_REV_OTH_EVNT_GRO`);
  none of the 82 referenced variables changed name.
- Update the `F9_00_TYPE_ORG_OTH_X` documentation in `R/data.R`.

**5. nccs-data-core and efile-rdb-tables.**
- nccs-data-core: point `CONCORDANCE_URL` at concordance990's
  `concordance.csv`, filtered to `form != "F990PF"`, or use the package.
  The columns it reads (`variable_name`, `description`, `location_code`,
  `variable_scope`) are unchanged.
- efile-rdb-tables: update the README link and mark the repo legacy.

**6. v1 repo.** Add a README banner to `irs-efile-master-concordance-file`
pointing to concordance990. Leave the file in place so pinned v1 consumers
keep working.

## Order and risk

Step 0 → step 1 → ef2 and panel990 in parallel → fiscal → the rest.

The main risk is in panel990 and fiscal. Silent value changes there matter
more than renames, because renames fail loudly on a table read. The
`F9_08_REV_OTH_GAMING` change and the PZ set gaining a field both change
numbers without errors. Each needs a NEWS entry and a before/after check on
one year of data.
