# Distribusi Poisson
lambda <- 3
P <- 1 - ppois(4, lambda)
P

x <- 0:15
pmf <- dpois(x, lambda)

plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "Distribusi Poisson (lambda = 3)",
     xlab = "Jumlah pelanggan (X)",
     ylab = "P(X = x)")


# Distribusi Hipergeometrik
# Parameter
N <- 100
K <- 20
n <- 10

# Distribusi jumlah bola merah
x <- 0:n
pmf <- dhyper(x, K, N - K, n)

# Menampilkan PMF
data.frame(x, pmf)

# Membuat grafik
plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "Distribusi Hipergeometrik",
     xlab = "Jumlah bola merah (X)",
     ylab = "P(X = x)")


# Distribusi Binomial
# Parameter
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan Binomial
set.seed(123)
simulasi <- rbinom(1000, size = n, prob = p)

# Nilai X
x_binom <- 0:n

# PMF teoritis
pmf_binom <- dbinom(x_binom, size = n, prob = p)

plot(x_binom, pmf_binom,
     type = "h",
     lwd = 3,
     main = "PMF Binomial",
     xlab = "Jumlah sukses (k)",
     ylab = "Probabilitas (P(X = k))")

# Histogram hasil simulasi
hist(simulasi,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Simulasi Binomial (n = 15, p = 0.4)",
     xlab = "Jumlah keberhasilan (X)",
     ylab = "Probabilitas")

# Tambah point dan line
points(x_binom, pmf_binom, pch = 19)
lines(x_binom, pmf_binom, lwd = 2)