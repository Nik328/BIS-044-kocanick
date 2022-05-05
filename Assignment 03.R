
header <- read.table("yellow_tripdata_2021-03.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("yellow_tripdata_2021-03.csv",
            skip=1, sep=",",header=FALSE,
            data.table=FALSE)
setnames(DF, colnames(header))
rm(header)


DF2<-DF[which(DF$trip_distance > 10 |
                DF$trip_distance < 0 ),]

avg_dist <- mean(DF2$trip_distance)
avg_cost <- mean(DF2$total_amount)
cat("The average distance traveled by a person in a taxi cab in NYC in March of 2021 is" ,avg_dist, "miles while the average total cost for these trips was", avg_cost)
#-10 wrong >< signs 90/100