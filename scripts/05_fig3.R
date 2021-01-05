##      NES + 10 NatThermometer of Parties, Lib./Con.

# Load packages 
library(goji)
library(tidyverse)
theme_set(theme_bw()) #sets ggplot() to use theme_bw (the best theme) by default


tidy_cdf <- read_rds("data/anes/tidy-cdf.rds")%>%
  filter(year >= 1964)%>%
  glimpse()

### Figure 3

fig_3_df <- read_rds("data/anes/tidy-cdf.rds")%>%
  filter(year <= 2008 & pid_3 != "Independent")%>% #uncomment this line for the original data.
  select(year,
         weight,
         npa_party,
         npa_partisans,
         net_race,
         net_relig)%>%
  pivot_longer(npa_party:net_relig, names_to = "group", values_to = "net_ft")%>%
  mutate(group = recode(group,
          "npa_party" = "Republican and Democratic Parties",
          "npa_partisans" = "Republican and Democratic Partisans",
          "net_race" = "Blacks and Whites",
          "net_relig" = "Protestants and Catholics"))%>%
  group_by(group, year)%>%
  summarize(net_mean = weighted.mean(net_ft, weight = weight, na.rm = TRUE))%>%
#  filter(!is.nan(net_mean))%>%
  glimpse()%>%
  write_csv("data/anes/fig_3.csv")


fig_3 <- ggplot(fig_3_df, aes(x = year, y=net_mean)) +
  geom_smooth(aes(linetype = group), color = "darkgrey", se=FALSE) + 
  geom_point(aes(shape = group)) +
  scale_linetype_manual(values = c("Republican and Democratic Parties" = "longdash",
                                   "Republican and Democratic Partisans" = "solid",
                                   "Blacks and Whites" = "dotted",
                                   "Protestants and Catholics" = "dashed")) +
  scale_x_continuous(breaks = seq(1964, 2020, by = 4)) +
  scale_y_continuous(limits = c(0,50)) +
  labs(y = "Net Affect of Groups",
       x = "Year",
       linetype = " ",
       shape = " ") +
  theme(legend.position = c(0.225, 0.85))
fig_3

ggsave("figs/fig_3.png", plot = fig_3, width = 8, height = 6, units = "in")

