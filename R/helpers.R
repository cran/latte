
rhash <- function(n) {
  paste(
    sample(c(letters, LETTERS, 0:9), n, replace = TRUE),
    collapse = ""
  )
}
# rhash(10)

timeStamp <- function(){
  timeStamp <- as.character(Sys.time())
  timeStamp <- chartr("-", "_", timeStamp)
  timeStamp <- chartr(" ", "_", timeStamp)
  timeStamp <- chartr(":", "_", timeStamp)
  timeStamp <- paste0(timeStamp, "_", rhash(10))
  timeStamp
}




is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) abs(x - round(x)) < tol




file.path2 <- function(...){
  dots <- list(...)
  if(.Platform$OS.type == "unix"){
    sep <- "/"
  } else {
    sep <- "\\"
  }
  paste0(dots, collapse = sep)
}



is.formula <- function(x) inherits(x, "formula")





is_mac <- function() grepl("darwin", R.version$platform)
is_win <- function() .Platform$OS.type == "windows"
is_linux <- function() (.Platform$OS.type == "unix") && (is_mac() == FALSE)
is_unix <- function() .Platform$OS.type == "unix"
is_solaris <- function() grepl("solaris", R.version$os)








capitalize <- function(s){
  if(length(s) > 1) return(vapply(s, capitalize, character(1)))
  str_c(toupper(str_sub(s, 1, 1)), str_sub(s, 2))
}







`%notin%` <- function(elem, set){
  if(length(elem) > 1) return(vapply(elem, `%notin%`, logical(1), set = set))
  !(elem %in% set)
}






