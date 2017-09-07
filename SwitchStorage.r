require(reshape2)
head(airquality)

airMelt <- melt(airquality, id = c("Month", "Day"), value.name = "Value", variable.name = "metric")
head(airMelt)

dim(airquality)
dim(airMelt)

airCast <- dcast(airMelt, Month + Day ~ metric, value.var = "Value")
head(airCast)

airCast <- airCast[ , c("Ozone", "Solar.R", "Wind", "Temp", "Month", "Day")]
head(airCast)
