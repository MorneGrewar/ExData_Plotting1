data <- read.csv2("hpc.txt", stringsAsFactors = FALSE)
data$Combi_date <- as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
sub<- subset(data,data$Combi_date>="2007/02/01 00:00:00" & data$Combi_dat<"2007/02/03 00:00:00")


png("Plot1.png")
hist(x = sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()