#I'm guessing these are included so you can open the project files out of order without having any issues
library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color= "black") + 
  coord_flip()


#open terminal to make directory for figures: fig

ggsave("figs/barplot.png")

