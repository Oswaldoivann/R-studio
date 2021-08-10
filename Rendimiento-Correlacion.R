
library(quantmod)

options("getSymbols.warning4.0" = FALSE,
        "getSymbols.auto.assign" = FALSE)

KO <- suppressWarnings(
  getSymbols(c("KO"), from = "2000-01-01"))

KO <- as.numeric(KO$KO.Close)
plot(KO, type = "l", main = "Coca Cola", col = "blue", xlab = "Tiempo", ylab = "Precio" )

AMZN <- suppressWarnings(
  getSymbols(c("AMZN"), from = "2000-01-01"))

AMZN <- as.numeric(AMZN$AMZN.Close)
plot(AMZN, type = "l", main = "Amazon", col = "green", xlab = "Tiempo", ylab = "Precio")


##Rendimiento comuesto continuo

#Aleatorio
X <- runif(20, 1, 10)
show(X)

#Redondear
X <- floor(X)
show(X)

#logaritmo 
logaritmos <- log(X)
show(logaritmos)

#Diferencias
diferencias <- diff(logaritmos)
show(diferencias)

#Grafico
plot(diferencias, type = "l", main = "Diferencia-logaritmo", xlab = "Vector", ylab = "dif(log(X))")

##Rendimiento comupuesto simple R

rendimiento <- diff(log(AMZN))
plot(rendimiento, type = "l")
  

rendimiento <- diff(AMZN)/length(AMZN)
plot(rendimiento, type = "l", main = "Rendimiento Amazon", xlab = "Tiempo", ylab = "Rendimiento")


##Graficos de acciones

KO <- suppressWarnings(
  getSymbols(c("KO"), from = "2012-01-01"))
KO <- as.numeric(KO$KO.Close)
plot(KO, type = "h", main = "Coca Cola", col = "red", xlab = "Time", ylab = "Price" )


PEP <- suppressWarnings(
  getSymbols(c("PEP"), from = "2012-01-01"))
PEP <- as.numeric(PEP$PEP.Close)
plot(PEP, type = "l", main = "Pepsi Cola", col = "blue", xlab = "Time", ylab = "Price" )

##Correlación

#Traemos los datos de las acciones.
simbolos <- getSymbols(c("KO", "PEP", "AAPL", "IBM"), from = "2015-01-01", auto.assign = TRUE)

#Guardamos en un DataFrame
matriz <- data.frame(KO$KO.Close, PEP$PEP.Close, AAPL$AAPL.Close, IBM$IBM.Close)
matriz <- data.matrix(matriz)
head(matriz)

#Grafica
plot(matriz[, 1], matriz[, 2], xlab = "Coke", ylab = "Pepsi", main = "Correlacion")

corre <- cor(matriz[, 1], matriz[, 2])
cat('El coeficiente de correlación es: ', corre)
