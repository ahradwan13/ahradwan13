install.packages("plotly")
library(ggplot2)
library(plotly)
library(dplyr)

# Some visualizations are repeated using both ggplot2 and plotly 
# since some of the ggplot2 chart were taking so long time to render with the full dataset


# Scatter plot chart per ride length per member casual
ggplot(F202011_202110,aes(x=member_casual,y=ride_length,color=member_casual,size=ride_length,shape=member_casual)) + 
  geom_point(position = position_jitter())+
  # stat_smooth(method = "lm")+
  labs(title = "Ride Length", subtitle = "per membership type", caption = "Scatter plot for ride length per member/casual")


# Scatter plot per ride length per member casual segregated by day of week
ggplot(F202011_202110,aes(x=member_casual,y=ride_length,color=member_casual,size=ride_length,shape=member_casual)) + 
  geom_point(position = position_jitter())+
  # stat_smooth(method = "lm")+
  labs(title = "Ride Length", subtitle = "per membership type", caption = "Scatter plot for ride length per member/casual for each day of the week")+
  facet_wrap("day_of_week")



# Pie chart per casual member using ggplot
ggplot(F202011_202110,aes(x="",y=member_casual,fill=member_casual)) + 
  geom_col()+
  coord_polar(theta = "y")+
  theme_void()+
  labs(title = "Casual vs Member", caption = "Number of rides per year")


# Pie chart per casual member using plotly

plot_ly(F202011_202110, labels = ~member_casual, type = 'pie') %>%
  layout(title = "Casual vs Member",          
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))


# Pie chart per day of week using ggplot
ggplot(F202011_202110,aes(x="",y=day_of_week,fill=day_of_week)) + 
  geom_col()+
  coord_polar(theta = "y")+
  theme_void()+
  labs(title = "Day of the week", caption = "Number of rides per day of the week")

# Pie chart per day of week using plotly
plot_ly(F202011_202110, labels = ~day_of_week, type = 'pie') %>%
  layout(title = "Day of the week",          
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))


# Bar chart per day of week member vs casual using ggplot
ggplot(F202011_202110,aes(x=day_of_week,fill=day_of_week)) + 
  geom_bar()+
  facet_wrap(~ member_casual)+
  labs(title = "Day of the week",subtitle = "Per membership type" ,caption = "Difference between member and casual in weekly behavior")


# Pie chart per day of week for casual using ggplot
ggplot(Casual,aes(x="",y=day_of_week,fill=day_of_week)) + 
  geom_col()+
  coord_polar(theta = "y")+  
  theme_void()+
  labs(title = "Days of the week",subtitle = "Casuals only", caption = "Number of rides per day of the week")

# Pie chart per day of week for casual using plotly
plot_ly(Casual, labels = ~day_of_week, type = 'pie') %>%
  layout(title = "Day of the week",          
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))


# Pie chart per day of week for member using ggplot
ggplot(Member,aes(x="",y=day_of_week,fill=day_of_week)) + 
  geom_col()+
  coord_polar(theta = "y")+  
  theme_void()+
  labs(title = "Days of the week",subtitle = "Members only", caption = "Number of rides per day of the week")

# Pie chart per day of week for member using plotly
plot_ly(Member, labels = ~day_of_week, type = 'pie') %>%
  layout(title = "Day of the week",          
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

