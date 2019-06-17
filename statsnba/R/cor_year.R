cor_year <- function(x){
  data(nba_data)
  output <- tidyverse::keep(nba_data,is.numeric)
  output1 <- dplyr::filter(output, Year == x)
  output2 <- na.omit(output1)
  output3 <- cor(output2)
  corrplot::corrplot(output3, method="circle")
}
