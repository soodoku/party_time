

# Load packages 
library(goji)
library(tidyverse)
theme_set(theme_bw()) #sets ggplot() to use theme_bw (the best theme) by default

tidy_cdf <- read_rds("data/anes/tidy-cdf.rds")%>%
  filter(year >= 1964)%>%
  glimpse()

#### CDF Time Series Dataframe, grouping by year/party.
fig_1_df <- read_rds("data/anes/tidy-cdf.rds")%>% 
  filter(pid_3 != "Independent")%>%
  filter(year <= 2008)%>% #un/comment this line for the original data.
  filter(year >= 1978)%>%
  select(year,
         weight,
         pid_3,
         therm_inparty,
         therm_outparty)%>%
  pivot_longer(therm_inparty:therm_outparty, names_to = "ft_towards", values_to = "ft")%>%
  unite("group", pid_3:ft_towards)%>%
  mutate(group = recode(group,
                        "Democrat_therm_inparty" = "Democrat - In Party",
                        "Democrat_therm_outparty" = "Democrat - Out Party",
                        "Republican_therm_inparty" = "Republican - In Party",
                        "Republican_therm_outparty" = "Republican - Out Party"))%>%
  group_by(year, group)%>%
  summarize(mean = weighted.mean(ft, weight, na.rm = TRUE),
            sd = sd(ft, na.rm = TRUE),
            n = n())%>%
  glimpse()%>%
write_csv("data/anes/fig_1.csv")
# Building the Plot
fig_1 <- ggplot(fig_1_df, aes(x = year, y=mean)) +
  geom_point(aes(shape = group)) +
  geom_smooth(aes(linetype = group), color = "darkgrey", se=F) + 
  scale_linetype_manual(values = c("Democrat - In Party" = "longdash",
                                   "Democrat - Out Party" = "dotted",
                                   "Republican - In Party" = "solid",
                                   "Republican - Out Party" = "twodash")) +
  scale_shape_manual(values = c("Democrat - In Party" = 3,
                                "Democrat - Out Party" = 2,
                                "Republican - In Party" = 16,
                                "Republican - Out Party" = 19)) +
  #scale_x_continuous(limits = c(1978,2020), breaks = c(0:5)) +
  scale_x_continuous(breaks = seq(1976, 2020, by = 4)) +
  scale_y_continuous(limits = c(20,80)) +
  labs(y = "Mean Thermometer Ratings of Partisans",
       x = "Year",
       linetype = " ",
       shape = " ") +
  theme(legend.position = c(0.2, 0.2))
fig_1
ggsave("figs/fig_1.png", plot = fig_1, width = 8, height = 6, units = "in")

