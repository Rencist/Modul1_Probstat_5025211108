## No. 1

  # Poin A
  p = 0.2
  x = 3
  P = dgeom(x, p)
  P
  
  # Poin B
  n = 10000
  mean(rgeom(n, prob = p) == 3)
  
  # Poin C
    # Penjelasan terdapat pada Readme.md
  
  # Poin D
  n = 10000
  hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
  
  # Poin E
  mean = 1 / p
  mean
  varian = (1 - p) / (p ^ 2)
  varian


## No. 2
  
  n = 20
  p = 0.2
  
  # Poin A
  x = 4
  dbinom(x, n, p)
  
  # Poin B
  hist(rbinom(x, n, p), xlab = "x", ylab = "frekuensi", main = "Histogram Distribusi Binomial")
  
  # Poin C
  mean = n * p
  mean
  variance = n * p * (1 - p)
  variance 


## No. 3
  
  lambda = 4.5
  
  # Poin A
  x = 6
  dpois(x, lambda)
  
  # Poin B
  x = 6
  n = 356
  hist(rpois(n, lambda), main = "Histogram Poisson")
  
  # Poin C
  # Jawaban penjelasan soal pada file readme.md
  
  # Poin D
  mean = variance = lambda
  mean
  variance 


## No. 4
  
  x = 2
  v = 10
  
  # Poin A
  dchisq(x, 10)
  
  # Poin B
  n = 100
  hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Chi - Square")
  
  # Poin C
  mean = v
  mean
  variance = 2 * v
  variance 


## No. 5
  
  lambda = 3
  
  # Poin A
  dexp(1, lambda)
  
  # Poin B
  hist(rexp(10, lambda), main = "Histogram Exponential 10 bilangan random")
  hist(rexp(100, lambda), main = "Histogram Exponential 100 bilangan random")
  hist(rexp(1000, lambda), main = "Histogram Exponential 1000 bilangan random")
  hist(rexp(10000, lambda), main = "Histogram Exponential 10000 bilangan random")
  
  # Poin C
  set.seed(1)
  n = 100
  mean(rexp(n, lambda))
  sd(rexp(n,lambda)) ^ 2


## No. 6
  
  n = 100
  mean = 50
  sd = 8
  
  # Poin A
  data = rnorm(n, mean, sd)
  data
  summary(data)
  p = pnorm(runif(1, mean, max(data)), mean, sd) - pnorm(runif(1, min(data), mean), mean, sd)
  p
  plot(data)
  
  # Poin B
  breaks = 50
  hist(data, breaks, main = "5025211108_M. Dafian Zaki Akhdan_Probstat_A_DNhistogram")
  
  # Poin C
  varian = (sd(data)) ^ 2
  varian