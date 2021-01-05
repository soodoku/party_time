##########################################################
##   												
##      Hierarchical Models, Last Edited: 12.07.11  	##
##   							
##########################################################

# Printing lmer
#source("C:/Users/Gaurav/Desktop/R/tools/functions/printlme.R")

# with the hpds
combo <- function(merout, n=10000){
	fitSI <-mcmcsamp(merout,n)
	#HPDinterval(as.mcmc(as.matrix(fitSI)))
	m1p <- lme4::HPDinterval(fitSI)
	combined <- combine.output.lmer(c(merout)) 
	combined[,3:5] <- round(as.numeric(combined[,3:5]),2)
	hpd <- as.data.frame(m1p$fixef)
	hpd[(nrow(hpd)+1):length(combined[,1]),] <- NA
	#hpd[(nrow(hpd)-1),] <- m1p$sigma
	#hpd[(nrow(hpd)),]   <- m1p$ST
	hpd <- round(hpd,2)
	comb <- cbind(combined, hpd)
	comb
}

# R Squares

r2.corr.lmer<-function(lmer.object){
	summary(lm(attr(lmer.object, "y") ~ fitted (lmer.object)))$r.squared
}

# Nagelkerke's (use ML)
ng.mer <- function(reml.mod) {
	## Based on
	## N. J. D. Nagelkerke. A note on a general definition
	## of the coefficient of determination. Biometrika, 78:691–692, 1991.
	ml.mod <- update(reml.mod, data=polar, REML=FALSE)
	l.B <- logLik(ml.mod)
	l.0 <- logLik( lm(ml.mod@y ~ 1) )
	Rsq <- 1 - exp( - ( 2/length(ml.mod@y) ) * (l.B - l.0) )
	Rsq[1]
} 

# another way to do r^2 (least defensible):(cor(fitted(model.lme), getResponse(model.lme))^2
#In a chapter that I have coming out in Bruce Thompson's new book "Advances in Social Science Methodology, vol. 6", 
# I make the following recomendations for computing variance explained in a multilevel model/HLM:
 
#"While Snijders and Bosker (1999) partition out the variance explained at each level, 
#the variance explained by the overall multilevel model can also be computed as follows.  
#The first step in this procedure is fitting the multilevel model in the usual way.  
#The predictions, or y-tilde, are calculated using the empty model, e.g., using only the 
#grand mean as predictor.  The predictions y-hat are then calculated using the full model, 
#e.g., adding all predictors.  The sum of squares total is then (y - y-tilde) squared, and 
#the sum of squares error is (y - y-hat)squared.  The sum of squares explained can then be 
#calculated by subtracting the SST from the SSE.  
#Finally, the R2 is calculated by (SSR/SST) * 100%."

# P-values via LRT
# http://blog.lib.umn.edu/moor0554/canoemoore/2010/09/lmer_p-values_lrt.html

p.values.lmer <- function(x) {
  summary.model <- summary(x)
  data.lmer <- data.frame(model.matrix(x))
  names(data.lmer) <- names(fixef(x))
  names(data.lmer) <- gsub(pattern=":", x=names(data.lmer), replacement=".", fixed=T)
  names(data.lmer) <- ifelse(names(data.lmer)=="(Intercept)", "Intercept", names(data.lmer))
  string.call <- strsplit(x=as.character(x@call), split=" + (", fixed=T)
  var.dep <- unlist(strsplit(x=unlist(string.call)[2], " ~ ", fixed=T))[1]
  vars.fixef <- names(data.lmer)
  formula.ranef <- paste("+ (", string.call[[2]][-1], sep="")
  formula.ranef <- paste(formula.ranef, collapse=" ")
  formula.full <- as.formula(paste(var.dep, "~ -1 +", paste(vars.fixef, collapse=" + "), 
                  formula.ranef))
  data.ranef <- data.frame(x@frame[, 
                which(names(x@frame) %in% names(ranef(x)))])
  names(data.ranef) <- names(ranef(x))
  data.lmer <- data.frame(x@frame[, 1], data.lmer, data.ranef)
  names(data.lmer)[1] <- var.dep
  out.full <- lmer(formula.full, data=data.lmer, REML=F)
  p.value.LRT <- vector(length=length(vars.fixef))
  for(i in 1:length(vars.fixef)) {
    formula.reduced <- as.formula(paste(var.dep, "~ -1 +", paste(vars.fixef[-i], 
                       collapse=" + "), formula.ranef))
    out.reduced <- lmer(formula.reduced, data=data.lmer, REML=F)
    print(paste("Reduced by:", vars.fixef[i]))
    print(out.LRT <- data.frame(anova(out.full, out.reduced)))
    p.value.LRT[i] <- round(out.LRT[2, 7], 3)
  }
  summary.model@coefs <- cbind(summary.model@coefs, p.value.LRT)
  summary.model@methTitle <- c("\n", summary.model@methTitle, 
                           "\n(p-values from comparing nested models fit by maximum likelihood)")
  print(summary.model)
}
# Not finished http://glmm.wikidot.com/faq
predictlme <- function(x){
	fm1 <- lmer(
			formula = sen2.approve ~ absdiff3 + (1|a1)
			, data = combi
	)
	newdat <- expand.grid(
			sen2.approve=combi$sen2.approve
			,absdiff3=combi$absdiff
	)
	mm <- model.matrix(terms(fm1),newdat)
	newdat$distance <- mm %*% fixef(fm1)
	pvar1 <- diag(mm %*% tcrossprod(vcov(fm1),mm))
	tvar1 <- pvar1+VarCorr(fm1)$Subject[1]  ## must be adapted for more complex models
	newdat <- data.frame(
			newdat
			, plo = newdat$distance-2*sqrt(pvar1)
			, phi = newdat$distance+2*sqrt(pvar1)
			, tlo = newdat$distance-2*sqrt(tvar1)
			, thi = newdat$distance+2*sqrt(tvar1)
	)
	#plot confidence
	g0 <- ggplot(newdat, aes(x=age, y=distance, colour=Sex))+geom_point()
}
	