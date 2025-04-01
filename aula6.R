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

# WDI = FUNÇÃO - DADOSPIB = OBJETO - CORTE TRANSVERSAL = DETERMINA UM PERÍODO UTILIZANDO TODOS OS PAÍSES 
#SÉRIE TEMPORAL = VÁRIOS PÉRIODOS MAS APENAS 1 PAÍS
# CTRL + SHIFT + ENTER = EXECUTA TUDO

#GRÁFICOS
#BIBLIOTECA ggplot2 (tidyverse)

library("tidyverse")

#DADOS EM PAINEL

grafpainel <- ggplot(data = dadospib,
                    mapping = aes(y= NY.GDP.MKTP.CD, x = year)) + geom_point()

print(grafpainel)

#corte transversal

grafcorte <- ggplot(data = dadospib2023, mapping = aes(y= NY.GDP.MKTP.CD, x = year )) + 
  geom_point()

print(grafcorte)

#SERIE TEMPORAL

grafserie <-  ggplot(dadospibbr, mapping = aes(y= NY.GDP.MKTP.CD, x = year )) + 
  geom_line()

print(grafserie)
