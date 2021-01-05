library(tidyverse)
library(sjlabelled)
library(goji)


anes_wrangled <- read_rds("data/anes/raw/cdf-raw-trim.rds")%>% # Loads RDS created in `anes-cdf-trim.R`
  remove_all_labels()%>%
	rename(year = VCF0004)%>% # Year of response
	rename(pid_7 = VCF0301)%>% #7 scale Party ID val: 1-7. Strong Democrat 2. Weak Democrat3. Independent - Democrat4. Independent - Independent5. Independent - Republican6. Weak Republican7. Strong Republican
	rename(pid_3 = VCF0303)%>% # Party ID 3 categories val: "Republican", "Independent", "Democrat" (Dem/Rep include Leaners)
	rename(pid_str = VCF0305)%>% # PID strength val: 1. Independent 2. Leaning Independent 3. Weak Partisan 4. Strong Partisan Kept this because I wanted to create basically this variable later
	rename(win_care_pres = VCF0311)%>% # How much do you care which party wins presidency? val: 1. Don't care very much or DK, pro-con, depends, and other, 2. Care a great deal
	rename(win_care_cong = VCF0312)%>% # How much do you care which party wins congress? val: 1. Don't care very much or DK, pro-con, depends, and other, 2. Care a great deal notes: only asked through 2008
	rename(respondent_ideo = VCF0803)%>% # Liberal-conservative scale val: 1(extremely liberal)- 7(extremely conservative) 9. DK; haven't much thought about it
	rename(therm_dem = VCF0218)%>% # val 00-96 cold-warm as coded; 97: 97-100, 98: DK, 99. NA
	rename(therm_rep = VCF0224)%>% # val 00-96 cold-warm as coded; 97: 97-100, 98: DK, 99. NA
  rename(therm_lib = VCF0211)%>% #libs FT
  rename(therm_con = VCF0212)%>% #cons FT
	rename(activist_6cat = VCF0723)%>%#val: 1-6 low-high participation 0. DKN/NA
	rename(ideo_dem = VCF0503)%>% # val: 1-7 lib-con
	rename(ideo_rep = VCF0504)%>%# val: 1-7 lib-con
	rename(primary_vote = VCF9265)%>%
  rename(therm_dem_old = VCF0201)%>%
  rename(therm_rep_old = VCF0202)%>%
  rename(therm_cath = VCF0204)%>%
  rename(therm_prot = VCF0203)%>%
  rename(therm_black = VCF0206)%>%
  rename(therm_white = VCF0207)%>%
  rename(case_id = VCF0006)%>%
  rename(weight = VCF0009z)%>%
	select(year,
	       case_id,
	       weight,
				 pid_7, 
				 pid_3, 
				 pid_str, 
				 win_care_pres,
				 win_care_cong,
				 respondent_ideo,
				 therm_dem,
				 therm_rep,
				 therm_lib,
				 therm_con,
				 activist_6cat,
				 ideo_dem,
				 ideo_rep,
				 primary_vote,
				 VCF0806, #insurance Government Health Insurance Scale #1-7 Gov ins- Private ins 9DK, 0NA
				 VCF0809, #jobs Jobs Gurantee, same scale as above
				 VCF0839, # services Gov should provide 1 (few services)--7 (many services) 9DK, 0NA
				 VCF9049, #ss SS: 1 (increase), 2 (same), 3 Decreased, 7 cut entirely 8DK 9NA
				 VCF0834, #women 1(equal) -- 7 (home) 9DK, 0NA
				 VCF0838, #abortion 1 (never), 2(rape, incest, danger), 3(need est.), 4(always) 9DK, 0NA
				 VCF0876a, #gayrights 1(Favor Strongly),2, 4, 5 (Oppose Strongly). 7DK, 9NA
				 VCF0110, #education 1 (grade school), 2(High School), 3(Some College), 4(College/advanced) 0DK/NA
				 VCF0105a, #race 1(white), 2(Black), 3 (asian/pacific), 4(Am. indian/alaska native), 5(hispanic), 6 (other/mult), 7(non-white/non-black), 9NA
				 VCF0113, #south 1(south), 2(nonsouth)
				 VCF0310, #interest 1(not much), 2(somewhat), 3(very) 9dk, 0na
				 VCF0130, #worship 1(every week), 2(almost every week), 3 (once or twice a month), 4 (few times a year), 5(never), 7(no relig.), 890na
				 VCF0050a, # iwrpkpre 1(very high)-5(very low)
				 VCF0050b, # iwrpkpst (same above), take mean
				 VCF9255, #satisfied_democ 1(very), 2(fairly), 3(not very), 4(not at all) -8,-9NA
				 VCF0729, #know_house which party has the most seats in house 1(wrong), 2(right), 0NA
				 VCF9036, #know_sen 1-2(correct), 3-4(wrong), 7-9NA
				 VCF0104,
				 therm_dem_old, #FT Democrats (old)
				 therm_rep_old, #FT Republicans (old)
				 therm_prot, #FT Protestants
				 therm_cath, #FT Catholics
				 therm_black, #FT Blacks
				 therm_white, #FT Whites
				 VCF0128 # Regligions preference. 1 protestant, 2 catholic, 3 jewish, 4 other/none/dk, 0 na
	)%>%
  unite("case", year:case_id, remove = FALSE)%>%
  select(-case_id)%>%
  mutate(case = as.numeric(str_remove(case, "_")))%>%
	rename(female = VCF0104)%>%
  mutate(female = na_if(female, 3))%>%
  mutate(female = na_if(female, 0))%>%
	mutate(female = as.numeric(recode(female, 
																		"1" = "0",
																		"2" = "1")))%>%
	rename(insurance = VCF0806)%>%
	mutate(insurance = na_if(insurance, 9))%>%
	mutate(insurance = na_if(insurance, 0))%>%
	mutate(insurance = zero1(insurance))%>%#standardize between 0-1
	rename(jobs = VCF0809)%>%
	mutate(jobs = na_if(jobs, 9))%>%
	mutate(jobs = na_if(jobs, 0))%>%
	mutate(jobs = zero1(jobs))%>%
	rename(services = VCF0839)%>%
	mutate(services = na_if(services, 9))%>%
	mutate(services = na_if(services, 0))%>%
	mutate(services = as.numeric(recode(services, #recoding so that liberal values are lower, in accordance with everything else..
																			"1" = "7",
																			"2" = "6",
																			"3" = "5",
																			"4" = "4",
																			"5" = "3",
																			"6" = "2",
																			"7" = "1"
	)))%>%
	mutate(services = zero1(services))%>%
	rename(ss = VCF9049)%>%
	mutate(ss = na_if(ss, 8))%>%
	mutate(ss = na_if(ss, 9))%>%
	mutate(no_ss = if_else(ss == 7, 1, 0))%>%
	mutate(ss = na_if(ss, 7))%>%
	mutate(ss = zero1(ss))%>%
	rename(women = VCF0834)%>%
	mutate(women = na_if(women, 9))%>%
	mutate(women = na_if(women, 0))%>%
	mutate(women = zero1(women))%>%
	rename(abortion = VCF0838)%>%
  mutate(abortion = na_if(abortion, 9))%>%
  mutate(abortion = na_if(abortion, 0))%>%
	mutate(abortion = as.numeric(recode(abortion, #recoding so that liberal values are lower, in accordance with everything else..
																			"1" = "4",
																			"2" = "3",
																			"3" = "2",
																			"4" = "1"
	)))%>%
	mutate(abortion = zero1(abortion))%>%
	rename(gayrights = VCF0876a)%>%
	mutate(gayrights = na_if(gayrights, 7))%>%
	mutate(gayrights = na_if(gayrights, 9))%>%
	mutate(gayrights = zero1(gayrights))%>%
	rename(education = VCF0110)%>%#education 1 (grade school), 2(High School), 3(Some College), 4(College/advanced) 0DK/NA
	mutate(education = na_if(education, 0))%>%
	mutate(high_school = if_else(education == 2, 1, 0))%>% #creating education dummies. grade school is ref. cat.
	mutate(some_college = if_else(education == 3, 1, 0))%>%
	mutate(college_adv = if_else(education == 4, 1, 0))%>%
  rename(race_num = VCF0105a)%>%
  mutate(race_num = na_if(race_num, 9))%>%
  mutate(race = as.factor(recode(race_num, 
                                 "1" = "White",
                                 "2" = "Black",
                                 "3" = "Asian or Pacific Islander",
                                 "4" = "American Indian",
                                 "5" = "Hispanic",
                                 "6" = "Other",
                                 "7" = "Non-white and Non-black")))%>%
  mutate(black_white_flag = if_else(race=="Black", "Black", if_else(race=="White", "White", "other")))%>%
  mutate(black_white_flag = recode(race_num,
                                   .default = "other",
                                  "1" = "White",
                                  "2" = "Black"))%>%
  mutate(black_white_flag = na_if(black_white_flag, "other"))%>%
	mutate(white = if_else(race=="White", 1, 0))%>%
  mutate(black = if_else(race=="Black", 1, 0))%>%
  rename(religion_num = VCF0128)%>%
  mutate(religion_num = na_if(religion_num, 0))%>%
  mutate(religion = as.factor(recode(religion_num,
                              "1" = "Protestant",
                              "2" = "Catholic",
                              "3" = "Jewish",
                              "4" = "Other"
                              )))%>%
  mutate(cath_prot_flag = as.factor(recode(religion_num,
                                 .default = "other",
                                 "1" = "Protestant",
                                 "2" = "Catholic")))%>%
  mutate(cath_prot_flag = na_if(cath_prot_flag, "other"))%>%
	rename(south = VCF0113)%>%
	mutate(south = if_else(south==1, 1, 0))%>%
	rename(interest = VCF0310)%>%
	mutate(interest = na_if(interest, 9))%>%
	mutate(interest = na_if(interest, 0))%>%
	rename(worship = VCF0130)%>%
	mutate(worship = if_else(worship == 1 | worship == 2, 1, 0))%>%
	rename(iwrpk_pre = VCF0050a)%>%
	mutate(iwrpk_pre = na_if(iwrpk_pre, 9))%>%
	mutate(iwrpk_pre = as.numeric(recode(iwrpk_pre, #recoding so that liberal values are lower, in accordance with everything else..
																			"1" = "5",
																			"2" = "4",
																			"3" = "3",
																			"4" = "2",
																			"5" = "1"
	)))%>%
	mutate(iwrpk_pre = zero1(iwrpk_pre))%>%
	rename(iwrpk_post = VCF0050b)%>%
	mutate(iwrpk_post = na_if(iwrpk_post, 9))%>%
	mutate(iwrpk_post = na_if(iwrpk_post, 0))%>%
	mutate(iwrpk_post = as.numeric(recode(iwrpk_post, #recoding so that liberal values are lower, in accordance with everything else..
																			 "1" = "5",
																			 "2" = "4",
																			 "3" = "3",
																			 "4" = "2",
																			 "5" = "1"
	)))%>%
	mutate(iwrpk_post = zero1(iwrpk_post))%>%
