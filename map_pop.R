
library(ggplot2)
map_pop<-map_murder+geom_point(data = merge_df,aes(x=merge_df$x,y=merge_df$y,size=merge_df$population))
