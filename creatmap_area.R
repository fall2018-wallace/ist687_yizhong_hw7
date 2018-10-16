
library(ggplot2)
library(ggmap)
library(maps)
merge_df$stateName<-tolower(merge_df$stateName)
us<- map_data("state")
map_area<-ggplot(merge_df,aes(map_id=stateName))+geom_map(map=us, aes(fill=stateArea))+expand_limits(x = us$long, y = us$lat)+coord_map() + ggtitle("state Area")
