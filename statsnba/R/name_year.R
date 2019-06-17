name_year <- function(x){
  data(nba_data)
  output <- dplyr::select(nba_data,"Year","X2P")
  output1 <- dplyr::filter(output,Year == x)
  mean(output1$X2P)
}
