library(TurtleGraphics)

# Set up the turtle
turtle_init()

# Dessiner un carré

turtle_forward(20)
turtle_right(90)
turtle_forward(20)
turtle_right(90)
turtle_forward(20)
turtle_right(90)
turtle_forward(20)


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



