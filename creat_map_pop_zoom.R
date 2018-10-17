
library(ggplot2)
us<- map_data("state")
map_murder<-ggplot(merge_df,aes(map_id=stateName))+geom_map(map=us, aes(fill=Murder))+expand_limits(x = us$long, y = us$lat)+coord_map() + ggtitle("Murder Rate")
map_pop<-map_murder+geom_point(data = merge_df,aes(x=merge_df$x,y=merge_df$y,size=merge_df$population))
latlon<- geocode(source = "dsk", "nyc, New York, ny")
map_pop_zoomed<-map_pop+xlim(latlon$lon-10, latlon$lon+10) + ylim(latlon$lat-10,latlon$lat+10)
