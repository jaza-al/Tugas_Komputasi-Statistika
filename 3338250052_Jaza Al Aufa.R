# Memanggil dataset iris
data(iris)
print(iris)

# Memanggil package dplyr
library(dplyr)

# 1. Menampilkan Sepal.Length saja
sepal_length <- select(iris, Sepal.Length)
print(sepal_length)

# 2. Melihat tipe data setiap kolom
str(iris)

# 3. Membuat variabel turunan
# Sepal.Width > 3 = Besar
# Sepal.Width <= 3 = Kecil
iris <- iris %>%
  mutate(turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil"))
print(iris)

# 4. Mengubah nama turunan menjadi sepal
iris <- iris %>%
  rename(sepal = turunan)
print(iris)

# 5. Mengambil species virginica dengan sepal Besar
iris_virginica_besar <- filter(iris,Species == "virginica" & sepal == "Besar")
print(iris_virginica_besar)

# 6. Mengecek jumlah species
table(iris$Species)


# 7. Memecah iris menjadi 3 data frame berdasarkan species
# Membuat data frame khusus species setosa
df_iris_setosa <- filter(iris, Species == "setosa")
# Membuat data frame khusus species versicolor
df_iris_versicolor <- filter(iris, Species == "versicolor")
# Membuat data frame khusus species virginica
df_iris_virginica <- filter(iris, Species == "virginica")
# Menampilkan hasil
print(df_iris_setosa)
print(df_iris_versicolor)
print(df_iris_virginica)

# 8. Mengurutkan masing-masing data frame
df_iris_setosa <- arrange(df_iris_setosa, Sepal.Width)
# Mengurutkan data versicolor berdasarkan Sepal.Width
df_iris_versicolor <- arrange(df_iris_versicolor, Sepal.Width)
# Mengurutkan data virginica berdasarkan Sepal.Width
df_iris_virginica <- arrange(df_iris_virginica, Sepal.Width)
# Menampilkan hasil
print(df_iris_setosa)
print(df_iris_versicolor)
print(df_iris_virginica)
