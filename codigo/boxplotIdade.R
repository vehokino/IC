# imprimi informa??aes basicas os dados
source("./codigo/carregaDados.R")

require(ggplot2)
require(gridExtra)

boxplotIdade <- ggplot(semLTA, aes(x = forma_clinica, y = idade, fill = forma_clinica)) +
        geom_boxplot(alpha = 0.2) + 
        labs(x = "Tipo de LTA", y = "Idade", title = "LTA vs. Idade (Boxplot)") + 
        scale_fill_discrete(name = "LTA" ) + stat_summary(fun.x=mean, geom="line") + 
        theme_bw() + 
        geom_hline(yintercept = mean(semLTA$idade, na.rm=T), colour="darkgrey", linetype = "dashed")

print(boxplotIdade)

rm(boxplotIdade)
rm(cidades)
rm(semLTA)
rm(lta)