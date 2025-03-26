library(WDI)

options(scipen = 999) #ajusta a notação cientifica

varpib <- WDIsearch("gdp") #criar objeto com resultado

#DADOS EM PAINEL

dadospib <- WDI(country = "all",indicator = "NY.GDP.MKTP.CD")

países <- c("BR" , 'US')

# CORTE TRANSVERSAL

dadospib2023 <- WDI(country = "all", indicator = "NY.GDP.MKTP.CD", start = 2023, end = 2023) 

# SÉRIE TEMPORAL

dadospibbr <- WDI(country = "BR", indicator = "NY.GDP.MKTP.CD") 