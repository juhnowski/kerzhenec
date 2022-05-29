library(readr)
library(ggplot2)
setwd("C:/Users/IlyaYukhnovskiy/Documents/электропроводность/")    

Boloto_mean <- read_delim("Boloto.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_mean <- read_delim("Kalach.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_mean <- read_delim("Ker.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_mean <- read_delim("Kolodec.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_mean <- read_delim("Krug.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_mean <- read_delim("Nrust.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_mean <- read_delim("Vi.txt.mean.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Boloto_delta <- read_delim("Boloto.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_delta <- read_delim("Kalach.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_delta <- read_delim("Ker.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_delta <- read_delim("Kolodec.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_delta <- read_delim("Krug.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_delta <- read_delim("Nrust.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_delta <- read_delim("Vi.txt.delta.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Boloto_mediana <- read_delim("Boloto.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_mediana <- read_delim("Kalach.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_mediana <- read_delim("Ker.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_mediana <- read_delim("Kolodec.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_mediana <- read_delim("Krug.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_mediana <- read_delim("Nrust.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_mediana <- read_delim("Vi.txt.median.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

ggplot() +
  geom_smooth(data = Boloto_mean, aes(x = Boloto_mean$X1, y = Boloto_mean$X2), color = "brown4") + 
  geom_smooth(data = Boloto_mediana, aes(x = Boloto_delta$X1, y = Boloto_delta$X2), color = "deepskyblue")
ggsave("Boloto_stat.png")

ggplot() +
  geom_smooth(data = Kalach_mean, aes(x = Kalach_mean$X1, y = Kalach_mean$X2), color = "brown4") + 
  geom_smooth(data = Kalach_mediana, aes(x = Kalach_delta$X1, y = Kalach_delta$X2), color = "deepskyblue")
ggsave("Kalach_stat.png")

ggplot() +
  geom_smooth(data = Ker_mean, aes(x = Ker_mean$X1, y = Ker_mean$X2), color = "brown4") + 
  geom_smooth(data = Ker_mediana, aes(x = Ker_delta$X1, y = Ker_delta$X2), color = "deepskyblue")
ggsave("Ker_stat.png")

ggplot() +
  geom_smooth(data = Kolodec_mean, aes(x = Kolodec_mean$X1, y = Kolodec_mean$X2), color = "brown4") + 
  geom_smooth(data = Kolodec_mediana, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X2), color = "deepskyblue")
ggsave("Kolodec_stat.png")

ggplot() +
  geom_smooth(data = Krug_mean, aes(x = Krug_mean$X1, y = Krug_mean$X2), color = "brown4") + 
  geom_smooth(data = Krug_mediana, aes(x = Krug_delta$X1, y = Krug_delta$X2), color = "deepskyblue")
ggsave("Krug_stat.png")

ggplot() +
  geom_smooth(data = Nrust_mean, aes(x = Nrust_mean$X1, y = Nrust_mean$X2), color = "brown4") + 
  geom_smooth(data = Nrust_mediana, aes(x = Nrust_delta$X1, y = Nrust_delta$X2), color = "deepskyblue")
ggsave("Nrust_stat.png")

ggplot() +
  geom_smooth(data = Vi_mean, aes(x = Vi_mean$X1, y = Vi_mean$X2), color = "brown4") + 
  geom_smooth(data = Vi_mediana, aes(x = Vi_delta$X1, y = Vi_delta$X2), color = "deepskyblue")
ggsave("Vi_stat.png")


ggplot() +
  geom_smooth(data = Vi_delta, aes(x = Vi_delta$X1, y = Vi_delta$X2), color = "brown4") + 
  geom_smooth(data = Vi_delta, aes(x = Vi_delta$X1, y = Vi_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Vi_delta, aes(x = Vi_delta$X1, y = Vi_delta$X4), color = "deeppink") + 
  geom_smooth(data = Vi_delta, aes(x = Vi_delta$X1, y = Vi_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Vi_delta, aes(x = Vi_delta$X1, y = Vi_delta$X6), color = "darkorchid1") 
ggsave("Vi_delta.png")

ggplot() +
  geom_smooth(data = Nrust_delta, aes(x = Nrust_delta$X1, y = Nrust_delta$X2), color = "brown4") + 
  geom_smooth(data = Nrust_delta, aes(x = Nrust_delta$X1, y = Nrust_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Nrust_delta, aes(x = Nrust_delta$X1, y = Nrust_delta$X4), color = "deeppink") + 
  geom_smooth(data = Nrust_delta, aes(x = Nrust_delta$X1, y = Nrust_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Nrust_delta, aes(x = Nrust_delta$X1, y = Nrust_delta$X6), color = "darkorchid1") 
ggsave("Nrust_delta.png")

ggplot() +
  geom_smooth(data = Boloto_delta, aes(x = Boloto_delta$X1, y = Boloto_delta$X2), color = "brown4") + 
  geom_smooth(data = Boloto_delta, aes(x = Boloto_delta$X1, y = Boloto_delta$X3), color = "deepskyblue")
ggsave("Boloto_delta.png")

ggplot() +
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X2), color = "brown4") + 
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X4), color = "deeppink") + 
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X6), color = "darkorchid1") +
  geom_smooth(data = Kalach_delta, aes(x = Kalach_delta$X1, y = Kalach_delta$X7), color = "coral4") 
ggsave("Kalach_delta.png")

ggplot() +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X2), color = "brown4") + 
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X4), color = "deeppink") + 
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X6), color = "darkorchid1") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X7), color = "coral4") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X8), color = "deeppink2") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X9), color = "darkorchid3") +
  geom_smooth(data = Ker_delta, aes(x = Ker_delta$X1, y = Ker_delta$X10), color = "blue4") 
ggsave("Ker_delta.png")

ggplot() +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X2), color = "brown4") + 
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X4), color = "deeppink") + 
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X6), color = "darkorchid1") +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X7), color = "coral4") +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X8), color = "deeppink2") +
  geom_smooth(data = Kolodec_delta, aes(x = Kolodec_delta$X1, y = Kolodec_delta$X9), color = "blue4") 
ggsave("Kolodec_delta.png")

ggplot() +
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X2), color = "brown4") + 
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X3), color = "deepskyblue") +
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X4), color = "deeppink") + 
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X5), color = "darkseagreen4") +
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X6), color = "darkorchid1") +
  geom_smooth(data = Krug_delta, aes(x = Krug_delta$X1, y = Krug_delta$X7), color = "coral4") 
ggsave("Krug_delta.png")

 # test call
 # Rscript data_stat.r
