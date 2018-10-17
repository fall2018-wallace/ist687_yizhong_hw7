
stateArea<-state.area
stateName<-state.name
stateCenter<-state.center
state_area_center<- data.frame(stateArea, stateCenter, stateName)
merge_df<- merge(merge_df, state_area_center, by="stateName")
merge_df$stateName<-tolower(merge_df$stateName)
