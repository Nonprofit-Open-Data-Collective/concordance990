# dd() prints a card for variables and a grid for tables

    Code
      print(dd("F9_04_SCHED_B_REQ_X", xpaths = TRUE))
    Output
      -- F9_04_SCHED_B_REQ_X ---------------------------------------------------------
        Label       Required to complete Schedule B [x]
        Table       F9-P04-T00-REQUIRED-SCHEDULES (ONE)
        Part        Part IV - Checklist of Required Schedules
        Location    F990-PC-PART-04-LINE-02
        Type        checkbox
        Scope       PZ - 990 and 990-EZ
        Database    F990
        Forms       PC
        Xpaths      3
        Family      F9_04_SCHED_B_REQ_X - Schedule B required
        Pooled with F9_04_SCHED_B_NOT_REQ_X
                    Whether Schedule B (contributors) is required. The 990 answers
                    yes/no (F9_04_SCHED_B_REQ_X); the 990-EZ checks a box when it is
                    NOT required (F9_04_SCHED_B_NOT_REQ_X), so the two have opposite
                    polarity.
        Description
          Schedule B required?
        Xpaths
          form  years      % filers  xpath
          PC    2009-2012     100.0  /Return/ReturnData/IRS990/ScheduleBRequired
          PC    2013-2024     100.0  /Return/ReturnData/IRS990/ScheduleBRequiredInd
          PC    -                 -  /Return/ReturnData/IRS990/Form990PartIV/ScheduleBRequired

---

    Code
      print(dd("F9-P01-T00-SUMMARY"), n = 3)
    Output
      -- F9-P01-T00-SUMMARY ----------------------------------------------------------
      Part I - Summary | F990 | one row per filing | 41 variables
      
      variable                       location                 type      scope
      F9_01_ACT_GVRN_ACT_MISSION     F990-PC-PART-01-LINE-01  text      PC
          Mission or most significant activities
      F9_01_ACT_GVRN_TERMIN_KONTR_X  F990-PC-PART-01-LINE-02  checkbox  PC
          Termination or contraction [x]
      F9_01_ACT_GVRN_NUM_VOTE_MEMB   F990-PC-PART-01-LINE-03  numeric   PC
          Number of voting members of governing body
      # ... 38 more variables; use print(x, n = Inf) to see all

---

    Code
      print(dd("F9-P01-T00-SUMMARY"), n = 2, width = 140)
    Output
      -- F9-P01-T00-SUMMARY ----------------------------------------------------------------------------------------------------------------------
      Part I - Summary | F990 | one row per filing | 41 variables
      
      variable                       label                                   location                 type      scope
      F9_01_ACT_GVRN_ACT_MISSION     Mission or most significant activities  F990-PC-PART-01-LINE-01  text      PC
      F9_01_ACT_GVRN_TERMIN_KONTR_X  Termination or contraction [x]          F990-PC-PART-01-LINE-02  checkbox  PC
      # ... 39 more variables; use print(x, n = Inf) to see all

