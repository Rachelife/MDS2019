oldest_year <- function(x){
  data(nba_data)
  output <- dplyr::select(nba_data,"Year","Age")
  output1 <- dplyr::filter(output,Year == x)
  output2<-output1[complete.cases(output1),]
  max(output2$Age, na.rm = TRUE)
}
