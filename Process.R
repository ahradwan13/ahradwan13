library(janitor)
library(dplyr)

# data cleaning

# removing redundant rides if any
F202011_202110 <- F202011_202110 %>% distinct(ride_id, .keep_all = TRUE)


# cleaning column names 
F202011_202110 <-clean_names(F202011_202110)

# display clean column names 
colnames(F202011_202110)

# remove records with empty cells 
F202011_202110 <- na.omit(F202011_202110)

# remove records with wrong misleading data (ride end date is less that start date)
F202011_202110 <- subset(F202011_202110,F202011_202110$ended_at > F202011_202110$started_at)

# adding ride_length to the data frame by calcualting the difference between ride end time and ride start time
F202011_202110$ride_length <- as.POSIXct(F202011_202110$ended_at) - as.POSIXct(F202011_202110$started_at)

F202011_202110$ride_length <- as.double(F202011_202110$ride_length,units="auto")

# adding day of the week for the ride start to the data frame 
library(lubridate)

F202011_202110$day_of_week <- wday(F202011_202110$started_at, label=TRUE)