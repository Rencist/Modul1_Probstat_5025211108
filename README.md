<br />

# **Praktikum Modul 1_Probstat_5025211108**

> Nama : M. Dafian Zaki Akhdan\
> NRP : 5025211108

<br />

## No 1

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

- ### Poin A

  Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?

  Penyelesaian dari masalah ini bisa kita selesaikan menggunakan cara distribusi geometrik, di bahasaa R kita menggunakan bantuan fungsi `dgeom()` yang mana fungsinya adalah untuk mencari probabilitas hasil gagal sebelum keberhasilan pertama. Menggunakan fungsi tersebut didapatkan hasil `P = 0.1024`. Cara penggunaan fungsi tersebut adalah `dgeom(x, p)` dimana `x` adalah sampel orang yg gagal sebelum keberhasilan pertama dan `p` adalah peluang keberhasilan.

  ```R
  ## No. 1 Poin A

  p <- 0.2
  x <- 3
  P <- dgeom(x, p)
  P
  ```

  Didapat hasil :
  ![2022-10-11 (16)](https://user-images.githubusercontent.com/91055469/195137473-a7e92c02-f4b2-46f7-aad8-123ff6aec0ed.png)

<br />

- ### Poin B

  Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi Geometrik acak () == 3)!

  Penyelesaian masalah ini bisa kita selesaikan dengan menggunakan rumus fungsi mean dan distribusi geometri acak, yang mana kita membutuhkan bantuan fungsi `mean` dan `rgeom`. Dari fungsi tersebut didapat hasil mean nya random dengan 3 kali percobaan didapat rata - rata `mean = 0.1032`. Cara penggunaan fungsi nya dalah `mean(rgeom(n, p) == 3)` dimana `n` adalah total data random dan `p` adalah peluang berhasil.

  ```R
  ## No. 1 Poin B
  n <- 10000
  mean(rgeom(n, prob = p) == 3)
  ```

  Didapat hasil :
  ![2022-10-11 (19)](https://user-images.githubusercontent.com/91055469/195139470-2624be45-a2c4-4743-b876-dce54ca9d67f.png)

<br />

- ### Poin C

  Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

  Dari percobaan yang dilakukan hasil dari poin A dan poin B memiliki perbedaan, dilihat bahwa hasil dari poin A selalu tetap dan tidak berubah, sedangkan hasil dari poin B selalu berubah - ubah seiring dengan nilai random yang didapat.

 <br />

- ### Poin D

  Histogram distribusi Geometrik, dengan peluang X = 3 gagal sebelum sukses pertama.

  Untuk mendapatkan histogram kita membutuh kan bantuan dari fungsi `hist()` dan didalamnya kita gunakan parameter random geometrik.

  ```R
  ## No. 1 Poin D
  n = 10000
  hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
  ```

  Didapat hasil :
  ![2022-10-11 (20)](https://user-images.githubusercontent.com/91055469/195140725-f7ca5c3d-f644-43e3-aff0-3e5217f96c0a.png)

<br />

- ### Poin E

  Nilai rataan (μ) dan varian (σ²) dari distribusi geometrik.

  Untuk rataan (μ) didapat dari banyak data _ peluang dan untuk varian didapat dari mean _ komplemen peluang.

  ```R
  ## No.1 Poin E
  mean = 1 / p
  mean
  varian = (1 - p) / (p ^ 2)
  varian
  ```

  Didapat hasil :
  ![2022-10-11 (22)](https://user-images.githubusercontent.com/91055469/195141508-ce0e720f-309a-4fc1-bbb0-d10610f67818.png)

<br>
<br>

## No 2

Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.

- ### Poin A

  Peluang terdapat 4 pasien yang sembuh.

  Untuk menyelesaikan permasalahan ini digunakan distribusi binomial dengan bantuan fungsi `dbinom()` dengan parameter `x` pasien sembuh, `n` total pasien, dan `p` peluang pasien sembuh.

  ```R
  ## No. 2 Poin A
  n = 20
  p = 0.2
  x = 4
  dbinom(x, n, p)
  ```

  Didapaat hasil :
  ![2022-10-11 (24)](https://user-images.githubusercontent.com/91055469/195151359-56e5f753-e89f-4803-a75e-e6f676ee604a.png)

<br />

- ### Poin B

  Gambarkan grafik histogram berdasarkan kasus tersebut.

  Untuk menggambarkan grafik histogram kita menggunakan bantuan fungsi `hist()` dengan parameter fungsi distribusi binomial `dist()`.

  ```R
  ## No. 2 Poin B
  hist(rbinom(x, n, p), xlab = "x", ylab = "frekuensi", main = "Histogram Distribusi Binomial")
  ```

  Diperoleh hasil :
  ![2022-10-11 (24)](https://user-images.githubusercontent.com/91055469/195151853-409935ed-5c2f-4788-92d1-1f32bf22e95e.png)

<br />

- ### Poin C

  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

  Untun mendapatkan rataan menggunakan cara banyak data dikali peluang kejadian sedangkan untuk mendapatkan varian menggunakan cara rumus rataan dikali dengan komplemen peluang kejadian.

  ```R
  ## No. 2 Poin C
  mean = n * p
  mean
  variance = n * p * (1 - p)
  variance
  ```

  Diperoleh hasil :
  ![2022-10-11 (26)](https://user-images.githubusercontent.com/91055469/195152441-52d404fb-cb6a-402d-844b-5aab87320254.png)

<br>
<br>

## No 3

Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

- ### Poin A

  Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

  Penyelesaian dari masalah tersebut bisa kita selesaikan dengan menggunakan distribusi poisson dan menggunakan bantuan dari fungsi `dpois()` yang isi parameternya adalah `x` total data dan `lambda` rata - rata.

  ```R
  ## No. 3 Poin A
  lambda = 4.5
  x = 6
  dpois(x, lambda)
  ```

  Diperoleh hasil :
  ![2022-10-11 (28)](https://user-images.githubusercontent.com/91055469/195153687-06e65cf9-3c47-4e02-9fbf-162e214826f3.png)

<br />

- ### Poin B

  simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

  Untuk membuat histogram kita menggunakan bantuan dari fungsi `his()` yang isi parameter nya adalah fungsi poisson sebagai distribusi acak `rpois()` sehingga hasilnya akan selalu berbeda.

  ```R
  ## No. 3 Poin B
  x = 6
  n = 356
  hist(rpois(n, lambda), main = "Histogram Poisson")
  ```

  Didapat hasil :
  ![2022-10-12](https://user-images.githubusercontent.com/91055469/195155948-7e78ad52-9c11-4171-831f-639fa39fc662.png)

<br />

- ### Poin C

  Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?

  Hasil dari poin A akan selalu tetap dan hasil dari poin B akan selalu berubah ubah, namun hasil dari kedua nya tidak banyak berbeda. Nilai dari poin A dan poin B cenderung sama dikarenakan nilai range dari keduanya beririsan satu sama lain. Maka dari itu hasil random selama 365 hari akan memberikan hasil yang cenderung sama dengan hari besok.

<br />

- ### Poin D

  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

  Lambda yang telah kita ketahui dari soal merupakan rerata dan untuk variance di distribusi poisson hasilnya sama dengan rerata.

  ```R
  ## No. 3 Poin D
  mean = variance = lambda
  mean
  variance
  ```

  Diperoleh hasil :
  ![2022-10-12 (2)](https://user-images.githubusercontent.com/91055469/195157022-3c53ed7e-af1f-49fa-8843-b104a8bc913f.png)

<br>
<br>

## No 4

Diketahui nilai x = 2 dan v = 10.

- ### Poin A

  Fungsi Probabilitas dari Distribusi Chi-Square.

  Jawaban dari persoalan ini adalah dengan menggunakan distribusi chi-square dan kita menggunakan bantuan dari fungsi `dchisq()` dimana parameternya adalah `x` total data dan `v` bilangan bulat positif.

  ```R
  ## No. 3 Poin A
  x = 2
  v = 10
  dchisq(x, 10)
  ```

  Didapat hasil :
  ![2022-10-12 (5)](https://user-images.githubusercontent.com/91055469/195158004-76a60829-da1e-4a25-b47c-898fe87ed623.png)

<br />

- ### Poin B

  Histogram dari Distribusi Chi-Square dengan 100 data random.

  Untuk membuat histogram membutuhkan bantuan dari fungsi `hist()` dengan parameter fungsi random chi-square `rchisq()`.

  ```R
  ## No. 4 Poin B
  n = 100
  hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Histogram Chi - Square")
  ```

  Didapat hasil :
  ![2022-10-12 (6)](https://user-images.githubusercontent.com/91055469/195158387-c5dbc13a-d436-4e9c-a795-dbbfbb6aa2ec.png)

<br />

- ### Poin C

  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

  Penyelesaian dari masalah ini adalah menggunakan rumus mean = v dan varian = 2 \* v.

  ```R
  ## No. 4 Poin C
  mean = v
  mean
  variance = 2 * v
  variance
  ```

  Didapat hasil :
  ![2022-10-12 (8)](https://user-images.githubusercontent.com/91055469/195158890-58831c95-2837-4a72-a106-bd4b59a44225.png)

<br>
<br>

## No 5

Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).

- ### Poin A

  Fungsi Probabilitas dari Distribusi Exponensial.

  Penyelesaian dari masalah ini adalah menggunakan distribusi exponensial yaitu dengan bantuan dari fungsi `dexp()` dengan isi parameternya adalah total data random dan `λ` lambda.

  ```R
  ## No. 5 Poin A
  lambda = 3
  dexp(1, lambda)
  ```

  Didapat hasil :
  ![2022-10-12 (10)](https://user-images.githubusercontent.com/91055469/195160771-3917ad17-c040-4b44-82dc-741e2a160046.png)

<br />

- ### Poin B

  Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.

  Untuk mendapatkan histogram kita memerlukan bantuan dari fungsi `hist()` yang isi parameternya adalah distribusi random exponensial `rexp()`.

  ```R
  ## No. 5 Poin B
  hist(rexp(10, lambda), main = "Histogram Eksponensial 10 bilangan random")
  hist(rexp(100, lambda), main = "Histogram Eksponensial 100 bilangan random")
  hist(rexp(1000, lambda), main = "Histogram Eksponensial 1000 bilangan random")
  hist(rexp(10000, lambda), main = "Histogram Eksponensial 10000 bilangan random")
  ```

  Didapatkan hasil :
  ![2022-10-12 (14)](https://user-images.githubusercontent.com/91055469/195161380-88cad4ca-0c02-4f73-aab9-61d0db722f90.png)
  ![2022-10-12 (15)](https://user-images.githubusercontent.com/91055469/195161394-6315c0e0-5cb2-482c-ba26-94c025eb6d76.png)
  ![2022-10-12 (16)](https://user-images.githubusercontent.com/91055469/195161408-77b64d72-3ced-4d8a-b875-56872cf0422f.png)
  ![2022-10-12 (18)](https://user-images.githubusercontent.com/91055469/195161417-3e44043c-3f78-4db2-bf07-ed53f2fdb15e.png)

<br />

- ### Poin C

  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
  Petunjuk:
  Gunakan set.seed(1)
  Gunakan fungsi bawaan R

  Sesuai yang telah disampaikan di petunjuk sebelum mencari rerata dan varian nya kita gunakan terlebih dahulu fungsi `set.seed(1)`. Untuk mencari rerata kita menggunakan bantuan fungsi `mean()` yang isi parameternya adalah distribusi random eksponensial, dan untuk varianya kita menggunakan fungsi `sd()` yang isi parameternya distribusi random eksponensial kemudian dikuadratkan.

  ```R
  ## No. 5 Poin C
  set.seed(1)
  n = 100
  mean(rexp(n, lambda))
  sd(rexp(n,lambda)) ^ 2
  ```

  Didapat hasil :
  ![2022-10-12 (20)](https://user-images.githubusercontent.com/91055469/195162504-ca5eca4a-73ec-40ad-83bb-d2e9bb43ba62.png)

<br>
<br>

## No 6

Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.

- ### Poin A

  Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
  Keterangan :
  X1 = Dibawah rata-rata
  X2 = Diatas rata-rata
  Contoh data :
  1,2,4,2,6,3,10,11,5,3,6,8
  rata-rata = 5.083333
  X1 = 5
  X2 = 6

  Untuk menyelesaikan permasalahan ini langkah pertama yang perlu dilakukan adalah kita perlu menghasilkan data - data yang diperlukan dari data yang tersedia menggunakan bantuan fungsi `rnorm()` yang mana parameternya adalah `n`, `mean`, dan `sd`. Langkah berikutnya kita membutuhkan bantuan fungsi `runif()` untuk memperoleh random deviates dari `max(data)` dan `min(data)`. Hasil dari random deviates tadi kemudian menjadi parameter dari fungsi rnrom() yang mana digunakan untuk mencari probabilitas yang ditanyakan. sedangkan untuk plot data dalam bentuk grafik kita menggunakan fungsi `plot()` dengan parameter `data`.

  ```R
  ## No. 6 Poin A

  n = 100
  mean = 50
  sd = 8
  data = rnorm(n, mean, sd)
  data
  summary(data)
  p = pnorm(runif(1, mean, max(data)), mean, sd) - pnorm(runif(1, min(data), mean), mean, sd)
  p
  plot(data)
  ```

  Didapatkan hasil :
  ![2022-10-12 (22)](https://user-images.githubusercontent.com/91055469/195168891-470d87ec-2b7c-489a-bf2f-9125f4f7354b.png)

<br />

- ### Poin B

  Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
  NRP*Nama_Probstat*{Nama Kelas}\_DNhistogram
  Contoh :
  312312312_Rola_Probstat_A_DNhistogram

  Untuk mendapatkan histogram kita membutuhkan fungsi `hist()` yang isi parameternya adalah `data` dan `breaks` yang mana diketahui dari soal.

  ```R
  ## No. 6 Poin B
  breaks = 50
  hist(data, breaks, main = "5025211108_M. Dafian Zaki Akhdan_Probstat_A_DNhistogram")
  ```

  Didapatkan hasil :
  ![2022-10-12 (23)](https://user-images.githubusercontent.com/91055469/195169030-2ba6dbd5-53ba-49eb-98c2-6a9dbd564301.png)

<br />

- ### Poin C

  Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

  Untuk mendapatkan varian kita memerlukan bantuan dari fungsi `sd()` yang parameternya `data` kemudian hasil dari fungsi itu kita kuadratkan.

  ```R
  ## No. 6 Poin C
  varian = (sd(data)) ^ 2
  varian
  ```

  Didapat hasil :
  ![2022-10-12 (25)](https://user-images.githubusercontent.com/91055469/195169509-b7366bed-5b74-4b50-a7c6-bfa3b8b67614.png)

<br />
<br />

# <div style="text-align: center"> Sekian dan Terima Kasih </div>
