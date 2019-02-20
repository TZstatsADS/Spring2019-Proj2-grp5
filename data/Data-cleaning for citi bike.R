library("rjson")
library("plyr")

bike <- fromJSON(file = "~/Desktop/stations.json")
bike <- lapply(bike, function (x) x[c("stationName","latitude","longitude","stAddress1")])
citi.bike <- data.frame(matrix(unlist(bike), nrow=814, byrow=T))

colnames(citi.bike) <- c("stationName","latitude","longitude","stAddress1")

write.csv(citi.bike, "~/Desktop/Citibike new data.csv")
