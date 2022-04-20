# R adalah bahasa yang banyak dikuasai dan menjadi pilihan banyak Data Scientist dunia karena penggunaannya yang cukup mudah di bandingkan bahasa lain seperti Java. Pemula sangat disarankan untuk memulai dengan R untuk mempelajari basic dari Data Science itu sendiri.
# Jika ingin coding dengan R, baik pemula maupun profesional, sangat disarankan menggunakan R Studio dengan UI yang ramah bagi user.

# ---------------------------------------------------------------------------------------------------------------------

# VEKTOR
# Vektor adalah variable yang dapat memuat lebih dari satu data (mirip array). Syntax nya adalah sebagai berikut:
# Elemen -> c(1,2,3,4,5)				--> syntax paling dasar
# Rentang -> 2:7						--> mengurutkan angka dari 2 sampai 7
# Urutan -> seq(from=1, to=7, by=1)		--> mengurutkan angka dari 1 sampai 7 dengan selisih 1
#			seq(1,7,1)					--> shortcut untuk vektor urutan
# Ulang -> rep(1, times=10)				--> mengulangi angka 1 sampai 10 kali
#		   rep(1,10)					--> shortcut untuk vektor pengulangan

# Vektor dapat menggunakan operasi aritmetika jika jumlah elemen antara 2 vektor sama banyak.
vektor1 = c(2,4,6,8) * 3				# setiap elemen vektor dikali dengan 3 sehingga hasilnya (6,12,18,24)
vektor2 = c(1,2,3,4)
vektor1 + vektor2						# setiap elemen vektor1 akan dijumlahkan tunggal dengan elemen vektor2 sehingga hasilnya (3,6,9,12)
vektor3 = c(6,7)
vektor1 - vektor3						# akan ERROR dikarenakan jumlah elemen vektor1 tidak sama dengan jumlah elemen vektor3
vektor4 = c("Data", "Big", 9)			# angka 9 akan dianggap sebagai string seperti elemen lainnya sehingga jika dioperasikan dengan aritmatika akan menghasilkan ERROR

# ---------------------------------------------------------------------------------------------------------------------

# MATRIKS
# Matriks adalah angka yang disusun menjadi baris dan kolom. Syntax nya adalah sebagai berikut.

mat = matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)
# Hasil nya akan membentuk matriks ordo 3x3 seperti berikut.
# 		(,1)	(,2)	(,3)
#(1,)	 1		 2		 3
#(2,)	 4		 5		 6
#(1,)	 7		 8		 9
# nrow merupakan attribute yang menentukan jumlah baris yang kita inginkan. Apabila elemen matriks tidak penuh sesuai ordo, maka akan terjadi ERROR.
# byrow merupakan attribute yang menentukan posisi urutan elemen matriks. Jika value TRUE, maka elemen matriks akan disusun dari kiri ke kanan sampai penuh. Jika FALSE, maka elemen akan disusun dari atas ke bawah.

# Pengambilan data matriks dapat dilakukan seperti berikut.
matA = mat(1,3)					# Mengambil elemen di baris pertama, kolom ketiga yaitu 3
matB = mat((1:2),3)				# Mengambil elemen di baris pertama dan kedua di kolom ketiga, yaitu 3 dan 6

# Matriks dapat digunakan dengan operasi aritmatika.
mat * 3							# Setiap elemen dalam matriks akan dikalikan dengan 3

mat1 = matrix(c(2,3,4,5,6,7,8,9,10), nrow=3, byrow=FALSE)
mat * mat1
# Setiap elemen dalam kedua matriks akan dikalikan masing-masing sesuai posisinya. Apabila kedua matriks tidak sama jumlah elemennya, maka akan terjadi ERROR.

# ---------------------------------------------------------------------------------------------------------------------

# OPERASI PADA DATA NUMERIK DAN FAKTOR
# Di dalam Machine Learning, kita mengenal 2 jenis data, yaitu data kontinu (linear) dan data diskrit (logistik / categorical).
# Faktor merupakan tipe data kategorikal/diskrit, bukan numerik sehingga tidak dapat digunakan bersamaan dengan operasi aritmatika. Dalam praktiknya, umumnya yang termasuk faktor contohnya seperti data jenis kelamin, alamat rumah, dan sebagainya.

a = c(0,1,2,3,4)   # a merupakan vektor biasa yang bersifat numerical.
b = as.factor(a)   # b adalah faktor yang bersifat categorical/diskrit.

# ---------------------------------------------------------------------------------------------------------------------