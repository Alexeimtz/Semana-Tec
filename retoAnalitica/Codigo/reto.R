# Reto Huracanes

# Conexión y vista a tu tabla de datos
getwd()
setwd("/Users/alexeimartinez/Downloads")
getwd()
data = read.csv("./CasoHuracanesCSV.csv")
View(data)

# Definir el objetivo de análisis
# PENDIENTE

# Identifica el tipo de dato de 3 columnas (al menos 2 tipos de datos diferentes
# Time -> Entero
# Latitud -> Flotante
# Ocean -> String

# Indica los valores de los cuartiles de las variables : WIND, PRESSURE, CO2, Population

# Prepara y limpia los datos a analizar
data$Pressure[data$Pressure <= 0] <- NA
newData <- data[!is.na(data$Pressure),]
newData$Wind[newData$Wind < 0] <- NA
finalData <- newData[!is.na(newData$Wind),]

summary(finalData$Wind) 
summary(finalData$Pressure)
summary(finalData$CO2)
summary(finalData$Population)

# Aplicar las técnicas estadísticas
summary(finalData$Wind)
summary(finalData$Pressure)
summary(finalData$CO2)
summary(finalData$Population)

# Conclusiones

# Análisis de Datos , por medio de Gráficas
# Plot
plot(finalData$Wind, main="Wind", col = "red")

plot(finalData$year, finalData$Wind, main="year vs Wind", col = "orange")

plot(finalData$year, finalData$Pressure, main="year vs pressure", col = "green")

plot(finalData$year, finalData$CO2, main="year vs pressure", col = "pink")

plot(finalData$year, finalData$Population, main="co2 vs population", col = "yellow")

# Boxplot
boxplot(finalData$CO2, col = ("red"))
boxplot(CO2 ~ Ocean, finalData,
        main = "Boxplot de los Oceanos y la cantidad de CO2",
        xlab = "Oceanos",
        ylab = "CO2",
        col = c("lightblue", "lightgreen"))

# Analisis de datos
# Grafica correlacion de datos
library(corrplot)
data(finalData)
View(finalData)
finalData$Clave = NULL
finalData$ID = NULL
finalData$Ocean = NULL
finalData$Name = NULL
finalData$Fecha = NULL
finalData$year = NULL
finalData$Month = NULL
finalData$Time = NULL
finalData$Status = NULL
corrHura <- cor(finalData)
corrplot(corrHura,method = "circle")

# Algoritmo K-means
data(finalData)
finalData$Clave = NULL
finalData$ID = NULL
finalData$Ocean = NULL
finalData$Name = NULL
finalData$Fecha = NULL
finalData$year = NULL
finalData$Month = NULL
finalData$Time = NULL
finalData$Status = NULL
kM <- kmeans(finalData,3)
kM

finalData$cluster <- kM$cluster

# Resumen de estadísticas para cada cluster
aggregate(. ~ cluster, data = finalData, FUN = mean)

library(factoextra)
library(ggplot2)
fviz_cluster(kM, finalData)

# Regresion lineal
finalData$Population[finalData$Population == 0] <- NA
lastData <- finalData[!is.na(finalData$Population),]

View(lastData)

# Reto Huracanes

# Conexión y vista a tu tabla de datos
getwd()
setwd("/Users/alexeimartinez/Downloads")
getwd()
data = read.csv("./CasoHuracanesCSV.csv")
View(data)

# Definir el objetivo de análisis
# PENDIENTE

# Identifica el tipo de dato de 3 columnas (al menos 2 tipos de datos diferentes
# Time -> Entero
# Latitud -> Flotante
# Ocean -> String

# Indica los valores de los cuartiles de las variables : WIND, PRESSURE, CO2, Population

# Prepara y limpia los datos a analizar
data$Pressure[data$Pressure <= 0] <- NA
newData <- data[!is.na(data$Pressure),]
newData$Wind[newData$Wind < 0] <- NA
finalData <- newData[!is.na(newData$Wind),]

summary(finalData$Wind) 
summary(finalData$Pressure)
summary(finalData$CO2)
summary(finalData$Population)

# Aplicar las técnicas estadísticas
summary(finalData$Wind)
summary(finalData$Pressure)
summary(finalData$CO2)
summary(finalData$Population)

# Conclusiones

# Análisis de Datos , por medio de Gráficas
# Plot
plot(finalData$Wind, main="Wind", col = "red")

plot(finalData$year, finalData$Wind, main="year vs Wind", col = "orange")

plot(finalData$year, finalData$Pressure, main="year vs pressure", col = "green")

plot(finalData$year, finalData$CO2, main="year vs pressure", col = "pink")

plot(finalData$year, finalData$Population, main="co2 vs population", col = "yellow")

# Boxplot
boxplot(finalData$CO2, col = ("red"))
boxplot(CO2 ~ Ocean, finalData,
        main = "Boxplot de los Oceanos y la cantidad de CO2",
        xlab = "Oceanos",
        ylab = "CO2",
        col = c("lightblue", "lightgreen"))

# Analisis de datos
# Grafica correlacion de datos
library(corrplot)
data(finalData)
View(finalData)
finalData$Clave = NULL
finalData$ID = NULL
finalData$Ocean = NULL
finalData$Name = NULL
finalData$Fecha = NULL
finalData$year = NULL
finalData$Month = NULL
finalData$Time = NULL
finalData$Status = NULL
corrHura <- cor(finalData)
corrplot(corrHura,method = "circle")

# Algoritmo K-means
data(finalData)
finalData$Clave = NULL
finalData$ID = NULL
finalData$Ocean = NULL
finalData$Name = NULL
finalData$Fecha = NULL
finalData$year = NULL
finalData$Month = NULL
finalData$Time = NULL
finalData$Status = NULL
kM <- kmeans(finalData,3)
kM

library(factoextra)
library(ggplot2)
fviz_cluster(kM, finalData)

# Regresion lineal
finalData$Population[finalData$Population == 0] <- NA
lastData <- finalData[!is.na(finalData$Population),]

View(lastData)

ggplot(finalData, aes(x = CO2, y = Population)) +
  geom_point(color = "blue", size = 3) +  # Añade puntos
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Añade la línea de regresión
  labs(title = "CO2 and Population",
       x = "CO2", y = "Population") +
  theme_minimal()

ggplot(finalData, aes(x = Wind, y = Population)) +
  geom_point(color = "yellow", size = 3) +  # Añade puntos
  geom_smooth(method = "lm", color = "green", se = FALSE) +  # Añade la línea de regresión
  labs(title = "Wind and Population",
       x = "Wind", y = "Population") +
  theme_minimal()

ggplot(finalData, aes(x = Wind, y = Pressure)) +
  geom_point(color = "pink", size = 3) +  # Añade puntos
  geom_smooth(method = "lm", color = "orange", se = FALSE) +  # Añade la línea de regresión
  labs(title = "Wind and Pressure",
       x = "Wind", y = "Pressure") +
  theme_minimal()