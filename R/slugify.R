#' Slugify a string to remove characters that can cause problems 
#' 
#' @param x a string 
#' @param non_alphanum_replace character to replace non-alphanumeric characters (Default: "")
#' @param space_replace character to replace spaces (Default: "_")
#' @param tolower boolean, run towlower()? (Default: TRUE)
#' 
#' @return a string with replacements 
#' 
#' @examples 
#' slugify("HELLO WORLD!!!")
#' slugify("HELLO+WORLD", non_alphanum_replace="_")
#' 
#' @concept 
#' slugify
#' 
#' @export
slugify <- function(x, non_alphanum_replace="", space_replace="_", tolower=TRUE) {
  x <- gsub("[^[:alnum:] ]", non_alphanum_replace, x)
  x <- trimws(x)
  x <- gsub("[[:space:]]", space_replace, x)
  
  if(tolower) { x <- tolower(x) }

  return(x)
}
