require(rgdal)

# Carrega os dados necessarios
lta <- read.csv("dados/LTA.csv", 
                 colClasses = c("character", "factor", "integer","character", "integer", 
                                "factor", "factor", "factor", "numeric", "numeric","factor",
                                "factor", "factor", "factor", "factor", "factor"))
lta <- lta[lta$lat < -18 & lta$lat > -24 & lta$lon < -44 & lta$lon > -52 & 
                   complete.cases(lta$lon,lta$lat),2:ncol(lta)]
cidades <- readOGR("./dados/sp", "35MEE250GC_SIR")

