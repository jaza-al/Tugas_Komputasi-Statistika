#vektor numerik 
v_num <- c(1, 2, 3, 4, 5)
v_num

#vektor integer 
v_int <- c(5L, 4L, 3L, 2L, 1L)
v_int

#vektor logical
V_log <- c(T,F,F,T)

#matrix
mat <- matrix(1:9, 3, 3, T)
mat

#array
arr <- array(1:6, dim = c(2,3))
arr

#data frame
datF <- data.frame(
  nama = c("jaza","fifa","taqi"),
  umur = c(20, 19, 22),
  nilai = c(90, 80, 95),
  lulus = c(T, F, T)
)
datF

#list
outlist <- list(
  vektor_numerik = v_num,
  integer = v_int,
  data_frame = datF,
  inner = list(
    inVnum = c(1:10),
    inint = c(1L, 9L, 2L, 8L),
    inDatf = data.frame(
      nama = "jaza",
      umur = 20,
      status = T
    )
  )
)
outlist      
