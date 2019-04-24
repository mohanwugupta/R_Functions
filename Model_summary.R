#Get's extra metrics from trained machine learning model in caret
#Use in the creation of the CV
#E.G.
#fitControl <- trainControl(
#  method = 'repeatedcv',            # k-fold cross validation
#  number = 10,                      # number of folds
#  savePredictions = 'final',        # saves predictions for optimal tuning parameter
#  classProbs = T,                   # should class probabilities be returned
#  summaryFunction=MySummary  # results summary function
#)

MySummary  <- function(data, lev = NULL, model = NULL){
  a1 <- defaultSummary(data, lev, model)
  b1 <- twoClassSummary(data, lev, model)
  c1 <- prSummary(data, lev, model)
  out <- c(a1, b1, c1)
  out}
