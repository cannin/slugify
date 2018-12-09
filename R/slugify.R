#' Slugify a string to remove characters that can cause problems 
#' 
#' @param x a string 
#' @param alphanum_replace character to replace non-alphanumeric characters
#' @param space_replace character to replace spaces 
#' @param tolower boolean, run towlower()? 
#' 
#' @return a string with replacements 
#' 
#' @examples 
#' slugify("HELLO WORLD!!!")
#' 
#' @concept 
#' slugify
#' 
#' @export
slugify <- function(x, alphanum_replace="", space_replace="_", tolower=TRUE) {
  x <- gsub("[^[:alnum:] ]", alphanum_replace, x)
  x <- gsub(" ", space_replace, x)
  if(tolower) { x <- tolower(x) }

  return(x)
}
