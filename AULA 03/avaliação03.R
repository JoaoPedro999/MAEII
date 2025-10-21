---
title: "Atividade03"
author: "João Pedro Araújo Teixeira"
date: "2025-10-21"
output: html_document
---


```{r}

dados <- read.csv("C:/Users/joaop/Documents/GitHub/MAEII/AULA 03/compet_avaliativo.csv", stringsAsFactors = FALSE)
names(dados)

# Padronizar os indicadores (z-score)

z1 <- scale(dados$Formalidade.no.mercado.de.trabalho)
z2 <- scale(dados$Crescimento.dos.empregos.formais)
z3 <- scale(dados$Complexidade.econômica)
z4 <- scale(dados$Taxa.bruta.de.matrícula...Ensino.superior)
z5 <- scale(dados$Qualificacao.dos.trabalhadores.em.emprego.formal)

# Índice de Estrutura e Qualificação

dados$IEQ <- (z1 + z2 + z3 + z4 + z5) / 4

# lista

dados <- dados[order(-dados$IEQ), c("Município", "UF", "IEQ")]

head(dados, 26)

```
