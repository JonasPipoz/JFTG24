library(TurtleGraphics)

# Set up the turtle
turtle_init()

# Avancer d'une distance de 20
turtle_forward(20)

# Tourner d'un angle de 45 degrés à droite
turtle_right(45)

# reculter de 10
turtle_backward(10)

# Tourner d'un angle de 90 degrés à gauche
turtle_left(90)


# Dessiner un carré

turtle_init()
turtle_forward(20)
turtle_right(90)
turtle_forward(20)
turtle_right(90)
turtle_forward(20)
turtle_right(90)
turtle_forward(20)


# dessiner un rond
turtle_init(300,300)
turtle_hide()
for (i in 1:360){

  turtle_forward(1)
  turtle_right(1)

}
turtle_show()


# Dessiner un graphique en barre avec 3 barres


turtle_init()

espace = 5
largeur = 3

# première barre
taille = 20
turtle_forward(taille)
turtle_right(90)
turtle_forward(largeur)
turtle_right(90)
turtle_forward(taille)

# placement pour la barre suivante
turtle_left(90)
turtle_forward(espace)
turtle_left(90)

# deuxième barre
taille = 30

turtle_forward(taille)
turtle_right(90)
turtle_forward(largeur)
turtle_right(90)
turtle_forward(taille)


# placement pour la barre suivante
turtle_left(90)
turtle_forward(5)
turtle_left(90)

# troisième barre
taille = 40 

turtle_forward(taille)
turtle_right(90)
turtle_forward(largeur)
turtle_right(90)
turtle_forward(taille)



