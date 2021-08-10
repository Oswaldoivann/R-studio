
#LINK DATOS: https://drive.google.com/file/d/12zRBMCxxN-vnwl0XuUql2Mfq3T1lfMSK/view?usp=sharing

df <- read.csv('df_vg.csv', encoding = "UTF-8")
head(df)


Y <- data.matrix(df[, 2])
head(Y) 


### *Mostramos la matriz "Y"*
Y <- data.matrix(df[, 2])
head(Y) 



### *Mostramos la matriz "X"*
X <- data.matrix((df[, 3:11]))
head(X)


### *Calculamos la matriz transpuesta e inversa de nuestras variables X*
x <- t(X)%*%X
print(x)



inv_x <- solve(x)
print(inv_x)


### *Sacamos la matriz transpuesta de Y, X; la guardamos en la variable y.*
y <- t(X)%*%Y
print(y)




### *Mostramos en una tabla, los valores de Beta de nuestro Modelo, con las nuevas variables x, y.*
beta <- inv_x%*%y
print(beta)


### *Mostramos en pantalla nuestras Betas.*
cat('Los vectores estimados son: \n',
    ' Beta 0 = ', beta[1,1],'\n',
    ' Beta 1 = ', beta[2,1],'\n', 
    ' Beta 2 = ', beta[3,1],'\n', 
    ' Beta 3 = ', beta[4,1],'\n',
    ' Beta 4 = ', beta[5,1],'\n', 
    ' Beta 5 = ', beta[6,1],'\n', 
    ' Beta 6 = ', beta[7,1],'\n',
    ' Beta 7 = ', beta[8,1],'\n', 
    ' Beta 8 = ', beta[9,1])
