aula <- read.csv("C:/Users/252506/Desktop/AULA 03/compet_aula.csv", stringsAsFactors = FALSE)

# Padronizar os indicadores (z-score)

z1 <- scale(aula$Empregos.no.setor.criativo)
z2 <- scale(aula$Crédito.per.capita)
z3 <- scale(aula$PIB.per.capita)
z4 <- scale(aula$Renda.média.do.trabalho.formal)

# Índice médio de atratividade
aula$IAE <- (z1 + z2 + z3 + z4) / 4

# Ranking
aula <- aula[order(-aula$IAE), c("Município", "UF", "IAE")]
head(aula, 10)