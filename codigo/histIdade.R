# imprimi informa??aes basicas os dados
source("./codigo/carregaDados.R")

require(ggplot2)
require(gridExtra)

semLTA <- lta[lta$forma_clinica != "LTA",]
#boxplotIdade <- ggplot(semLTA, aes(x = forma_clinica, y = idade, fill = forma_clinica)) +
#        geom_boxplot(alpha = 0.2) + facet_grid(. ~ forma_clinica) + 
#        labs(x = "Tipo de LTA", y = "Idade", title = "LTA vs. Idade (Boxplot)") + 
#        scale_fill_discrete(name = "LTA" ) + stat_summary(fun.x=mean, geom="line")
histIdade <- ggplot(semLTA, aes(idade, fill = T)) + 
        geom_density(alpha = 0.4)  + facet_grid(. ~ forma_clinica) + theme_bw() +
        labs(x = "Idade") + labs(y = "Densidade") + labs (title = "LTA vs. Idade (Histograma)") +
        scale_fill_discrete(guide = FALSE ) + geom_vline(xintercept = mean(semLTA$idade, na.rm=T), colour="darkgrey", linetype = "dashed")
#graphic <- grid.arrange(histIdade, boxplotIdade, nrow = 2)
print(histIdade)

rm(histIdade)
rm(cidades)
rm(semLTA)
rm(lta)