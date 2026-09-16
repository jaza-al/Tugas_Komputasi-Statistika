library(dplyr)

# Membuat dataframe contoh
data_pasien <- data.frame(
  id = 1:5,
  nama = c("Budi", "Siti", "Ahmad", "Dewi", "Rudi"),
  umur = c(25, 32, 45, 29, 51),
  tekanan_darah = c(120, 118, 132, 124, 140)
)

# Menambahkan variabel baru 'kategori_umur'
data_pasien <- data_pasien %>%
  mutate(
    kategori_umur = ifelse(umur > 40, "Dewasa Tua", "Dewasa Muda")
  )

# Cara alternatif dengan base R ($ dan with())
data_pasien$kategori_umur_std <- with(data_pasien, ifelse(umur > 40, "Dewasa Tua", "Dewasa Muda"))

# Melihat hasilnya
head(data_pasien)

# Mengubah variabel numerik 'usia' menjadi string
data_pasien$usia_string <- as.character(data_pasien$usia)

# Memeriksa tipe data dari kedua variabel
str(data_pasien)