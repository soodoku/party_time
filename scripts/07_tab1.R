library(tidyverse)

tab_1_df <- read_rds("data/anes/tidy-cdf.rds")%>%
  filter(year == 1980 | year == 1982)%>%
  select(year,
         weight, #Note, all obs are weighted "1", according to ANES, most data are not weighted until 1988 and beyond.
         therm_inparty,
         therm_outparty,
         therm_party_ingroup,
         therm_party_outgroup,
         npa_party,
         npa_partisans)%>%
  mutate(dif_in_dif = npa_partisans - npa_party)%>%
  group_by(year)%>%
  summarize(in_partisans = weighted.mean(therm_party_ingroup, weight, na.rm = TRUE),
            out_partisans = weighted.mean(therm_party_outgroup, weight, na.rm = TRUE),
            npa_partisans = weighted.mean(npa_partisans, weight, na.rm = TRUE),
            in_party = weighted.mean(therm_inparty, weight, na.rm = TRUE),
            out_party = weighted.mean(therm_outparty, weight, na.rm = TRUE),
            npa_party = weighted.mean(npa_party, weight, na.rm = TRUE),
            dif_in_dif = weighted.mean(dif_in_dif, weight, na.rm = TRUE))%>%
  glimpse()


knitr::kable(tab_1_df)
