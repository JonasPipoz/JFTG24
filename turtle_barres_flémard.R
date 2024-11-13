library(TurtleGraphics)

# lecture des données 

df <- read.csv2("top10_2012.csv", encoding = "latin1")



## Version flémarde

creation_graphic <- function(barres = c(20, 30, 40), largeur = 3, espace = 5){
  ## Initialisation de la tortue et placement à gauche
  turtle_init()
  turtle_up()
  turtle_goto(5, 20)
  turtle_down()
  
  for (taille in barres){
    turtle_forward(taille)
    turtle_right(90)
    turtle_forward(largeur)
    turtle_right(90)
    turtle_forward(taille)
    
    turtle_left(90)
    turtle_forward(espace)
    turtle_left(90)
  }
  turtle_goto(0, 20)
}



creation_graphic(df$Effectif, espace = 5, largeur = 3)
