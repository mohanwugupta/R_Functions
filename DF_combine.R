#Get list of dataframes
#Useful to combine many seperate dataframes into one using rbind. 
lapply(ls(), function(x) if (class(get(x)) == "data.frame") get(x))
