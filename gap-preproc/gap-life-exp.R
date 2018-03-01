library(tidyverse)

# load csv file from local directory
df <- read.csv('/pfs/gap/gap.csv')

gap_life_exp <- gapminder %>%
  group_by(country, continent) %>% 
  summarise(life_exp = max(lifeExp)) %>% 
  ungroup()
  
write_csv(gap_life_exp, '/pfs/out/gap_life_exp.csv')