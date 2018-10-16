
readStates<-function(states)
{
    states<-states[-1,]
    num.row<-nrow(states)
    states<-states[-num.row,]
    states<-states[,-1:-4]
    colnames(states)<-c("stateName","population","popOver18","percentOver18")
    return(states)
}
clean_data<-readStates(raw_data)
arrests<-data.frame(USArrests)
arrests$stateName<-row.names(arrests)
merge_df<-merge(arrests,data,by="stateName")
