# Filtrando só alguns países para facilitar a visualização

library(WDI)
library(ggplot2)
library(dplyr)

paises_selecionados <- c("Brazil", "India", "China", "Nigeria", "Germany")
elet_selecionados <- filter(elet, country %in% paises_selecionados)

ggplot(elet_selecionados, aes(x = year, y = EG.ELC.ACCS.ZS)) +
  geom_line(color = "#0072B2") +
  facet_wrap(~ country, scales = "free_y") +
  labs(
    title = "Acesso à Eletricidade ao Longo do Tempo (por País)",
    x = "Ano",
    y = "ACESSO À ELETRICIDADE (% POPULAÇÃO)"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    strip.text = element_text(face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 10)
  )


