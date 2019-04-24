age_years <- function(first, second) 
{ 
  lt <- data.frame(first, second) 
  age <- as.numeric(format(lt[,2],format="%Y")) - as.numeric(format(lt[,1],format="%Y")) 
  first <- as.Date(paste(format(lt[,2],format="%Y"),"-",format(lt[,1],format="%m-%d"),sep="")) 
  age[which(first > lt[,2])] <- age[which(first > lt[,2])] - 1 
  age 
}
