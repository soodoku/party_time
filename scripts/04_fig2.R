##      NES + 10 NatThermometer of Parties, Lib./Con.

# Load packages 
library(goji)
library(tidyverse)
theme_set(theme_bw()) #sets ggplot() to use theme_bw (the best theme) by default

tidy_cdf <- read_rds("data/anes/tidy-cdf.rds")%>%
  filter(year >= 1964)%>%
  glimpse()


## Replication of Fig 2. (Ideology Therms)

#Grouping the data

fig_2_df <- tidy_cdf%>% 
  filter(ideo_3_sort != "Moderate")%>%
  filter(year <= 2008)%>% #uncomment this line for the original data.
  filter(year >= 1972)%>%
  select(year,
         weight,
         ideo_3_sort,
         therm_ideo_ingroup,
         therm_ideo_outgroup)%>%
  pivot_longer(therm_ideo_ingroup:therm_ideo_outgroup, names_to = "ft_towards", values_to = "ft")%>%
  unite("group", ideo_3_sort:ft_towards)%>%
  mutate(group = recode(group,
                        "Liberal_therm_ideo_ingroup" = "Liberal - In Group",
                        "Liberal_therm_ideo_outgroup" = "Liberal - Out Group",
                        "Conservative_therm_ideo_ingroup" = "Conservative - In Group",
                        "Conservative_therm_ideo_outgroup" = "Conservative - Out Group"))%>%
  group_by(year, group)%>%
  summarize(mean = weighted.mean(ft, weight, na.rm = TRUE),
            sd = sd(ft, na.rm = TRUE),
            n = n())%>%
  glimpse()%>%
  write_csv("data/anes/fig_2.csv")

# Building the Plot
fig_2 <- ggplot(fig_2_df, aes(x = year, y=mean)) +
  geom_point(aes(shape = group)) +
  geom_smooth(aes(linetype = group), color = "darkgrey", se=F) + 
  scale_linetype_manual(values = c("Liberal - In Group" = "longdash",
                                   "Liberal - Out Group" = "dotted",
                                   "Conservative - In Group" = "solid",
                                   "Conservative - Out Group" = "twodash")) +
  scale_shape_manual(values = c("Liberal - In Group" = 3,
                                "Liberal - Out Group" = 2,
                                "Conservative - In Group" = 16,
                                "Conservative - Out Group" = 19)) +
  scale_x_continuous(breaks = seq(1976, 2020, by = 4)) +
  scale_y_continuous(limits = c(20,85), breaks = seq(20,80, by = 10)) +
  labs(y = "Thermometer Ratings of Ideological Identifiers",
       x = "Year",
       linetype = " ",
       shape = " ") +
  theme(legend.position = c(0.2, 0.15))
fig_2
ggsave("figs/fig_2.png", plot = fig_2, width = 8, height = 6, units = "in")


