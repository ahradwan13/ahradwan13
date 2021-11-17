# splitting the data per day of the week

SunDF <- subset(F202011_202110,F202011_202110$day_of_week == "Sun")
MonDF <- subset(F202011_202110,F202011_202110$day_of_week == "Mon")
TueDF <- subset(F202011_202110,F202011_202110$day_of_week == "Tue")
WedDF <- subset(F202011_202110,F202011_202110$day_of_week == "Wed")
ThuDF <- subset(F202011_202110,F202011_202110$day_of_week == "Thu")
FriDF <- subset(F202011_202110,F202011_202110$day_of_week == "Fri")
SatDF <- subset(F202011_202110,F202011_202110$day_of_week == "Sat")

# splitting the data per casual or member

Casual<- subset(F202011_202110,F202011_202110$member_casual == "casual")
Member<- subset(F202011_202110,F202011_202110$member_casual == "member")

# average of ride length for all, casual, member and day of the week 

mean(F202011_202110$ride_length)

mean(Casual$ride_length)
mean(Member$ride_length)

mean(SunDF$ride_length)
mean(MonDF$ride_length)
mean(TueDF$ride_length)
mean(WedDF$ride_length)
mean(ThuDF$ride_length)
mean(FriDF$ride_length)
mean(SatDF$ride_length)

# number of rides per day of the week
nrow(SunDF)
nrow(MonDF)
nrow(TueDF)
nrow(WedDF)
nrow(ThuDF)
nrow(FriDF)
nrow(SatDF)

# number of rides per membership type (casual/member)
nrow(Casual)
nrow(Member)

# calculating the median and max of the ride length
median(F202011_202110$ride_length)
max(F202011_202110$ride_length)

# getting mode for day of the week
getMode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode <- getMode(F202011_202110$day_of_week)
print(mode)