# Tugas_Komputasi-Statistika
#1. vektor numeric
V_num <- c(1:9)
print(V_num)

#2. Vektor integer
V_int <- c(1L, 2L, 3L, 4L, 5L)
print(V_int)

#3. Vektor logical
V_log <- c(F, T, F, T, F)
print(V_log)

#4. Matrix
Mat <- matrix(1:16, 4, 4, T)
print(Mat)

#5. Array
Arr <- array(1:27, dim = c(3,3,3))
print(Arr)

#Data frame
datF <- data.frame(
  nama = c("Jaza","Fifa","Taqi","Wildo"),
  nilai = c(100, 90, 80, 85),
  lulus = c(T, T, F, T)
)
print(datF)

#List
MyList <- list(
  numeric = V_num,
  integer = V_int,
  data_frame = datF
)
print(MyList)
