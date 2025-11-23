# ----------------------------------------------------------------------
##  QQ Plot para Verificar Normalidad (Método con Paquete 'car')
# ----------------------------------------------------------------------
# Si necesitas las bandas de confianza que ofrece el paquete 'car'.

# Definimos la variable objetivo para claridad
puntajes_naturales <- icfes$PUNT_C_NATURALES
library(car)

qqPlot(puntajes_naturales,
       ylab = "Ciencias Naturales",
       main = "Ciencias Naturales vs Distribución Normal (con car)",
       dist = "norm")



# Histograma del puntaje de Ciencias Naturales
hist(icfes$PUNT_C_NATURALES,
     main = "Histograma Puntaje Ciencias Naturales",
     xlab = "Puntaje de Ciencias Naturales",
     col = "pink",
     border = "black")
