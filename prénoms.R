
library(tidyverse)

# lecture des données

data <- read.csv2("prénomsDDN.csv", encoding = "utf8")


# Afficher les 10 prénoms les plus fréquents

top10 <- data %>% 
  
  # Compter les occurences de chaque prénom
  group_by(Prénom) %>%
  summarise(Effectif = n()) %>% 
  
  # Trier les prénoms par ordre décroissant
  arrange(desc(Effectif)) %>% 
  
  # garder que le top 10
  head(10)

# Afficher le top 10 des prénoms dans un graphique

ggplot(top10, aes(x = reorder(Prénom, -Effectif), y = Effectif)) +
  geom_bar(stat = "identity") +
  labs(title = "Top 10 des prénoms des habitants de la ville de Neuchâtel",
       x = "Prénom",
       y = "Effectif") +
  # ajout label
  geom_text(aes(label = Effectif),size = 3, vjust = -0.5) +
  theme_minimal() +
  # x axis labels pas en puissance de 10
  scale_y_continuous(labels = scales::comma) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Même exercice pour les prénoms des personnes nées en 2012

top10_2012 <- data %>% 
  # ajout d'un filtre
  filter(date_naissance >= '2012-01-01') %>% 
  
  ### CODE identique à celui ci-dessus
  # Compter les occurences de chaque prénom
  group_by(Prénom) %>%
  summarise(Effectif = n()) %>% 
  
  # Trier les prénoms par ordre décroissant
  arrange(desc(Effectif)) %>% 
  
  # garder que le top 10
  head(10)


ggplot(top10_2012, aes(x = reorder(Prénom, -Effectif), y = Effectif)) +
  geom_bar(stat = "identity") +
  labs(title = "Top 10 des prénoms des habitants de la ville de Neuchâtel nés après 2012",
       x = "Prénom",
       y = "Effectif") +
  # ajout label
  geom_text(aes(label = Effectif),size = 3, vjust = -0.5) +
  theme_minimal() +
  # x axis labels pas en puissance de 10
  scale_y_continuous(labels = scales::comma) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
