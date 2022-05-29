library("dplyr")
library(readr)
library(ggplot2)
setwd("C:/Users/IlyaYukhnovskiy/Documents/электропроводность/")    


Boloto_delta <- read_delim("Boloto.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_delta <- read_delim("Kalach.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_delta <- read_delim("Ker.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_delta <- read_delim("Kolodec.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_delta <- read_delim("Krug.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_delta <- read_delim("Nrust.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_delta <- read_delim("Vi.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Ker_varsum = summary(Ker_delta)
write.csv(Ker_varsum, file = 'Ker_varsum.csv')

Vi_varsum = summary(Vi_delta)
write.csv(Vi_varsum, file = 'Vi_varsum.csv')


Krug_varsum = summary(Krug_delta)
write.csv(Krug_varsum, file = 'Krug_varsum.csv')

Kalach_varsum = summary(Kalach_delta)
write.csv(Kalach_varsum, file = 'Kalach_varsum.csv')

Nrust_varsum = summary(Nrust_delta)
write.csv(Nrust_varsum, file = 'Nrust_varsum.csv')

Kolodec_varsum = summary(Kolodec_delta)
write.csv(Kolodec_varsum, file = 'Kolodec_varsum.csv')

Boloto_varsum = summary(Boloto_delta)
write.csv(Boloto_varsum, file = 'Boloto_varsum.csv')

#Rscript data_summary.r