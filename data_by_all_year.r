library(readr)
library(ggplot2)
setwd("C:/Users/IlyaYukhnovskiy/Documents/электропроводность/")    

Boloto_2002 <- read_delim("Boloto.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Boloto_2003 <- read_delim("Boloto.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Kalach_1998 <- read_delim("Kalach.txt.Y1998.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_1999 <- read_delim("Kalach.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_2000 <- read_delim("Kalach.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_2001 <- read_delim("Kalach.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_2002 <- read_delim("Kalach.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kalach_2003 <- read_delim("Kalach.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Ker_1996 <-read_delim("Ker.txt.Y1996.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_1997 <-read_delim("Ker.txt.Y1997.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_1998 <-read_delim("Ker.txt.Y1998.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_1999 <-read_delim("Ker.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_2000 <-read_delim("Ker.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_2001 <-read_delim("Ker.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_2002 <-read_delim("Ker.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_2003 <-read_delim("Ker.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Ker_2004 <-read_delim("Ker.txt.Y2004.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Kolodec_1996 <- read_delim("Kolodec.txt.Y1996.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_1997 <- read_delim("Kolodec.txt.Y1997.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_1998 <- read_delim("Kolodec.txt.Y1998.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_1999 <- read_delim("Kolodec.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_2000 <- read_delim("Kolodec.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_2001 <- read_delim("Kolodec.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_2002 <- read_delim("Kolodec.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Kolodec_2003 <- read_delim("Kolodec.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Krug_1998 <- read_delim("Krug.txt.Y1998.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_1999 <- read_delim("Krug.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_2000 <- read_delim("Krug.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_2001 <- read_delim("Krug.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_2002 <- read_delim("Krug.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Krug_2003 <- read_delim("Krug.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Nrust_1999 <- read_delim("Nrust.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_2000 <- read_delim("Nrust.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_2001 <- read_delim("Nrust.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_2002 <- read_delim("Nrust.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Nrust_2003 <- read_delim("Nrust.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

Vi_1998 <- read_delim("Vi.txt.Y1998.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_1999 <- read_delim("Vi.txt.Y1999.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_2000 <- read_delim("Vi.txt.Y2000.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_2001 <- read_delim("Vi.txt.Y2001.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_2002 <- read_delim("Vi.txt.Y2002.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
Vi_2003 <- read_delim("Vi.txt.Y2003.csv", delim = "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)

ggplot() +
  geom_point(data = Ker_1996, aes(x = Ker_1996$X1, y = Ker_1996$X2), color = "brown4") + 
  geom_point(data = Ker_1997, aes(x = Ker_1997$X1, y = Ker_1997$X2), color = "deepskyblue") +
  geom_point(data = Ker_1998, aes(x = Ker_1998$X1, y = Ker_1998$X2), color = "deeppink") +
  geom_point(data = Ker_1999, aes(x = Ker_1999$X1, y = Ker_1999$X2), color = "darkseagreen4") +
  geom_point(data = Ker_2000, aes(x = Ker_2000$X1, y = Ker_2000$X2), color = "darkorchid1") +
  geom_point(data = Ker_2001, aes(x = Ker_2001$X1, y = Ker_2001$X2), color = "darkolivegreen1") +
  geom_point(data = Ker_2002, aes(x = Ker_2002$X1, y = Ker_2002$X2), color = "blueviolet") +
  geom_point(data = Ker_2003, aes(x = Ker_2003$X1, y = Ker_2003$X2), color = "darkgoldenrod1") +
  geom_point(data = Ker_2004, aes(x = Ker_2004$X1, y = Ker_2004$X2), color = "coral4")
ggsave("Ker_point.png")

ggplot() +
  geom_smooth(data = Ker_1996, aes(x = Ker_1996$X1, y = Ker_1996$X2), color = "brown4") + 
  geom_smooth(data = Ker_1997, aes(x = Ker_1997$X1, y = Ker_1997$X2), color = "deepskyblue") +
  geom_smooth(data = Ker_1998, aes(x = Ker_1998$X1, y = Ker_1998$X2), color = "deeppink") +
  geom_smooth(data = Ker_1999, aes(x = Ker_1999$X1, y = Ker_1999$X2), color = "darkseagreen4") +
  geom_smooth(data = Ker_2000, aes(x = Ker_2000$X1, y = Ker_2000$X2), color = "darkorchid1") +
  geom_smooth(data = Ker_2001, aes(x = Ker_2001$X1, y = Ker_2001$X2), color = "darkolivegreen1") +
  geom_smooth(data = Ker_2002, aes(x = Ker_2002$X1, y = Ker_2002$X2), color = "blueviolet") +
  geom_smooth(data = Ker_2003, aes(x = Ker_2003$X1, y = Ker_2003$X2), color = "darkgoldenrod1") +
  geom_smooth(data = Ker_2004, aes(x = Ker_2004$X1, y = Ker_2004$X2), color = "coral4")
ggsave("Ker_smooth.png")  

ggplot() +
  geom_point(data = Vi_1998, aes(x = Vi_1998$X1, y = Vi_1998$X2), color = "brown4") + 
  geom_point(data = Vi_1999, aes(x = Vi_1999$X1, y = Vi_1999$X2), color = "deepskyblue") +
  geom_point(data = Vi_2000, aes(x = Vi_2000$X1, y = Vi_2000$X2), color = "deeppink") +
  geom_point(data = Vi_2001, aes(x = Vi_2001$X1, y = Vi_2001$X2), color = "darkseagreen4") +
  geom_point(data = Vi_2002, aes(x = Vi_2002$X1, y = Vi_2002$X2), color = "darkorchid1") +
  geom_point(data = Vi_2003, aes(x = Vi_2003$X1, y = Vi_2003$X2), color = "darkolivegreen1")
ggsave("Vi_point.png")

ggplot() +
  geom_smooth(data = Vi_1998, aes(x = Vi_1998$X1, y = Vi_1998$X2), color = "brown4") + 
  geom_smooth(data = Vi_1999, aes(x = Vi_1999$X1, y = Vi_1999$X2), color = "deepskyblue") +
  geom_smooth(data = Vi_2000, aes(x = Vi_2000$X1, y = Vi_2000$X2), color = "deeppink") +
  geom_smooth(data = Vi_2001, aes(x = Vi_2001$X1, y = Vi_2001$X2), color = "darkseagreen4") +
  geom_smooth(data = Vi_2002, aes(x = Vi_2002$X1, y = Vi_2002$X2), color = "darkorchid1") +
  geom_smooth(data = Vi_2003, aes(x = Vi_2003$X1, y = Vi_2003$X2), color = "darkolivegreen1")
ggsave("Vi_smooth.png")

ggplot() +
  geom_point(data = Nrust_1999, aes(x = Nrust_1999$X1, y = Nrust_1999$X2), color = "brown4") + 
  geom_point(data = Nrust_2000, aes(x = Nrust_2000$X1, y = Nrust_2000$X2), color = "deepskyblue") +
  geom_point(data = Nrust_2001, aes(x = Nrust_2001$X1, y = Nrust_2001$X2), color = "deeppink") +
  geom_point(data = Nrust_2002, aes(x = Nrust_2002$X1, y = Nrust_2002$X2), color = "darkseagreen4") +
  geom_point(data = Nrust_2003, aes(x = Nrust_2003$X1, y = Nrust_2003$X2), color = "darkorchid1") 
ggsave("Nrust_point.png")

ggplot() +
  geom_smooth(data = Nrust_1999, aes(x = Nrust_1999$X1, y = Nrust_1999$X2), color = "brown4") + 
  geom_smooth(data = Nrust_2000, aes(x = Nrust_2000$X1, y = Nrust_2000$X2), color = "deepskyblue") +
  geom_smooth(data = Nrust_2001, aes(x = Nrust_2001$X1, y = Nrust_2001$X2), color = "deeppink") +
  geom_smooth(data = Nrust_2002, aes(x = Nrust_2002$X1, y = Nrust_2002$X2), color = "darkseagreen4") +
  geom_smooth(data = Nrust_2003, aes(x = Nrust_2003$X1, y = Nrust_2003$X2), color = "darkorchid1") 
ggsave("Nrust_smooth.png")

ggplot() +
  geom_point(data = Krug_1998, aes(x = Krug_1998$X1, y = Krug_1998$X2), color = "brown4") + 
  geom_point(data = Krug_1999, aes(x = Krug_1999$X1, y = Krug_1999$X2), color = "deepskyblue") +
  geom_point(data = Krug_2000, aes(x = Krug_2000$X1, y = Krug_2000$X2), color = "deeppink") +
  geom_point(data = Krug_2001, aes(x = Krug_2001$X1, y = Krug_2001$X2), color = "darkseagreen4") +
  geom_point(data = Krug_2002, aes(x = Krug_2002$X1, y = Krug_2002$X2), color = "darkorchid1") +
  geom_point(data = Krug_2003, aes(x = Krug_2003$X1, y = Krug_2003$X2), color = "darkolivegreen1")
ggsave("Krug_point.png")

ggplot() +
  geom_smooth(data = Krug_1998, aes(x = Krug_1998$X1, y = Krug_1998$X2), color = "brown4") + 
  geom_smooth(data = Krug_1999, aes(x = Krug_1999$X1, y = Krug_1999$X2), color = "deepskyblue") +
  geom_smooth(data = Krug_2000, aes(x = Krug_2000$X1, y = Krug_2000$X2), color = "deeppink") +
  geom_smooth(data = Krug_2001, aes(x = Krug_2001$X1, y = Krug_2001$X2), color = "darkseagreen4") +
  geom_smooth(data = Krug_2002, aes(x = Krug_2002$X1, y = Krug_2002$X2), color = "darkorchid1") +
  geom_smooth(data = Krug_2003, aes(x = Krug_2003$X1, y = Krug_2003$X2), color = "darkolivegreen1")
ggsave("Krug_smooth.png")

ggplot() +
  geom_point(data = Kolodec_1996, aes(x = Kolodec_1996$X1, y = Kolodec_1996$X2), color = "brown4") + 
  geom_point(data = Kolodec_1997, aes(x = Kolodec_1997$X1, y = Kolodec_1997$X2), color = "deepskyblue") +
  geom_point(data = Kolodec_1998, aes(x = Kolodec_1998$X1, y = Kolodec_1998$X2), color = "deeppink") +
  geom_point(data = Kolodec_1999, aes(x = Kolodec_1999$X1, y = Kolodec_1999$X2), color = "darkseagreen4") +
  geom_point(data = Kolodec_2000, aes(x = Kolodec_2000$X1, y = Kolodec_2000$X2), color = "darkorchid1") +
  geom_point(data = Kolodec_2001, aes(x = Kolodec_2001$X1, y = Kolodec_2001$X2), color = "darkolivegreen1") +
  geom_point(data = Kolodec_2002, aes(x = Kolodec_2002$X1, y = Kolodec_2002$X2), color = "blueviolet") +
  geom_point(data = Kolodec_2003, aes(x = Kolodec_2003$X1, y = Kolodec_2003$X2), color = "darkgoldenrod1")
ggsave("Kolodec_point.png")

ggplot() +
  geom_smooth(data = Kolodec_1996, aes(x = Kolodec_1996$X1, y = Kolodec_1996$X2), color = "brown4") + 
  geom_smooth(data = Kolodec_1997, aes(x = Kolodec_1997$X1, y = Kolodec_1997$X2), color = "deepskyblue") +
  geom_smooth(data = Kolodec_1998, aes(x = Kolodec_1998$X1, y = Kolodec_1998$X2), color = "deeppink") +
  geom_smooth(data = Kolodec_1999, aes(x = Kolodec_1999$X1, y = Kolodec_1999$X2), color = "darkseagreen4") +
  geom_smooth(data = Kolodec_2000, aes(x = Kolodec_2000$X1, y = Kolodec_2000$X2), color = "darkorchid1") +
  geom_smooth(data = Kolodec_2001, aes(x = Kolodec_2001$X1, y = Kolodec_2001$X2), color = "darkolivegreen1") +
  geom_smooth(data = Kolodec_2002, aes(x = Kolodec_2002$X1, y = Kolodec_2002$X2), color = "blueviolet") +
  geom_smooth(data = Kolodec_2003, aes(x = Kolodec_2003$X1, y = Kolodec_2003$X2), color = "darkgoldenrod1")
ggsave("Kolodec_smooth.png")

ggplot() +
  geom_point(data = Kalach_1998, aes(x = Kalach_1998$X1, y = Kalach_1998$X2), color = "brown4") + 
  geom_point(data = Kalach_1999, aes(x = Kalach_1999$X1, y = Kalach_1999$X2), color = "deepskyblue") +
  geom_point(data = Kalach_2000, aes(x = Kalach_2000$X1, y = Kalach_2000$X2), color = "deeppink") +
  geom_point(data = Kalach_2001, aes(x = Kalach_2001$X1, y = Kalach_2001$X2), color = "darkseagreen4") +
  geom_point(data = Kalach_2002, aes(x = Kalach_2002$X1, y = Kalach_2002$X2), color = "darkorchid1") +
  geom_point(data = Kalach_2003, aes(x = Kalach_2003$X1, y = Kalach_2003$X2), color = "darkolivegreen1")
ggsave("Kalach_point.png")

ggplot() +
  geom_smooth(data = Kalach_1998, aes(x = Kalach_1998$X1, y = Kalach_1998$X2), color = "brown4") + 
  geom_smooth(data = Kalach_1999, aes(x = Kalach_1999$X1, y = Kalach_1999$X2), color = "deepskyblue") +
  geom_smooth(data = Kalach_2000, aes(x = Kalach_2000$X1, y = Kalach_2000$X2), color = "deeppink") +
  geom_smooth(data = Kalach_2001, aes(x = Kalach_2001$X1, y = Kalach_2001$X2), color = "darkseagreen4") +
  geom_smooth(data = Kalach_2002, aes(x = Kalach_2002$X1, y = Kalach_2002$X2), color = "darkorchid1") +
  geom_smooth(data = Kalach_2003, aes(x = Kalach_2003$X1, y = Kalach_2003$X2), color = "darkolivegreen1")
ggsave("Kalach_smooth.png")

ggplot() +
  geom_point(data = Boloto_2002, aes(x = Boloto_2002$X1, y = Boloto_2002$X2), color = "brown4") + 
  geom_point(data = Boloto_2003, aes(x = Boloto_2003$X1, y = Boloto_2003$X2), color = "deepskyblue")
ggsave("Boloto_point.png")

ggplot() +
  geom_smooth(data = Boloto_2002, aes(x = Boloto_2002$X1, y = Boloto_2002$X2), color = "brown4") + 
  geom_smooth(data = Boloto_2003, aes(x = Boloto_2003$X1, y = Boloto_2003$X2), color = "deepskyblue")
ggsave("Boloto_smooth.png")

ggplot() +
  geom_smooth(data = Boloto_2002, aes(x = Boloto_2002$X1, y = Boloto_2002$X2), color = "brown4") + 
  geom_smooth(data = Boloto_2003, aes(x = Boloto_2003$X1, y = Boloto_2003$X2), color = "deepskyblue") +
  geom_smooth(data = Kalach_1998, aes(x = Kalach_1998$X1, y = Kalach_1998$X2), color = "antiquewhite3") + 
  geom_smooth(data = Kalach_1999, aes(x = Kalach_1999$X1, y = Kalach_1999$X2), color = "aquamarine3") +
  geom_smooth(data = Kalach_2000, aes(x = Kalach_2000$X1, y = Kalach_2000$X2), color = "deeppink") +
  geom_smooth(data = Kalach_2001, aes(x = Kalach_2001$X1, y = Kalach_2001$X2), color = "darkseagreen4") +
  geom_smooth(data = Kalach_2002, aes(x = Kalach_2002$X1, y = Kalach_2002$X2), color = "darkorchid1") +
  geom_smooth(data = Kalach_2003, aes(x = Kalach_2003$X1, y = Kalach_2003$X2), color = "darkolivegreen1") +
  geom_smooth(data = Kolodec_1996, aes(x = Kolodec_1996$X1, y = Kolodec_1996$X2), color = "azure3") + 
  geom_smooth(data = Kolodec_1997, aes(x = Kolodec_1997$X1, y = Kolodec_1997$X2), color = "bisque2") +
  geom_smooth(data = Kolodec_1998, aes(x = Kolodec_1998$X1, y = Kolodec_1998$X2), color = "blue") +
  geom_smooth(data = Kolodec_1999, aes(x = Kolodec_1999$X1, y = Kolodec_1999$X2), color = "burlywood4") +
  geom_smooth(data = Kolodec_2000, aes(x = Kolodec_2000$X1, y = Kolodec_2000$X2), color = "cadetblue4") +
  geom_smooth(data = Kolodec_2001, aes(x = Kolodec_2001$X1, y = Kolodec_2001$X2), color = "chartreuse4") +
  geom_smooth(data = Kolodec_2002, aes(x = Kolodec_2002$X1, y = Kolodec_2002$X2), color = "blueviolet") +
  geom_smooth(data = Kolodec_2003, aes(x = Kolodec_2003$X1, y = Kolodec_2003$X2), color = "darkgoldenrod1") +
  geom_smooth(data = Krug_1998, aes(x = Krug_1998$X1, y = Krug_1998$X2), color = "chocolate4") + 
  geom_smooth(data = Krug_1999, aes(x = Krug_1999$X1, y = Krug_1999$X2), color = "coral4") +
  geom_smooth(data = Krug_2000, aes(x = Krug_2000$X1, y = Krug_2000$X2), color = "cornsilk3") +
  geom_smooth(data = Krug_2001, aes(x = Krug_2001$X1, y = Krug_2001$X2), color = "cyan3") +
  geom_smooth(data = Krug_2002, aes(x = Krug_2002$X1, y = Krug_2002$X2), color = "darkgreen") +
  geom_smooth(data = Krug_2003, aes(x = Krug_2003$X1, y = Krug_2003$X2), color = "darkolivegreen1") +
  geom_smooth(data = Nrust_1999, aes(x = Nrust_1999$X1, y = Nrust_1999$X2), color = "darkorange1") + 
  geom_smooth(data = Nrust_2000, aes(x = Nrust_2000$X1, y = Nrust_2000$X2), color = "darkorchid1") +
  geom_smooth(data = Nrust_2001, aes(x = Nrust_2001$X1, y = Nrust_2001$X2), color = "darksalmon") +
  geom_smooth(data = Nrust_2002, aes(x = Nrust_2002$X1, y = Nrust_2002$X2), color = "darkseagreen4") +
  geom_smooth(data = Nrust_2003, aes(x = Nrust_2003$X1, y = Nrust_2003$X2), color = "darkslategray3") +
  geom_smooth(data = Vi_1998, aes(x = Vi_1998$X1, y = Vi_1998$X2), color = "brown1") + 
  geom_smooth(data = Vi_1999, aes(x = Vi_1999$X1, y = Vi_1999$X2), color = "deepskyblue3") +
  geom_smooth(data = Vi_2000, aes(x = Vi_2000$X1, y = Vi_2000$X2), color = "deeppink3") +
  geom_smooth(data = Vi_2001, aes(x = Vi_2001$X1, y = Vi_2001$X2), color = "darkseagreen1") +
  geom_smooth(data = Vi_2002, aes(x = Vi_2002$X1, y = Vi_2002$X2), color = "darkorchid4") +
  geom_smooth(data = Vi_2003, aes(x = Vi_2003$X1, y = Vi_2003$X2), color = "darkolivegreen4") +
  geom_smooth(data = Ker_1996, aes(x = Ker_1996$X1, y = Ker_1996$X2), color = "brown2") + 
  geom_smooth(data = Ker_1997, aes(x = Ker_1997$X1, y = Ker_1997$X2), color = "deepskyblue2") +
  geom_smooth(data = Ker_1998, aes(x = Ker_1998$X1, y = Ker_1998$X2), color = "deeppink2") +
  geom_smooth(data = Ker_1999, aes(x = Ker_1999$X1, y = Ker_1999$X2), color = "darkseagreen2") +
  geom_smooth(data = Ker_2000, aes(x = Ker_2000$X1, y = Ker_2000$X2), color = "darkorchid3") +
  geom_smooth(data = Ker_2001, aes(x = Ker_2001$X1, y = Ker_2001$X2), color = "darkolivegreen2") +
  geom_smooth(data = Ker_2002, aes(x = Ker_2002$X1, y = Ker_2002$X2), color = "blue4") +
  geom_smooth(data = Ker_2003, aes(x = Ker_2003$X1, y = Ker_2003$X2), color = "darkgoldenrod4") +
  geom_smooth(data = Ker_2004, aes(x = Ker_2004$X1, y = Ker_2004$X2), color = "coral1")
  ggsave("All_smooth.png")