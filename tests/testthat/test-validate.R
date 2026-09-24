test_that("enforced rules have no violations and ratchet rules stay at or below their ceilings", {
  s <- validation_summary()
  failing <- s[pass == FALSE]
  expect_identical(nrow(failing), 0L,
                   info = paste(sprintf("%s (%s): %d violations, ceiling %s", failing$rule, failing$status,
                                        failing$violations, failing$ceiling), collapse = "; "))
})

test_that("every ratchet rule has a ceiling and ceilings exist only for ratchet rules", {
  ce <- read_cc_csv(ceilings_path())
  expect_setequal(ce$rule, validation_rules[status == "ratchet", rule])
})

test_that("rules catch a broken reference and a bad cardinality", {
  s <- read_src()
  s$variables[1, table_id := "NO-SUCH-TABLE"]
  s$tables[1, cardinality := "SOME"]
  v <- validate_concordance(s)
  expect_true("R02" %in% v$rule)
  expect_true(any(v$rule == "R03" & v$value == "SOME"))
})
