library(XML)
for(j in 1:3)
 {
  Sys.sleep(3)
  
   for(i in 1:data$NR[j])
        
     if(i==1)
        {
          url<-data$URL[j]
        }
      else
       {
        sub("Reviews","Reviews-orX", url)
        sub("X",(i-1)*10, url)
         Sys.sleep(2)
       }
  
  html<-htmlTreeParse(url, useInternalNodes = T)

  reviews<-xpathSApply(html,"//div [@class='entry']", xmlValue)
  
  print(reviews)
  
  data$Reviews[j]<-xpathSApply(html,"//div [@class='entry']", xmlValue)
}

data$Reviews[1]
