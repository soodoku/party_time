#
#  Clean Match
#  Last Edited: 8.28.12   	
#  Gaurav Sood
#

# Multiple gsub
mgsub <- function(pattern, replacement, x, ...) {
  if (length(pattern)!=length(replacement)) {
    stop("pattern and replacement do not have the same length.")
  }
  result <- x
  for (i in 1:length(pattern)) {
    result <- gsub(pattern[i], replacement[i], result, ...)
  }
  result
}

# From and to vectors have to of same length
	std <- function(x, from, to){
		for(i in 1:length(from)){
		x <- gsub(from[i], to[i], x)	
		}
		x
	}

# If a string contains 2 other strings (any order)
	dmatch <- function(to, from1, from2){
		#tester from1 <- "abc"; from2 <- "bbc"; to <- "abcdbbc"
		t <- gsub(from1, "", to)
		t1 <- gsub(from2, "", t)
		nchar(t1) == nchar(to) - nchar(from1) - nchar(from2) 
} 

# Multiple strings within one vector (names in a names vector)
	finder <- function(vec1, vec2){
		unlist(lapply(vec1, grep, vec2))
	}

# Match 1 or 2
# ~~~~~~~~~~~~~~~~~~~~
	pk <- function(var, list1, list2, n=1){
		# Test: var <- arep$am; list1 <- c("german"); list2 <- c("leader", "pres", "chancellor", "prime minister", "head")
		temp <- tolower(var)
		
		f.1 <- grep(list1[1], temp)
		
		for(i in 1:length(list1)){
			f.1 <- unique(c(f.1, grep(list1[i], temp)))
		}
		
		f.2 <- grep(list2[1], temp)
		for(i in 1:length(list2)){
			f.2 <- unique(c(f.2, grep(list2[i], temp)))
		}
		
		temp[intersect(f.1, f.2)] <- n
		temp
	}


nMin=3
x <- c("crap", "crappy", "crapper", "cra")
text <- "cra"
ok <- seq(along = x) <= nMin | is.na(match(x, text))

