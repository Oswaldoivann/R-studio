#Código para calcular la distancia entre dos puntos.

distancia <- function(x1, y1, x2, y2){
  return(sqrt((x2 - x1)^2 + (y2 - y1)^2))
}


#Calculamos la distancia ente dos puntos con nuestra funcion

distancia(3, 4, 0, 0)


#
distaCerca <- function(m,n){
  
  r <- numeric(n)
  nn <- numeric(n)
  d <- numeric(n)
  x <- c(seq(1:m))
  x <- sample(x, n)
  y <- c(seq(1:m))
  y <- sample(y, n)
  
  par(pty = "s", pin = c(4.5, 4.5))
  plot(x, y, pch = 20,
       bg = "red",
       col = "blue",
       cex = 1,
       lwd = 1)
  
  for (i in 1:n){
    for (j in 1:n){
      d[j] <- distancia(x[i], y[i], x[j], y[j])
      r[i] <- min(d[-i])
      nn[i] <- which(d == r[i])
    }
  }
  
  show(d)
  show(nn)
  show(x)
  show(y)
  
  for (i in 1:n){
    lines(c(x[i], x[nn[i]]), c(y[i], y[nn[i]]))
  }
}

distaCerca(30,30)
