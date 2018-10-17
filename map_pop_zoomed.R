
library(ggplot2)
latlon<- geocode(source = "dsk", "nyc, New York, ny")
map_pop_zoomed<-map_pop+xlim(latlon$lon-10, latlon$lon+10) + ylim(latlon$lat-10,latlon$lat+10)
