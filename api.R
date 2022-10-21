if(!require('pacman')) install.packages('pacman');
pacman::p_load(
  "DBI"
)


# con <- dbConnect(
#   bigrquery::bigquery(),
#   project = "helpful-helper-516",
#   dataset = "analytics_228181372",
#   # billing = billing
# )


#' @get /
#* @serializer html
function(){
  "<html><h1>It works!</h1></html>"
}


#' @get /hello
#* @serializer html
function(){
  "<html><h1>hello world</h1></html>"
}

#' Echo the parameter that was sent in
#' @param msg The message to echo back.
#' @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

#' Square the number that was sent in
#' @param num The message to echo back.
#' @get /square
function(num=""){
  y <- as.numeric(num)
  y <- y*y
  return(y)
}

#' #' @get /listTables
#' #* @serializer unboxedJSON
#' function(){
#'   list(status = "SUCCESS", code = "200",output = dbListTables(con))
#' }

#' #' @post /getData
#' #' @param query an SQL query to be executed
#' #* @serializer unboxedJSON
#' function(query){
#'   df <- dbGetQuery(con, query)
#'   # list(msg = paste0("The message is: '", query, "'"))
#'   df
#'   # list(status = "SUCCESS", code = "200",output = dbListTables(con))
#' }


#' #' Plot out data from the iris dataset
#' #' @param spec If provided, filter the data to only this species (e.g. 'setosa')
#' #' @get /plot
#' #' @png
#' function(spec){
#'   myData <- iris
#'   title <- "All Species"
#'   
#'   # Filter if the species was specified
#'   if (!missing(spec)){
#'     title <- paste0("Only the '", spec, "' Species")
#'     myData <- subset(iris, Species == spec)
#'   }
#'   
#'   plot(myData$Sepal.Length, myData$Petal.Length,
#'        main=title, xlab="Sepal Length", ylab="Petal Length")
#' }