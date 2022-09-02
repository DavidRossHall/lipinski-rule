### David Hall --- created on 2022-09-02

# 1.

library(tidyverse)
library(webchem)


# 2.

tsca <- read_csv("data/TSCAINV_202202.csv") %>%
  janitor::clean_names()

toxcast <- read_csv("data/toxcast_inv.csv") %>%
  janitor::clean_names()
