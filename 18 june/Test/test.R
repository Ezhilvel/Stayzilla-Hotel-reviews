install.packages("XML")
library(XML)
url<-"http://www.tripadvisor.in/Hotel_Review-g304556-d2534781-Reviews-ITC_Grand_Chola_Chennai-Chennai_Madras_Tamil_Nadu.html"
html<-htmlTreeParse(url,useInternalNodes=T)
xpathSApply(html,"//title", xmlValue)
o<-xpathSApply(html,"//div [@class='entry']", xmlValue)
o
setwd("/home/usersz/Desktop/R/18 june/Test")