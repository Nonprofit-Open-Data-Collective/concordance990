# Fix 25: two labels found while building dd().
#
# SD_02_EMT_STAFF_HOURS_ENFORCE said "conversation easements" for
# "conservation easements". PF_01_REV_CONTR_REC_BOOKS (990-PF Part I line 1,
# column (a)) was labeled with its column heading alone; its description
# already names the line.
#   Rscript data-raw/fixes/25-label-typos.R

source("data-raw/fixes/_helpers.R")

fix_reason <- "Fix two labels: 'conversation easements' -> 'conservation easements' (Schedule D Part II line 6), and the 990-PF Part I line 1 column (a) label, which was the bare column heading 'Revenue and Expenses per Books'."

fix_step(function(s) {
  stopifnot(s$variables[variable_name == "SD_02_EMT_STAFF_HOURS_ENFORCE", grepl("conversation easements", label)],
            s$variables[variable_name == "PF_01_REV_CONTR_REC_BOOKS", label == "Revenue and Expenses per Books"])
  s <- set_var(s, "SD_02_EMT_STAFF_HOURS_ENFORCE",
               label = "Staff and volunteer hours devoted to monitoring, inspecting, handling of violations, and enforcing conservation easements")
  set_var(s, "PF_01_REV_CONTR_REC_BOOKS", label = "Contributions received - revenue and expenses per books")
}, reason = fix_reason,
   evidence = "IRS Schedule D (Form 990) Part II line 6; Form 990-PF Part I line 1", type = "relabel", affects = FALSE)

# Logged for the 2.0.1 release, not the package version this ran under
ch <- read_changelog()
ch[reason == fix_reason, version := "2.0.1"]
retry(function() write_changelog(ch))
