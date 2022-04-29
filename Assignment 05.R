if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

#open file and read
shipment <- read.csv("TBQ05.20211116133909.csv")
str(shipment)
#convert to numeric value and getting rid of NA's
shipment$VALUE <- as.numeric(shipment$VALUE)
shipment$VALUE[is.na(shipment$VALUE)] <- 0
shipment$Region.of.Trade <- as.factor(shipment$Region.of.Trade)
by(shipment$VALUE,shipment$Region.of.Trade,sum)

#merging the new edited data into "shipment"
shipment<-shipment[which(shipment$Port!="All Main Irish Ports" & shipment$C01713V02044 =="1"),]

#plotting data
ggplot(data=shipment) + 
  geom_point(data=shipment, aes(x=Quarter,y=VALUE) + 
  ggtitle("Shipments Arriving Quarterly from UK") + 
  xlab("Quarter") + 
  ylab("Shipment's Weight") +
  theme_minimal()

  