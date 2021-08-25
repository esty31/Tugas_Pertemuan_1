%1.	Definisikan vektor dan matriks berikut ini di dalam MATLAB:
    ( 10  20  30  40 )    -5         1     3     5     0
                          -15        3     1     3     5
                          -40        5     3     1     3	
                                     0     5     3     1
    ?	vektor_1 = [10  20  30  40]
      vektor_1 =
                 10 20 30 40
    ?	vektor_2 = [-5;
                      -15;
                      -40]
      vektor_2 = -5
 		             -15
 		             -40
    ?	matriks  =[1 3 5 0;
                3     1     3     5;
                5     3     1     3;
                0     5     3     1]
      matriks  =
                1          3           5           0
                3          1           3           5
                5          3           1           3
                0          5           3           1
%2.	Gabungkan matriks A dan B berikut ini:
    A=[4 8;2 4], B=[1 1;1 –1]
    A =
       4     8
       2     4
    B =
       1     1
       1    -1
    ?	C = [A   B]
      C = 4    8    1    1
          2    4    1   -1 
    ?	W =[B  B ; B – B]
      W = 1    1    1    1
          1   -1    1   -1
          1    1   -1   -1
          1   -1   -1    1
%3.	Hitunglah:
a. Masing-masing ukuran vektor/matriks pada soal no.1 dan no. 2 di atas
b. Masing-masing jumlah elemen vektor/matriks pada soal no.1 dan no.2 di atas.
a) >> size (vektor_1), size (vektor_2), size (matriks)	
   ans = 1   4
   ans = 3   1
   ans = 4   4
   Sehingga ukuran vektor/matriks ialah masing-masing:
   1×4, 3×1, dan 4×4.
b) >> prod (size (vektor_1)), ...
   prod (size (vektor_2)), prod (size (matriks))
   ans = 4
   ans = 3
   ans = 16
%4.	Buatlah matriks-matriks berikut dengan command ones, zeros, dan eye:
         5    0    0    0               5   5   0   0
         0    5    0    0               5   5   0   0
         0    0    5    0               -5  0   0   5
         0    0    0    5               0   -5  5   0
    >> 5. *eye(4)
    ans =5    0    0    0
         0    5    0    0
         0    0    5    0
         0    0    0    5
    >> [5. *ones (2), zeros (2);
    -5.*eye(2), 5.*(ones(2) – eye (2))]
    ans =5    5    0    0
         5    5    0    0
        -5    0    0    5
         0   -5    5    0
%5.	Buatlah vektor berukuran 100 berisi bilangan acak gaussian dengan mean = 1 dan variansi = 0,2.
    >> bil_acak = sqrt (0 . 2). *randn (1, 100) + 1
%6.	Buatlah matriks M berikut ini:
    >> M = [1   5 : 5 :20 ; 2.^ [0:4] ; -3 : 3 : 9; 2.^ [5 : -1 : 1];
    5   –5    5   –5    5]
    Buatlah vektor / matriks baru berisi:
- baris pertama dari M
- kolom ketiga dari M
- baris ketiga hingga kelima, kolom kedua hingga keempat
  dari M
- elemen pada diagonal utama dari M
M =
    1    5   10   15   20
    1    2    4    8   16
   -3    0    3    6    9
    32	16    8    4    2
                                 5     -5     5     -5     5
>> M (1, : )
   ans =
         1    5    10    15    20
>> M (: ,3 )
   ans =
         10
          4
          3
          8
          5 
>> M (3 : 5, 2 : 4)
   ans =
         0    3    6
         16   8    4
         -5   5   -5
>> [M (1 , 1) M (2 ,2 ) M (3 , 3) M (4 ,4 ) M (5 , 5)]
   ans = 1    2    3     4     5
%7.	Buatlah deret berikut ini dengan operator titik-dua, linspace,
    dan logspace:
       x = -10, -9, -8, ... , 8, 9, 10
       y = 7,5 , 7,0 , 6,5 , 6,0 , ... , 0,5 , 0
       z = 1, 4, 7, 10, 13, ... , 100
       w = 0,001 , 0,01 , 0,1 , 1 , 10 , ... , 106
    >> x = -10:10
    >> y = 7.5:-0.5:0
    >> z = 1:3:100
    >> format long
    >> w = logspace (-3,6,10)
    >> format short
%8.	Buatlah matriks N yang berisi kolom pertama hingga keempat dari matriks M pada no.6 di atas. Bentuk-ulang matriks N tersebut menjadi matriks baru seperti berikut ini:
- kolom pertama ditukar dengan kolom keempat, kolom kedua ditukar dengan kolom ketiga
- baris pertama ditukan dengan baris kelima, baris kedua ditukar dengan baris keempat
- matriks berukuran 10×2
- matriks berukuran 4×5
>> N = M (: , 1 : 4)
   N = 1   5   10   15
       1   2    4    8
      -3   0    3    6
      32  16    8    4
      5   -5    5   -5
>> fliplr (N)
>> flipud (N)
>> reshape (N, 10 , 2)
>> reshape (N, 4, 5)

























