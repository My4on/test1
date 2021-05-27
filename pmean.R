getcsv = function(directory, file_id) {
  return(read.csv(paste0(directory, "/", formatC(file_id, width = 3, 
                                                 flag = "0"), ".csv")))
}

# 1. Написати функцію pmean, яка обчислює середнє значення (mean) забруднення 
#сульфатами або нітратами серед заданого переліка моніторів. Ця функція приймає
#три аргументи: «directory», «pollutant», «id». Directory – папка, в якій 
#розміщені дані, pollutant – вид забруднення, id – перелік моніторів. 
#Аргумент id має значення за замовчуванням 1:332. 
#Функція повинна ігнорувати NA значення.

pmean = function(directory, pollutant, id = 1:332) {
  all = NULL
  for (i in id) {
    all = c(all, getcsv(directory, i)[[pollutant]])
  }
  return(mean(all, na.rm = TRUE))
}

# 2. Написати функцію complete, яка виводить кількість повних спостережень 
#(the number of completely observed cases) для кожного файлу. Функція приймає
#два аргументи: «Directory» та «id» та повертає data frame, в якому перший 
#стовпчик – ім’я файлу, а другий – кількість повних спостережень. 

complete = function(directory, id = 1:332) {
  nobs = NULL
  for (i in id) {
    nobs = c(nobs, nrow(na.omit(getcsv(directory, i))))
  }
  return(data.frame(id, nobs))
}

# 3.Написати функцію corr, яка приймає два аргументи: directory (папка, де 
#знаходяться файли спостережень) та threshold (порогове значення, за 
#замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та нітратами
#для моніторів, кількість повних спостережень для яких більше порогового 
#значення. Функція повинна повернути вектор значень кореляцій. Якщо ні один
#монітор не перевищує порогового значення, функція повинна повернути numeric
#вектор довжиною 0. Для обчислення кореляції між сульфатами та нітратами 
#використовуйте вбудовану функцію «cor» з параметрами за замовчуванням. 

corr = function(directory, threshold = 0) {
  corelations = numeric()
  for (i in 1:332) {
    full_obs = na.omit(getcsv(directory, i))
    if (nrow(full_obs) > threshold) {
      corelations = c(corelations, cor(full_obs$sulfate, full_obs$nitrate))
    }
  }
  return(corelations)
}

