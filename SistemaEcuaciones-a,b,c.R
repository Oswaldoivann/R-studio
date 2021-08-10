
#Sistema de Ecuaciones

A1x + B1y + C1 = 0
A2x + B2y + C2 = 0

#Sistema de ecuaciones de dos variables y dos ecuaciones.

A_1 <- 8
A_2 <- 4
B_1 <- -2
B_2 <- 2
C_1 <- -24
C_2 <- 12

x <- (C_1/B_1 - C_2/B_2)/(A_2/B_2 - A_1/B_1)
y <- -(A_1/B_1)*X - C_1/B_1

solucion <- c(x, y)

cat('La solucion del sistema es: ', 'x= ', x, 'y= ', y)

