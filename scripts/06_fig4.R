library(tidyverse)
library(goji)
theme_set(theme_bw())
## LOAD DATA 
load("data/rivers/rivers.rdata")
load("data/verba/verba.rdata")
load("data/10nat/us10r.rdata")
load("data/10nat/uk10.rdata")

## Load Functions
source("scripts/func.R")
source("scripts/polr.func.R")

# Some subsets
# Rivers
rep <- subset(rivers, rivers$pid3 == 2)    ##rivers$pid3==2 (Republican)
dem <- subset(rivers, rivers$pid3 == 1)     ##rivers$pid3==1 (Democrat)
con <- subset(rivers, rivers$ukpartyid == 1)    ##rivers$ukpartyid==1 (Conservatives)
lab <- subset(rivers, rivers$ukpartyid == 2)     ##rivers$ukpartyid==2 (Labor)

r.us <- subset(rivers, rivers$source == 1 & rivers$pid3 %in% c(1, 2)) 
r.uk <- subset(rivers, rivers$source == 2 & rivers$ukpartyid %in% c(1, 2)) 

# Verba
v.rep <- subset(verba, tolower(verba$v2) == "united states" &   verba$pid5 > 3)
v.dem <- subset(verba, tolower(verba$v2) == "united states" &   verba$pid5 < 3)
v.con <- subset(verba, tolower(verba$v2) == "united kingdom" &  verba$pid5 > 3)
v.lab <- subset(verba, tolower(verba$v2) == "united kingdom" &  verba$pid5 < 3)

v.us <- subset(verba, tolower(verba$v2) == "united states"   & verba$pid5 != 3)
v.uk <- subset(verba, tolower(verba$v2) == "united kingdom"  & verba$pid5 != 3)

# Ten Nation
t.rep <- subset(us10, us10$rd == 'rep')
t.dem <- subset(us10, us10$rd == 'dem')
t.con <- subset(uk10, uk10$cl == 'con')
t.lab <- subset(uk10, uk10$cl == 'lab')

t.us <- subset(us10, !is.na(us10$rd))
t.uk <- subset(uk10, !is.na(uk10$cl))

## ************************************** ##
## Tab 4: Marriageto Others      ##
## ************************************** ##

tab4 <- data.frame(var = 1:17, rep = NA, dem = NA, rd.diff = NA, con = NA, lab = NA, cl.diff = NA, us.out = NA, uk.out = NA, us.uk.out = NA)
tab4[1:17,1] <- c("Verba", "Pleased", "Indifferent", "Displeased",
                  "Rivers", "Not at all Upset", "Not Sure", "Somewhat Upset", "Very Upset", "Net Upset",
                  "10 Nat", "Very Happy", "Somewhat happy", "Neither happy nor unhappy", "Somewhat Unhappy",
                  "Very unhappy", "Net Proportion Unhappy")
# Verba
tab4[2:4,2:4]  <- prop.all(v.rep$marry.d, v.dem$marry.r)[c(3, 2, 1), ]
tab4[2:4,5:7]  <- prop.all(v.con$marry.d, v.lab$marry.r)[c(3, 2, 1), ]
tab4[2:4,8:10] <- prop.all(v.us$marry.out, v.uk$marry.out)[c(3, 2, 1), ]

# Rivers
tab4[6:9,2:4]  <- prop.all(rep$marry.d, dem$marry.r, rep$weight, dem$weight)[c(3, 4, 2, 1), ]
tab4[6:9,5:7]  <- prop.all(con$marry.d, lab$marry.r, con$weight, lab$weight)[c(3, 4, 2, 1), ]
tab4[10,2:4]   <- prop.all(rep$marry.d < 3, dem$marry.r < 3, rep$weight, dem$weight)[2, ]
tab4[10,5:7]   <- prop.all(con$marry.d < 3, lab$marry.r < 3, con$weight, lab$weight)[2, ]
tab4[6:9,8:10] <- prop.all(r.us$marry.out, r.uk$marry.out, r.us$weight, r.uk$weight)[c(3, 4, 2, 1), ] 
tab4[10,8:10]  <- prop.all(r.us$marry.out < 3, r.uk$marry.out < 3, r.us$weight, r.uk$weight)[2, ] 

# Ten Nation
tab4[12:16,2:4]  <- prop.all(t.rep$marry.d, t.dem$marry.r, t.rep$weight, t.dem$weight)[c(5, 4, 3, 2, 1), ]
tab4[17,2:4]     <- prop.all(t.rep$marry.d < 3, t.dem$marry.r < 3, t.rep$weight, t.dem$weight)[2, ]
tab4[12:16,5:7]  <- prop.all(t.con$marry.d, t.lab$marry.r, t.con$weightuk, t.lab$weightuk)[c(5, 4, 3, 2, 1), ]
tab4[17,5:7]     <- prop.all(t.con$marry.d < 3, t.lab$marry.r < 3, t.con$weightuk, t.lab$weightuk)[2, ]
tab4[12:16,8:10] <- prop.all(t.us$marry.out, t.uk$marry.out, t.us$weight, t.uk$weightuk)[c(5, 4, 3, 2, 1), ]
tab4[17,8:10]    <- prop.all(t.us$marry.out < 3, t.uk$marry.out < 3, t.us$weight, t.uk$weightuk)[2, ] 

write_csv(tab4, "figs/tab4_marr.csv")

## Tab 5: Comparison to Marriage to Other Religion

