library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)

#save command saves data in .rda files. this project so far has two seperate folders for data: one with the raw data and one with the transformations that we've made. This is a good practice.
save(murders, file = "rda/murders.rda")

view(murders)

