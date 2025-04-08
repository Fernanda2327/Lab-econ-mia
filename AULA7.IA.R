#AULA 7

#DADOS EM PAINEL (GRÁFICO AJUSTADO PELA IA)

library(WDI)
library(ggplot2)
library(dplyr)

# Coleta dos dados
elet <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS", extra = TRUE)

# Criando o gráfico
grafpainelelet <- ggplot(data = elet, aes(x = year, y = EG.ELC.ACCS.ZS)) +
  # Pontos para todos os países (menos o Brasil)
  geom_point(aes(color = "Outros"), alpha = 0.3, show.legend = FALSE) +
  # Dados do Brasil destacados em vermelho
  geom_point(data = filter(elet, country == "Brazil"),
             color = "red", size = 2, alpha = 0.8) +
  labs(
    title = "Acesso à Eletricidade ao Longo dos Anos",
    x = "Ano",
    y = "ACESSO À ELETRICIDADE (% POPULAÇÃO)"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12),
    legend.position = "none"
  ) +
  scale_color_manual(values = c("Outros" = "#7F7F7F", "Brazil" = "red"))


print(grafpainelelet)

#CORTE TRANSVERSAL (GRÁFICO AJUSTADO PELA IA)

library(WDI)
library(ggplot2)
library(dplyr)

# Certifique-se de ter os dados:
# elet2023 <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS", start = 2023, end = 2023)

# Remove valores faltantes
elet2023_clean <- elet2023 %>%
  filter(!is.na(EG.ELC.ACCS.ZS))

# Gráfico
grafcorteelet2023 <- ggplot(data = elet2023_clean, aes(x = reorder(country, EG.ELC.ACCS.ZS), y = EG.ELC.ACCS.ZS)) +
  geom_col(fill = "#7F7F7F", alpha = 0.6) +
  # Dados do Brasil em vermelho
  geom_col(data = filter(elet2023_clean, country == "Brazil"),
           aes(x = country, y = EG.ELC.ACCS.ZS),
           fill = "red", alpha = 0.9) +
  labs(
    title = "Acesso à Eletricidade por País (2023)",
    x = "País",
    y = "Acesso à eletricidade (% População)"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 14),
    axis.text.x = element_text(angle = 90, hjust = 1, size = 8),
    axis.text.y = element_text(size = 12),
    legend.position = "none"
  )


print(grafcorteelet2023)


#SERIE TEMPORAL (GRÁFICO AJUSTADO PELA IA)

library(WDI)
library(ggplot2)
library(dplyr)

# Supondo que eletbr contenha apenas os dados do Brasil
# elet <- WDI(country = "all", indicator = "EG.ELC.ACCS.ZS")
# eletbr <- filter(elet, country == "Brazil")

grafserieelet <- ggplot(data = eletbr, aes(x = year, y = EG.ELC.ACCS.ZS)) +
  geom_line(color = "red", size = 1.2) +  # Linha do Brasil em vermelho
  labs(
    title = "Série Histórica do Acesso à Eletricidade no Brasil",
    x = "Ano",
    y = "Acesso à eletricidade (% População)"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    axis.text = element_text(size = 12),
    legend.position = "none"
  )
 print(grafserieelet)

                                            