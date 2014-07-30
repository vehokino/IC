source("./codigo/carregaDados.R")

require(rgdal)
require(maptools)
lta <- lta[lta$forma_clinica == "LTA-c" | lta$forma_clinica == "LTA-d" | lta$forma_clinica == "LTA-m",]
print(levels(lta$forma_clinica))
print(unique(lta$forma_clinica))
decada1 <- lta[lta$ano_diagnostico < 1990,]
decada2 <- lta[lta$ano_diagnostico >= 1990 & lta$ano_diagnostico < 2000,]
decada3 <- lta[lta$ano_diagnostico >= 2000,]

par(mfrow = c(1,3))
plot(cidades, border = "gray")
points(x = decada1$lon, y = decada1$lat, col = lta$forma_clinica, pch = 20)
title(main = "1980-1990")
legend("topright", as.character(unique(lta$forma_clinica)), pch = 20, col = c("red", "blue", "cyan"), title = "LTA")

plot(cidades, border = "gray")
points(x = decada2$lon, y = decada2$lat, col = lta$forma_clinica, pch = 20)
title(main = "1990-2000")
legend("topright", as.character(unique(lta$forma_clinica)), pch = 20, col = c("red", "blue", "cyan"), title = "LTA")

plot(cidades, border = "gray")
points(x = decada3$lon, y = decada3$lat, col = lta$forma_clinica, pch = 20)
title(main = "2000-2013")
legend("topright", as.character(unique(lta$forma_clinica)), pch = 20, col = c("red", "blue", "cyan"), title = "LTA")

rm(cidades)
rm(decada1)
rm(decada2)
rm(decada3)
rm(lta)