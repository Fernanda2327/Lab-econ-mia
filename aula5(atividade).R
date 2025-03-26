library("WDI")

#DADOS EM PAINEL

elet<- WDI(country = "all",indicator = "EG.ELC.ACCS.ZS")

# CORTE TRANSVERSAL

elet2023 <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS", start ="2023", end = "2023")

# SÉRIE TEMPORAL

eletbr <-  WDI(country = "BR", indicator = "EG.ELC.ACCS.ZS")
