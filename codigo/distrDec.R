source("./codigo/carregaDados.R")

require(rgdal)

decada1 <- lta[lta$ano_diagnostico < 1990,]
decada2 <- lta[lta$ano_diagnostico >= 1990 & lta$ano_diagnostico < 2000,]
decada3 <- lta[lta$ano_diagnostico >= 2000,]

par(mfrow = c(1,3))
plot(cidades, border = "gray", main = "1980-1990")
points(x = decada1$lon, y = decada1$lat, col = "red", pch = 20)

plot(cidades, border = "gray", main = "1990-2000")
points(x = decada2$lon, y = decada2$lat, col = "red", pch = 20)

plot(cidades, border = "gray", main = "2000-2013")
points(x = decada3$lon, y = decada3$lat, col = "red", pch = 20)

rm(cidades)
rm(decada1)
rm(decada2)
rm(decada3)
rm(lta)