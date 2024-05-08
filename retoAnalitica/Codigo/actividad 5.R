# Actividad Evaluable 5: Análisis de datos

# Dataset de mtcars
View(mtcars)

#Analisis de correlacion
# Comparacion entre potencia de motor y peso de vehiculo
library(PerformanceAnalytics)
cor(mtcars$qsec,mtcars$am)
corGE <- data.frame(mtcars$qsec, mtcars$am)
chart.Correlation(corGE)

library(corrplot)
# Grafica matriz de correlacion
corrcars <- cor(mtcars)
corrplot(corrcars,method = "circle")

# Analisis K-means
data("mtcars")
mtcars$mpg = NULL
km <- kmeans(mtcars,3)
km

#Graficacion de clusters
library(factoextra)
library(ggplot2)
fviz_cluster(km,mtcars)

