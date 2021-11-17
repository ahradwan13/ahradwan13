install.packages("janitor")
library(readxl)

# data preparation

# Small sample to try with
# F202011_202110 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/small.xlsx"))


# Full data load     
F202011 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202011-divvy-tripdata.xlsx"))
F202012 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202012-divvy-tripdata.xlsx"))
F202101 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202101-divvy-tripdata.xlsx"))
F202102 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202102-divvy-tripdata.xlsx"))
F202103 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202103-divvy-tripdata.xlsx"))
F202104 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202104-divvy-tripdata.xlsx"))
F202105 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202105-divvy-tripdata.xlsx"))
F202106 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202106-divvy-tripdata.xlsx"))
F202107 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202107-divvy-tripdata.xlsx"))
F202108 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202108-divvy-tripdata.xlsx"))
F202109 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202109-divvy-tripdata.xlsx"))
F202110 <- data.frame(read_excel("D:/AhmedHamdy/Data Analytics/CyclingCaseStudy/Data/202110-divvy-tripdata.xlsx"))


# Combining data into one data frame
F202011_202110 <- rbind(F202011,F202012,F202101,F202102,F202103,F202104,F202105,F202106,F202107,F202108,F202109,F202110)