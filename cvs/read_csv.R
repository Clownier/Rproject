my_data = read.csv(file.choose(),fill = TRUE,stringsAsFactors = FALSE)

list3 = my_data[3]
list3 = list3[-1,-2]
list3 = list3[-1]
list3 = as.numeric(list3)
ava = mean(list3)
