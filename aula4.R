# WDI - WORLD DEVELOPMENT INDICATORS 
# OS DADOS DO BANCO MUNDIAL SÃO ACESSADOS

#install.packages("WDI")
library(WDI)

#PROCURAR AS VIGNETTES - PÁGINAS COM INSTRUÇÕES DOS PACOTES

#GDP (current US$)(NY.GDP.MKTP.CD) 
#PIB EM PREÇOS CORRENTES EM DÓLAR NORTE-AMERICANO
#CÓDIGO NY.GDP.MKTP.CD

varpib <- WDIsearch("gdp") #criar objeto com resultado

dadospib <- WDI(country = "all",indicator = "NY.GDP.MKTP.CD")

dadospib2023 <- WDI(country = "all", indicator = "NY.GDP.MKTP.CD", start = 2023, end = 2023) 

options(scipen = 999) #ajusta a notação cientifica 
