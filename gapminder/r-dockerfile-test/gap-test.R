library(tidyverse)

# load csv file from local directory
df <- read.csv("/pfs/gap/gap.csv")
#print('dataset loaded')

gap_life_exp <- df %>%
  group_by(country, continent) %>% 
  summarise(life_exp = max(lifeExp)) %>% 
  ungroup()
  
#print('max lifeExp calculated')
write_csv(gap_life_exp, '/pfs/out/gap_life_exp.csv')
