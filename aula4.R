# WDI - WORLD DEVELOPMENT INDICATORS 
# OS DADOS DO BANCO MUNDIAL S�O ACESSADOS

#install.packages("WDI")
library(WDI)

#PROCURAR AS VIGNETTES - P�GINAS COM INSTRU��ES DOS PACOTES

#GDP (current US$)(NY.GDP.MKTP.CD) 
#PIB EM PRE�OS CORRENTES EM D�LAR NORTE-AMERICANO
#C�DIGO NY.GDP.MKTP.CD

varpib <- WDIsearch("gdp") #criar objeto com resultado

dadospib <- WDI(country = "all",indicator = "NY.GDP.MKTP.CD")

dadospib2023 <- WDI(country = "all", indicator = "NY.GDP.MKTP.CD", start = 2023, end = 2023) 

options(scipen = 999) #ajusta a nota��o cientifica 
