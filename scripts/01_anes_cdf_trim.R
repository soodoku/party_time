library(tidyverse)
library(haven)
library(sjlabelled)

######                                                                                                #########
# This Script extracts only the relevant variables from the raw cdf file, then writes them to an rds          #
# This is done to avoid the lengthy rio::import() from a zip file every time the wrangling dplyr pipe is run  #
######                                                                                                #########

cdf_raw_trim <- rio::import("data/anes/raw/anes_timeseries_cdf_dta.zip", which = "anes_timeseries_cdf.dta")%>% #Imports the .dta file from the .zip file
  filter(VCF0004 >= 1964)%>%
select(VCF0004,
       VCF0006, #unique case ID
       VCF0009z, #weight
       VCF0301,
       VCF0303,
       VCF0305,
       VCF0311,
       VCF0312,
       VCF0803,
       VCF0218,
       VCF0224,
       VCF0723,
       VCF0503,
       VCF0504,
       VCF9265,
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
       VCF0212, #FT Conservatives
       VCF0211, # FT Liberals
       VCF0201, #FT Democrats (old)
       VCF0202, #FT Republicans (old)
       VCF0203, #FT Protestants
       VCF0204, #FT Catholics
       VCF0206, #FT Blacks
       VCF0207, #FT Whites
       VCF0128 # Regligions preference. 1 protestant, 2 catholic, 3 jewish, 4 other/none/dk, 0 na
       )%>%
glimpse()%>%
  write_rds("data/anes/raw/cdf-raw-trim.rds")%>%
  write_csv("data/anes/raw/cdf-raw-trim.csv")
