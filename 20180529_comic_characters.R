
## fivethirtyeight::comic_characters
## https://twitter.com/thomas_mock/status/1001451167547908096

## article: https://fivethirtyeight.com/features/women-in-comic-books/
## README: https://github.com/rfordatascience/tidytuesday/blob/master/README.md

library(tidyverse)
dat <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/week9_comic_characters.csv")


ggplot(data = dat %>% filter(sex %in% c("Female","Male"))) + geom_bar(aes(publisher, fill = align), position="fill") + facet_wrap(~sex)



###
dat <- dat %>% mutate(sex = str_remove(sex, " Characters"))

