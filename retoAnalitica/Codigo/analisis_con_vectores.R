#Análisis con vectores
#vector generado con los seguidores del salón
seguidores <- c(327, 648, 436, 124, 651, 547, 235, 190, 182, 100, 325, 37, 519)
sort(seguidores)#acomoda los datos
summary(seguidores)#Nos da un resumen de los datos
mean(seguidores)#nos da el promedio
mfv(seguidores)#nos da la moda
var(seguidores)#nos da la varianza
hist(seguidores, col="red")#graficamos en barras
plot(seguidores)#graficamos en puntos
boxplot(seguidores, col="red")#nos da la gráfica de caja

