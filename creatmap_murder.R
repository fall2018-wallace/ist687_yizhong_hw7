
library(ggplot2)
map_murder<-ggplot(merge_df,aes(map_id=stateName))+geom_map(map=us, aes(fill=Murder))+expand_limits(x = us$long, y = us$lat)+coord_map() + ggtitle("Murder Rate")
