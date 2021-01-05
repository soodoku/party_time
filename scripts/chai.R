# TODO: Add comment
# 
# Author: Gaurav
###############################################################################

#type = "grp", "two"
chai <- function(x, y=NULL, type="grp"){
	res <- NULL
	if(!is.null(y)){
		if(type=="grp") res <- t.test(x ~ y, paired=FALSE, alternative = "two.sided", conf.level = 0.95)
		if(type=="two") res <- t.test(x,  y, paired=FALSE, alternative = "two.sided", conf.level = 0.95)
			if(type=="pair") {
			res <- t.test(x,  y, paired=TRUE, alternative = "two.sided", conf.level = 0.95)
			return(paste(kros(res$est), stars(res$p.val), sep=""))
			}
		}
	if(type=="pair" & is.null(y)) {
		res <- t.test(x, alternative = "two.sided", conf.level = 0.95)
		return(paste(kros(res$est), stars(res$p.val), sep=""))
		}
	return(c(kros(res$est[2]), kros(res$est[1]), paste(kros(res$est[2] - res$est[1]), stars(res$p.val), sep="")))	
}

lmc <- function(x){
	sum <- summary(x)
	fin <- data.frame(names=NA, coeff=NA)
	for(i in 1:nrow(sum$coef)){
		fin[i,] <- c(row.names(sum$coef)[i], paste(kros(sum$coef[i,1]), stars(sum$coef[i,4]), sep=""))
	}
	fin[(i <- (i+1)),] <- c("n", sum(sum$df[1], sum$df[2]))
	fin[(i <- (i+1)),] <- c("rsq", kros(sum$r.square) )
	fin[(i <- (i+1)),] <- c("adj", kros(sum$adj.r.square))
	fin[(i <- (i+1)),] <- c("f", round(sum$f[1],2))
	fin[(i <- (i+1)),] <- c("logL", round(logLik(x),2))
	fin[(i <- (i+1)),] <- c("AIC", round(AIC(x),2))
	fin
}

# Assume that it is paired
wt.chai <- function(x, y, wtx){
	nona <- !is.na(x) & !is.na(y) & !is.na(wtx)
	temp <- data.frame(x[nona], y[nona], wtx[nona])
	mx <- weighted.mean(temp[,1], temp[,3])
	my <- weighted.mean(temp[,2], temp[,3])
	diff <- summary(lm(I(temp[,1] - temp[,2]) ~ 1, weight=temp[,3]))
	c(mx, my, paste(kros(diff$coeff[1,1]), stars(diff$coeff[1,4]), sep=""))
}

# Assume unpaired
wt.all <- function(x,y,wtx=NULL, wty=NULL){
	nonax <- !is.na(x) & !is.na(wtx)
	nonay <- !is.na(y) & !is.na(wty)
	tx 	  <- x[nonax]
	wx 	  <- wtx[nonax]
	ty    <- y[nonay]
	wy 	  <- wty[nonay]
	mx    <- weighted.mean(tx, w=wx)
	my    <- weighted.mean(ty, w=wy)
	diff <- summary(lm(c(tx,ty) ~ c(rep(1, length(tx)), rep(0, length(ty))), weight=c(wx, wy)))
	c(kros(mx), kros(my), paste(kros(diff$coeff[2,1]), stars(diff$coeff[2,4]), sep=""))
}
