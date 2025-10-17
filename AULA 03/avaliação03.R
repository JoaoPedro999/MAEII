aula <- read.csv("C:/Users/252506/Desktop/AULA 03/compet_avaliativo.csv", stringsAsFactors = FALSE)

# Padronizar os indicadores (z-score)

z1 <- scale(aula$Formalidade.no.mercado.de.trabalho)
z2 <- scale(aula$Crescimento.dos.empregos.formais)
z3 <- scale(aula$Complexidade.econômica)
z4 <- scale(aula$Taxa.bruta.de.matrícula.-.Ensino.superior)

# Índice médio de atratividade
aula$IAE <- (z1 + z2 + z3 + z4) / 4

# Ranking
aula <- aula[order(-aula$IAE), c("Município", "UF", "IAE")]
head(aula, 10)