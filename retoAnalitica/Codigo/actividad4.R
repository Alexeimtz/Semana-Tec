# Análisis utilizando archivos CSV

getwd()
setwd("/Users/52552/Desktop")
getwd()
data = read.csv("./GlobalLandTemperaturesByCountry.csv")

# Eliminar NA

newData <- data[!is.na(data$AverageTemperature),]
sum(is.na(data$AverageTemperature))
sapply(data,function(x)sum(is.na(x)))

View(newData)

# Analisis de datos

# Pais 1 Italy
summary(newData$Country)
pais1 <- subset(newData,newData$Country == "Italy")
summary(pais1$Country)

# Pais 2 Palau
summary(newData$Country)
pais2 <- subset(newData,newData$Country == "Palau")
summary(pais2$Country)

# Pais 3 Serbia
summary(newData$Country)
pais3 <- subset(newData,newData$Country == "Serbia")
summary(pais3$Country)


# Analisis de pais 1 Average Temperature
summary(pais1$AverageTemperature)
prom1 <- mean(pais1$AverageTemperature)
hist(pais1$AverageTemperature, col = "blue")

# Analisis de pais 2 Average Temperature
summary(pais2$AverageTemperature)
prom2 <- mean(pais2$AverageTemperature)
hist(pais2$AverageTemperature, col = "red")

# Analisis de pais 3 Average Temperature
summary(pais3$AverageTemperature)
prom3 <- mean(pais3$AverageTemperature)
hist(pais3$AverageTemperature, col = "yellow")


# Analisis de pais 1 AverageTemperatureUncertainty
summary(pais1$AverageTemperatureUncertainty)
mean(pais1$AverageTemperatureUncertainty)
hist(pais1$AverageTemperatureUncertainty, col = "blue")

# Analisis de pais 2 AverageTemperatureUncertainty
summary(pais2$AverageTemperatureUncertainty)
mean(pais2$AverageTemperatureUncertainty)
hist(pais2$AverageTemperatureUncertainty, col = "red")

# Analisis de pais 3 AverageTemperatureUncertainty
summary(pais3$AverageTemperatureUncertainty)
mean(pais3$AverageTemperatureUncertainty)
hist(pais3$AverageTemperatureUncertainty, col = "yellow")
