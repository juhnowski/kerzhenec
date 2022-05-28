args = commandArgs(trailingOnly=TRUE)

library(readr)
library(ggplot2)
setwd("C:/Users/IlyaYukhnovskiy/Documents/электропроводность/")    

if (length(args)==0) {
  stop("At least one argument must be supplied (input csv file).n", call.=FALSE)
} else if (length(args)==1) {
  # default output png file
  args[2] = paste(args[1],".png")
} 

data <- read_delim(args[1], delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
ggplot(data) +
      geom_point(aes(x = data$X1, y= data$X2))
ggsave(args[2])


 # test call
 # Rscript data_by_year.r Kalach.txt.Y2003.csv __Kalach_txt_Y2003.png 