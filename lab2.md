#lab 2

#Task 1
v <- rnorm(100)
v[10]
for(i in 10:20){
  print(v[i])
}
a=9
v[20:29]
v[v>0]
```{r}

```

#Task 2
y <- data.frame(a=rnorm(100),b=1:100,cc=sample(letters,100,replace = TRUE))
tail(y,10)
y[10:20,]
y[10, 'b']
y[, 'cc']
```{r}

```


#Task 3
z <- c(1,2,3,NA,4,NA,6,7,NA,9,NA,11)
length(z)
mean(z, na.rm = T)
mean(z)
```{r}

```
> #lab 2
  > 
  > #Task 1
  > v <- rnorm(100)
> v[10]
[1] 1.245401
> for(i in 10:20){
  +   print(v[i])
  + }
[1] 1.245401
[1] 2.172563
[1] -0.6475852
[1] -0.1179217
[1] 2.407558
[1] 1.789465
[1] -0.4837009
[1] 1.307233
[1] 0.8573743
[1] 1.780118
[1] -0.1947009
> a=9
> v[20:29]
[1] -0.19470095  1.09412538 -0.06575423  0.70459010  1.02062678 -0.85185120 -1.08935235 -1.66009837 -0.25392237
[10]  0.91855438
> v[v>0]
[1] 1.05723132 0.75353598 0.75845727 1.24540092 2.17256279 2.40755763 1.78946534 1.30723337 0.85737434 1.78011792
[11] 1.09412538 0.70459010 1.02062678 0.91855438 1.06851554 0.83506337 0.36620591 1.13357994 0.26160031 0.06625860
[21] 1.32930090 1.07152039 2.05783404 1.51744630 0.63678403 0.24344427 1.12393375 0.26892761 0.44636041 2.05601351
[31] 0.12297928 0.01075004 0.77143465 0.75124974 0.98330007 0.35146728 0.27274143 0.87619102 0.69352516 1.24664455
[41] 0.87383815 1.09855789 0.64375963 1.11186501
> 
  > #Task 2
  > y <- data.frame(a=rnorm(100),b=1:100,cc=sample(letters,100,replace = TRUE))
> tail(y,10)
a   b cc
91  -0.08216576  91  b
92   0.86791778  92  z
93  -0.41996476  93  z
94  -0.22738241  94  e
95  -0.53742287  95  g
96  -0.05211347  96  f
97   0.99276345  97  z
98   1.04468254  98  m
99   1.61358657  99  c
100  0.48350906 100  q
> y[10:20,]
a  b cc
10  0.9267230 10  f
11  1.3413304 11  v
12  0.7872751 12  w
13  0.6649813 13  f
14  0.4631690 14  p
15  0.3801754 15  i
16 -0.3961459 16  k
17  0.4563341 17  j
18  1.4413993 18  j
19 -0.6682327 19  v
20 -0.3858898 20  n
> y[10, 'b']
[1] 10
> y[, 'cc']
[1] "l" "y" "u" "b" "u" "l" "a" "w" "e" "f" "v" "w" "f" "p" "i" "k" "j" "j" "v" "n" "d" "f" "r" "y" "u" "l" "c" "e" "p"
[30] "x" "h" "h" "a" "c" "h" "e" "h" "a" "w" "q" "t" "e" "m" "e" "i" "g" "z" "b" "i" "h" "p" "z" "r" "q" "j" "o" "q" "w"
[59] "m" "u" "l" "a" "z" "u" "q" "y" "u" "c" "s" "c" "f" "h" "t" "a" "p" "e" "a" "g" "e" "l" "x" "u" "l" "z" "z" "h" "m"
[88] "b" "q" "s" "b" "z" "z" "e" "g" "f" "z" "m" "c" "q"
> 
  > 
  > #Task 3
  > z <- c(1,2,3,NA,4,NA,6,7,NA,9,NA,11)
> length(z)
[1] 12
> mean(z, na.rm = T)
[1] 5.375
> mean(z)
[1] NA

