## ---- test-betaDelta-beta-mvn
lapply(
  X = 1,
  FUN = function(i,
                 tol,
                 text) {
    message(text)
    if (!exists("nas1982")) {
      try(
        data(
          "nas1982",
          package = "betaDelta"
        ),
        silent = TRUE
      )
    }
    df <- nas1982
    object <- lm(QUALITY ~ NARTIC + PCTGRT + PCTSUPP, data = df)
    coefs <- coef(BetaDelta(object, type = "mvn"))
    mvn <- .BetaCI(BetaDelta(object, type = "mvn"))
    testthat::test_that(
      paste(text, "coefs"),
      {
        testthat::expect_true(
          all(
            abs(
              coefs - c(0.4951, 0.3915, 0.2632)
            ) <= tol
          )
        )
      }
    )
    testthat::test_that(
      paste(text, "mvn"),
      {
        testthat::expect_true(
          all(
            abs(
              mvn[, "se"] - c(0.0759, 0.0770, 0.0747)
            ) <= tol
          )
        )
      }
    )
  },
  tol = 0.0001,
  text = "test-betaDelta-beta-mvn"
)
# This test compares the results of the package with Dudgeon (2017)
