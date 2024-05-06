install.packages("haven")
library(haven) 
TEDS_2016 <-
  read_stata("https://github.com/datageneration/home/blob/master/DataProgramming /data/TEDS_2016.dta?raw=true")
View(TEDS_2016)

# Creating a function: regplot
## Combine the lm, plot and abline functions to create a regression fit plot function
regplot=function(Edu,PartyID){
  fit=lm(PartyID~Edu)
  plot(Edu,PartyID) abline(fit,col="red")
}

