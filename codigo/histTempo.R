source("./codigo/carregaDados.R")

require(ggplot2)
require(gridExtra)

semLTA <- lta[lta$forma_clinica != "LTA",]

histTempo <- ggplot(semLTA, aes(ano_diagnostico, fill = forma_clinica)) + 
        geom_histogram(alpha = 0.4)  + facet_grid(. ~ forma_clinica) + theme_bw() +
        labs(x = "Tempo") + labs(y = "N. de Casos") + labs (title = "LTA vs. Tempo") + 
        scale_fill_discrete(guide=FALSE) + geom_vline(xintercept = mean(semLTA$ano_diagnostico, na.rm=T), colour="darkgrey", linetype = "dashed")
print(histTempo)
rm(histTempo)
rm(cidades)
rm(semLTA)
rm(lta)