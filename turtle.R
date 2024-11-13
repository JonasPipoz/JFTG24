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

# première barre
taille = 20
turtle_forward(taille)
turtle_right(90)
turtle_forward(5)
turtle_right(90)
turtle_forward(taille)

# placement pour la deuxième barre
turtle_left(90)
turtle_forward(10)
turtle_left(90)

# deuxième barre
taille = 30

turtle_forward(taille)
turtle_right(90)
turtle_forward(5)
turtle_right(90)
turtle_forward(taille)
