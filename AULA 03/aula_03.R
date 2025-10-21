base <- read.csv("C:/Users/joaop/Documents/GitHub/MAEII/AULA 03/compet_aula.csv")
ls()
names(base)

file.exists("C:/Users/joaop/Documents/GitHub/MAEII/AULA 03/compet_aula.csv")


z1 <- scale(base$Empregos.no.setor.criativo)
z2 <- scale(base$Crédito.per.capita)
z3 <- scale(base$PIB.per.capita)
z4 <- scale(base$Renda.média.do.trabalho.formal)


base$IAE <- (z1 + z2 + z3 + z4) / 4


base <- base[order(-base$IAE), c("Município", "UF", "IAE")]
head(base, 10)
