source("./codigo/carregaDados.R")

require(rgdal)
require(maptools)

decada1 <- lta[lta$ano_diagnostico < 1990,]
decada2 <- lta[lta$ano_diagnostico >= 1990 & lta$ano_diagnostico < 2000,]
decada3 <- lta[lta$ano_diagnostico >= 2000,]

par(mfrow = c(1,3))
plot(cidades, border = "gray")
points(x = decada1$lon, y = decada1$lat, col = c("red", "blue"), pch = 20)
title(main = "1980-1990")
legend("topright", c("Feminino", "Masculino"), pch = 20, col = c("red", "blue"), title = "Sexo")

plot(cidades, border = "gray")
points(x = decada2$lon, y = decada2$lat, col = c("red", "blue"), pch = 20)
title(main = "1990-2000")
legend("topright", c("Feminino", "Masculino"), pch = 20, col = c("red", "blue"), title = "Sexo")

plot(cidades, border = "gray")
points(x = decada3$lon, y = decada3$lat, col = c("red", "blue"), pch = 20)
title(main = "2000-2013")
legend("topright", c("Feminino", "Masculino"), pch = 20, col = c("red", "blue"), title = "Sexo")

rm(cidades)
rm(decada1)
rm(decada2)
rm(decada3)
rm(lta)