#	mutate(iwrpk_mean = (iwrpk_post + iwrpk_pre)/2)%>%
	rename(dis_democ = VCF9255)%>%
	mutate(dis_democ = na_if(dis_democ, -9))%>%
	mutate(dis_democ = na_if(dis_democ, -8))%>%
	mutate(dis_democ = if_else(dis_democ == 3 | dis_democ ==4, 1, 0))%>%
	rename(know_house = VCF0729)%>%
	mutate(know_house = na_if(know_house, 0))%>%
	mutate(know_house = if_else(know_house==1, 1, 0))%>%
	rename(know_sen = VCF9036)%>%
	mutate(know_sen = na_if(know_sen, 0))%>%
	mutate(know_sen = if_else(know_sen==1, 1, 0))%>%
	mutate(know_cong = (know_sen + know_house)/2)%>%
#	rowwise()%>%
#	mutate(cult_att = mean(c(abortion, gayrights, women), na.rm = TRUE))%>%
#	mutate(cult_att = (abortion + gayrights + women)/3)%>%
#	mutate(cult_att = zero1(cult_att))%>%
#	mutate(econ_att = (ss + services + jobs + insurance)/4)%>%
#	mutate(econ_att = zero1(econ_att))%>%
	glimpse()%>%# adds only these variables to the df
	mutate(win_care_pres = na_if(win_care_pres, 0))%>% #these functions set the specified value to NA, (per the ANES codebook)
	mutate(win_care_cong = na_if(win_care_cong, 0))%>%
	mutate(respondent_ideo = na_if(respondent_ideo, 9))%>%#the recode() function is used in the next 4 pipes to apply new values to observation in the columns. ANES uses numerical values to represent factors.
	mutate(ideo_rep = na_if(ideo_rep, 8))%>%
	mutate(ideo_rep = na_if(ideo_rep, 0))%>%
	mutate(ideo_dem = na_if(ideo_dem, 8))%>%
	mutate(ideo_dem = na_if(ideo_dem, 0))%>%
	mutate(primary_vote = na_if(primary_vote, -8))%>%
	mutate(primary_vote = na_if(primary_vote, -9))%>%
	mutate(primary_vote = as.numeric(recode(primary_vote, 
																		"1" = "1",
																		"2" = "0")))%>%
	mutate(strong_partisan = if_else(pid_7 == 1|pid_7 ==7, 1, 0))%>%
	mutate(pid_7_num = as.numeric(pid_7),
				 pid_7 = recode(pid_7, 
				 							 "1" = "Strong Democrat", 
				 							 "2" = "Weak Democrat", 
				 							 "3" = "Independent - Democrat", 
				 							 "4" = "Independent - Independent", 
				 							 "5" = "Independent - Republican", 
				 							 "6" = "Weak Republican", 
				 							 "7" = "Strong Republican"),
				 pid_7 = reorder(pid_7, pid_7_num))%>%
	mutate(pid_3_num = as.numeric(pid_3),
				 pid_3 = recode(pid_3, 
				 							 "1" = "Democrat", 
				 							 "2" = "Independent", 
				 							 "3" = "Republican"),
				 pid_3 = reorder(pid_3, pid_3_num))%>%
	mutate(pid_str_num = as.numeric(pid_str),
				 pid_str = recode(pid_str, 
				 								 "1" = "Independent", 
				 								 "2" = "Leaning Independent", 
				 								 "3" = "Weak Partisan", 
				 								 "4" = "Strong Partisan"),
				 pid_str = reorder(pid_str, pid_str_num))%>%
	mutate(respondent_ideo_num = as.numeric(respondent_ideo),
				 respondent_ideo = recode(respondent_ideo, 
				 												 "1" = "Extremely Liberal", 
				 												 "2" = "Liberal", 
				 												 "3" = "Somewhat Liberal", 
				 												 "4" = "Moderate", 
				 												 "5" = "Somewhat Conservative", 
				 												 "6" = "Conservative", 
				 												 "7" = "Extremely Conservative"),
				 respondent_ideo = reorder(respondent_ideo, respondent_ideo_num))%>%
  mutate(pid_3_sort = factor(recode(pid_7_num, #different from regular pid_3 which codes 3, 5 as partisan
                             "1" = "Democrat",
                             "2" = "Democrat",
                             "3" = "Independent",
                             "4" = "Independent",
                             "5" = "Independent",
                             "6" = "Republican",
                             "7" = "Republican"),
         levels = c("Democrat",
                    "Independent",
                    "Republican")))%>%
  mutate(ideo_3_sort = factor(recode(respondent_ideo_num, #anes codes leaning independents as partisans; not ideal
                                    "1" = "Liberal", #see not on pid_3_sort
                                    "2" = "Liberal",
                                    "3" = "Moderate",
                                    "4" = "Moderate",
                                    "5" = "Moderate",
                                    "6" = "Conservative",
                                    "7" = "Conservative"),
                             levels = c("Liberal",
                                        "Moderate",
                                        "Conservative")))%>%
  mutate(pid_2_sort = na_if(pid_3_sort, "Independent"))%>% #better just to filter(pid_3_sort != "Independent"), but used to build other vars
	mutate(pid_2 = na_if(pid_3, "Independent"))%>% 
	mutate(ideo_2_sort = na_if(ideo_3_sort, "Moderate"))%>%# see pid_2_sort
  mutate(therm_dem = na_if(therm_dem, 98))%>%
  mutate(therm_dem = na_if(therm_dem, 99))%>%
  mutate(therm_rep = na_if(therm_rep, 98))%>%
  mutate(therm_rep = na_if(therm_rep, 99))%>%
