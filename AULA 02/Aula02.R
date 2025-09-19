# Vetores de dados
artistas <- c("Ozzy Osbourne", "Lemmy Kilmister", "Ronnie J. Dio", "Jimmy Hendrix") #lendas
reproducoes_milhoes <- c(1200, 950, 870, 760) #visualizações
albuns <- c(14, 7, 6, 7) # Álbuns lançados

# Data Frame
musica <- data.frame(
  artistas = artistas,
  reproducoes_milhoes = reproducoes_milhoes,
  albuns = albuns,
  stringsAsFactors = FALSE
)

# Visualizando os dados 
musica

# Estatística descritiva
media_reproducoes <- mean(musica$reproducoes_milhoes)
mediana_albuns <- median(musica$albuns)
summary(musica)


# Gráfico

old_par <- par(no.readonly = TRUE)
par(mar = c(8, 4, 4, 1)) #margens: bottom, left, top, right
bp <- barplot(
  musica$reproducoes_milhoes,
  names.arg = musica$artistas,
  las = 2, # Posição do rótulo do eixo x 
  main = "Streams no Spotify(Milhões) - Lendas do Rock",
  ylab = "Milhões de reproduções",
  col= c("purple", "red", "gold", "orange")
)