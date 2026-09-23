#  1. Membuka data airquality
airquality
# menampilkan struktur data
str(airquality)

# 2. HISTOGRAM + DENSITY CURVE UNTUK VARIABEL WIND
hist(airquality$Wind,
     probability = TRUE,
     breaks = 15,
     col = "red",
     border = "white",
     xlab = "Wind (mph)",
     ylab = "Density",
     main = "Histogram + Density Curve: Wind")

# Menambahkan kurva density
dens_wind <- density(airquality$Wind, na.rm = TRUE)
lines(dens_wind, col = "blue", lwd = 2)

rug(airquality$Wind)

# 3. BOXPLOT DAN STEAM AND LEAF UNTUK VARIABEL WIND
boxplot(airquality$Wind,
        horiz = TRUE,
        col = "orange",
        main = "Boxplot Wind (mph)",
        xlab = "Wind (mph)")

stem(airquality$Wind)
airquality

# 4. SCATTER PLOT
# Scatter plot Wind vs Ozone
plot(airquality$Wind, airquality$Ozone,
     pch = 16,
     col = "yellow",
     xlab = "Wind (mph)",
     ylab = "Ozone (ppb)",
     main = "Scatter Plot: Wind vs Ozone")

# Scatter plot Wind vs Temp
plot(airquality$Wind, airquality$Temp,
     pch = 16,
     col = "green",
     xlab = "Wind (mph)",
     ylab = "Temperature (F)",
     main = "Scatter Plot: Wind vs Temperature")

# Scatter plot matrix untuk beberapa variabel
pairs(~ Ozone + Solar.R + Wind + Temp,
      data = airquality,
      pch = 16,
      col = "blue",
      main = "Scatter Plot Matrix: airquality")