#  mutate(therm_inparty = if_else(pid_3=="Democrat", therm_dem, therm_rep))%>%
	mutate(therm_inparty = if_else(pid_3=="Democrat" | pid_3 == "Republican",
																	if_else(pid_3=="Democrat", therm_dem, therm_rep),
																		(therm_dem + therm_rep)/2))%>% #therm in/out are equal
	mutate(therm_inparty = na_if(therm_inparty, -9))%>%
  mutate(therm_outparty = if_else(pid_3=="Democrat" | pid_3 == "Republican",
  																if_else(pid_3=="Democrat", therm_rep, therm_dem),
  																(therm_dem + therm_rep)/2))%>%
  mutate(npa_party = therm_inparty - therm_outparty)%>%
	mutate(therm_parties_mean = (therm_dem + therm_rep)/2)%>%
  mutate(therm_dem_old = na_if(therm_dem_old, 98))%>%
  mutate(therm_dem_old = na_if(therm_dem_old, 99))%>%
  mutate(therm_rep_old = na_if(therm_rep_old, 98))%>%
  mutate(therm_rep_old = na_if(therm_rep_old, 99))%>%
  mutate(therm_party_ingroup = if_else(pid_2_sort=="Democrat", therm_dem_old, therm_rep_old))%>%
  mutate(therm_party_outgroup = if_else(pid_2_sort=="Democrat", therm_rep_old, therm_dem_old))%>%
  mutate(npa_partisans = therm_party_ingroup - therm_party_outgroup)%>%
  mutate(therm_lib = na_if(therm_lib, 98))%>%
  mutate(therm_lib = na_if(therm_lib, 99))%>%
  mutate(therm_con = na_if(therm_con, 98))%>%
  mutate(therm_con = na_if(therm_con, 99))%>%
  mutate(therm_ideo_ingroup = if_else(ideo_2_sort=="Liberal", therm_lib, therm_con))%>%
  mutate(therm_ideo_outgroup = if_else(ideo_2_sort=="Liberal", therm_con, therm_lib))%>%
  mutate(net_ideo = therm_ideo_ingroup - therm_ideo_outgroup)%>%
  mutate(therm_cath = na_if(therm_cath, 98))%>%
  mutate(therm_cath = na_if(therm_cath, 99))%>%
  mutate(therm_prot = na_if(therm_prot, 98))%>%
  mutate(therm_prot = na_if(therm_prot, 99))%>%
  mutate(therm_relig_ingroup = if_else(cath_prot_flag=="Catholic", therm_cath, therm_prot))%>%
  mutate(therm_relig_outgroup = if_else(cath_prot_flag=="Catholic", therm_prot, therm_cath))%>%
  mutate(net_relig = therm_relig_ingroup - therm_relig_outgroup)%>%
  mutate(therm_black = na_if(therm_black, 98))%>%
  mutate(therm_black = na_if(therm_black, 99))%>%
  mutate(therm_white = na_if(therm_white, 98))%>%
  mutate(therm_white = na_if(therm_white, 99))%>%
  mutate(therm_race_ingroup = if_else(black_white_flag=="Black", therm_black, therm_white))%>%
  mutate(therm_race_outgroup = if_else(black_white_flag=="Black", therm_white, therm_black))%>%
  mutate(net_race = therm_race_ingroup - therm_race_outgroup)%>%
	mutate(parties_therm_dif = therm_inparty - therm_outparty)%>% #creates a variable showing the difference in thermometer ratings for each party
	mutate(parties_ideo_dif = abs(ideo_dem - ideo_rep))%>%
  select(-ends_with("flag"))%>%
#	mutate(cult_att = if_else(pid_3_num == 3, (1-cult_att), cult_att))%>%
#	mutate(econ_att = if_else(pid_3_num == 3, (1-econ_att), econ_att))%>% #DO NOT USE UNLESS YOU ARE WORKING WITH DEMS AND REPS ONLY
#	select(-ends_with("_num")) %>%   # drop the numeric versions of the factors that i used for reordering above
	glimpse()%>%
	write_rds("data/anes/tidy-cdf.rds") %>%
	write_csv("data/anes/tidy-cdf.csv")



