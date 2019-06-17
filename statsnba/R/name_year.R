#' A Function to Find the mean of 2P of NBA Player by Year
#'
#' This function allows you to Find the mean of 2P of NBA Player in a specific Year
#' @param x
#' @keywords nba,mean of 2P
#' @export
#' @examples
#' name_year()

name_year <- function(x){
  data(nba_data)
  output <- dplyr::select(nba_data,"Year","X2P")
  output1 <- dplyr::filter(output,Year == x)
  mean(output1$X2P)
}
