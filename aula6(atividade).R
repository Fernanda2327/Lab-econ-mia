#DADOS EM PAINEL

elet<- WDI(country = "all",indicator = "EG.ELC.ACCS.ZS")

# CORTE TRANSVERSAL

elet2023 <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS", start ="2023", end = "2023")

elet2022 <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS", start ="2022", end = "2022")


# SÉRIE TEMPORAL

eletbr <-  WDI(country = "BR", indicator = "EG.ELC.ACCS.ZS")

#GRÁFICOS

#DADOS EM PAINEL

grafpainelelet <- ggplot(data = elet, mapping = aes(y=EG.ELC.ACCS.ZS, x= year)) +
  geom_point()

print(grafpainelelet)

#CORTE TRANSVERSAL

grafcorteelet2023 <- ggplot(data = elet2023, mapping = aes(y= EG.ELC.ACCS.ZS, x= year )) +
  geom_point()

grafcorteelet2022 <- ggplot(data = elet2022, mapping = aes(y= EG.ELC.ACCS.ZS, x= year )) +
  geom_point()

print(grafcorteelet2023)
print(grafcorteelet2022)

#SERIE TEMPORAL

grafserieelet <- ggplot(data = eletbr, mapping = aes(y= EG.ELC.ACCS.ZS, x= year))+
  geom_line()

print(grafserieelet)
