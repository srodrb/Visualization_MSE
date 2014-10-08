### R code from vignette source 'SweaveExample.Rnw'

###################################################
### code chunk number 1: test1
###################################################
a=1
b=4
a+b
print("hello")


###################################################
### code chunk number 2: test2
###################################################
a=1
b=4
a+b
print("hello")


###################################################
### code chunk number 3: test3 (eval = FALSE)
###################################################
## a=1
## b=4
## a+b
## print("hello")


###################################################
### code chunk number 4: test4
###################################################
a=1
b=4
a+b
print("hello")


###################################################
### code chunk number 5: test5
###################################################
plot(1:10, col="red", pch=19)


###################################################
### code chunk number 6: test6
###################################################
par(mfrow=c(1,2))
plot(1:10, col="green", pch=21)
barplot(height=sample(1:10,5), names=LETTERS[1:5], col=1:5)


###################################################
### code chunk number 7: women
###################################################
require(xtable)
myTable <- summary(women)


###################################################
### code chunk number 8: manualtab
###################################################
nr = nrow(myTable); nc = ncol(myTable)
for (i in 1:nr)
  for(j in 1:nc) {
    cat("$", myTable[i,j], "$")
    if(j < nc)
    cat("&")
    else
    cat("\\\\\n")
  }


###################################################
### code chunk number 9: xtable1
###################################################
xtab<-xtable(myTable)
print(xtab, floating=FALSE)


###################################################
### code chunk number 10: xtable2
###################################################
xtab2<-xtable(myTable, caption="Summary of women data",  
                       label="Table:women")
print(xtab2, include.rownames = FALSE)


###################################################
### code chunk number 11: creapdf (eval = FALSE)
###################################################
## Sweave("SweaveExample.Rnw")
## system("pdflatex SweaveExample.tex")


###################################################
### code chunk number 12: cacheSweave (eval = FALSE)
###################################################
## library(cacheSweave)
## setCacheDir("cache") # por defecto es "." 
## Sweave("SweaveExample.tex", driver = cacheSweaveDriver)


###################################################
### code chunk number 13: stangle
###################################################
Stangle("SweaveExample.Rnw")


###################################################
### code chunk number 14: sessionInfo
###################################################
 sessionInfo()


