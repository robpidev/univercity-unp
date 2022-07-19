edad <- c(10, 22, 42, 10, 9, 22, 30, 24, 51, 42)
sort(edad)
mean(edad)
median(edad)
table(edad)
quantile(edad, 0.35)
quantile(edad, c(0.10, 0.25, 0.5, 0.6, 0.75))
range(edad)
diff(range(edad))
min(edad)
max(edad)
rango <- max(edad) - min(edad)
rango
IQR(edad)
var(edad)
sd(edad)
var_coef <- sd(edad) / mean(edad) * 100
var_coef

summary(edad)

library(e1071)

skewness(edad)
kurtosis(edad)

# Ejercicio 2
df <- read.csv("data/datos.csv", header <- TRUE)
df
final <- df$Notas
n <- length(final)
n

intervals <- round(1 + 3.32 * log10(n))

m
clase <- cut(final, intervals, right = TRUE)
clase

Tabla=cbind(fi,hi,Fi,Hi)


