install.packages("ncdf4")
library(ncdf4)
nc_data <- nc_open("C:/Users/Owner/R Code 136/SIO Math Survival/washington_shelf_data.nc")
depth<- ncvar_get(nc_data, "depth")
rho <- ncvar_get(nc_data, "rho")
sal <- ncvar_get(nc_data, "sal")
temp <- ncvar_get(nc_data, "temp")
time <- ncvar_get(nc_data, "time")
nc_close(nc_data)

#2 Statistics Stuff

#temperature stats
mean_value <- mean(temp)
max_value <- max(temp)
min_value <- min(temp)

#Seperate in to meaningful chunks
r_datetime <- as.POSIXct((time-719529)*86400, origin = "1970-01-01", tz = "UTC")
numeric_time <- as.numeric(r_datetime)
x<-rdate
y1 <- temp[3,]
y2 <- temp[100,]

#Plotting first line
plot(x, y1, type = "l", col = "blue", lwd = 2, ylim = c(min(c(y1, y2)), max(c(y1, y2))),
     xlab = "time", ylab = "temperature [C]", main = "temperature at different depths")

rdate<-as.Date(r_datetime)