tab5 <- data.frame(var=1:5, us.party=NA, us.rel=NA, us.diff=NA, uk.party=NA, uk.rel=NA, uk.diff=NA, diff.of.diff=NA)
tab5[1:4,2:4] <- prop.all(r.us$marry.out, r.us$marry.rel, r.us$weight, r.us$weight)[c(3,4,2,1),]
tab5[1:4,5:7] <- prop.all(r.uk$marry.out, r.uk$marry.rel, r.uk$weight, r.uk$weight)[c(3,4,2,1),]
tab5[5,2:4]   <- prop.all(r.us$marry.out < 3, r.us$marry.rel < 3, r.us$weight, r.us$weight)[2,]
tab5[5,5:7]   <- prop.all(r.uk$marry.out < 3, r.uk$marry.rel < 3, r.uk$weight, r.uk$weight)[2,]
write_csv(tab5, "figs/tab5_rel_marr.csv")

# Proportion who thought out.party worse than out.rel
prop.all(r.us$marry.outr < r.us$marry.relr, r.us$marry.relr < r.us$marry.outr, r.us$weight, r.us$weight)
prop.all(r.uk$marry.outr < r.uk$marry.relr, r.uk$marry.relr < r.uk$marry.outr, r.uk$weight, r.uk$weight)
prop.all(r.us$marry.outr < r.us$marry.relr, r.uk$marry.outr < r.uk$marry.relr, r.us$weight, r.uk$weight)

## Verba/Rivers/10nat Plot 
##***********************************##

## FOR OLD STYLE PLOT, SEE Polr.Marr.Misc.

prop.err <- function(p, n){
  sqrt((p*(1-p)/n))
}

rs  <- array(c(.05, .27, .49, 1960, 2009, 2010), dim=c(3,2))
ds  <- array(c(.04, .20, .32, 1960, 2009, 2010), dim=c(3,2))
net <- rbind(rs, ds)
net <- as.data.frame(net)
colnames(net) <- c("mean", "year")
net$pid <- c(rep("Republicans",3), rep("Democrats", 3))
net$n   <- c(261, 286, 256, 408, 370, 369)
net$err <- prop.err(net$mean, net$n)
net$year <- as.factor(net$year)
net$year <- rep(c("1960 - Proportion displeased", "2008 - Proportion somewhat or very upset", 
                  "2010 - Proportion somewhat or very unhappy" ), 2)


net$year <- rep(c("1960 \n Proportion displeased", "2008 \n Proportion somewhat \n or very upset", 
                  "2010 \n Proportion somewhat \n or very unhappy" ), 2)

net$pid <- as.factor(net$pid)
net$pid <- factor(net$pid,levels(net$pid)[c(2,1)])

# Split by year (across party comparisons are clear)

# Joint US and UK and Party
# 2 Panel, Requested by Shanto
# ********************************************
dodge <- position_dodge(width=0.9)
rs  <- array(c(.05, .27, .49, 1960, 2009, 2010), dim=c(3,2))
ds  <- array(c(.04, .20, .32, 1960, 2009, 2010), dim=c(3,2))
net <- rbind(rs, ds)
net <- as.data.frame(net)
colnames(net) <- c("mean", "year")
net$pid <- c(rep("Republicans",3), rep("Democrats", 3))
net$n   <- c(261, 286, 256, 408, 370, 369)
net$err <- prop.err(net$mean, net$n)
net$year <- as.factor(net$year)
net$year <- rep(c("1960 \n Proportion displeased", "2008 \n Proportion somewhat \n or very upset", 
                  "2010 \n Proportion somewhat \n or very unhappy" ), 2)
net$country <- "U.S."

cs  <- array(c(.12, .10, .22, 1960, 2009, 2010), dim=c(3,2))
ls  <- array(c(.03, .19, .24, 1960, 2009, 2010), dim=c(3,2))

net2 <- rbind(cs, ls)
net2 <- as.data.frame(net2)
colnames(net2) <- c("mean", "year")
net2$pid <- c(rep("Conservatives",3), rep("Labour", 3))
net2$n   <- c(261, 286, 256, 408, 370, 369)
net2$err <- prop.err(net2$mean, net2$n)
net2$year <- as.factor(net2$year)
net2$year <- rep(c("1960 \n Proportion displeased", "2008 \n Proportion somewhat \n or very upset", #extra text included for figure
                   "2010 \n Proportion somewhat \n or very unhappy" ), 2)

net2$country <- "U.K."

# Combine dfs
fig_4_df <- rbind(net, net2)
fig_4_df$pid    <- factor(fig_4_df$pid, levels=c("Republicans", "Democrats", "Conservatives", "Labour"))
fig_4_df$country <- factor(fig_4_df$country, levels =c("U.S.", "U.K."))

# build the plot
fig_4 <- ggplot(fig_4_df, aes(x = year, y = mean, fill = pid, shade=TRUE)) + 
  facet_grid(rows= vars(country)) +
  xlab("")  + 
  scale_y_continuous(breaks = seq(0,.5, by = .1)) +
  ylab("Proportion upset, dipleased, or unhappy\n if progeny married someone from another party") +
  scale_fill_grey("") +# remove legend title
  geom_bar(stat = "identity", position="dodge")  + 
  geom_linerange(aes(ymax=fig_4_df[,1]+1.96*err, ymin=fig_4_df[,1]-1.96*err), position=dodge) +
  theme(legend.position = c(0.2, 0.85))
fig_4

ggsave("figs/fig_4.png",  dpi=400, width=7)
