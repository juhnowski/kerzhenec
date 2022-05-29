args = commandArgs(trailingOnly=TRUE)

library(readr)
library(ggplot2)
setwd("C:/Users/IlyaYukhnovskiy/Documents/электропроводность/")    

if (length(args)==0) {
  stop("At least one argument must be supplied (input csv file).n", call.=FALSE)
} else if (length(args)==1) {
  # default output png file
  args[2] = paste(args[1],".png")
  args[3] = paste(args[1],"_smooth.png")
} 

# data <- read_delim(args[1], delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
# ggplot(data) +
#       geom_point(aes(x = data$X1, y= data$X2))
# ggsave(args[2])




 # test call
 # Rscript data_all_year.r all.csv all.png all_smooth.png 
 #data <- read_delim("all.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
data <- read_delim(args[1], delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
ggplot(data, aes(x=data$X1)) + 
  geom_line(aes(y = data$X2), color = "deepskyblue") + 
  geom_line(aes(y = data$X3), color="deeppink") + 
  geom_line(aes(y = data$X4), color="darkseagreen4") +
  geom_line(aes(y = data$X5), color="darkorchid1") +
  geom_line(aes(y = data$X6), color="darkolivegreen1") +
  geom_line(aes(y = data$X7), color="darkorchid1") 
ggsave(args[2])


ggplot(data, aes(x=data$X1)) + 
  geom_smooth(aes(y = data$X2), color = "deepskyblue") + 
  geom_smooth(aes(y = data$X3), color="deeppink") + 
  geom_smooth(aes(y = data$X4), color="darkseagreen4") +
  geom_smooth(aes(y = data$X5), color="darkorchid1") +
  geom_smooth(aes(y = data$X6), color="darkolivegreen1") +
  geom_smooth(aes(y = data$X7), color="darkorchid1")
ggsave(args[3])  