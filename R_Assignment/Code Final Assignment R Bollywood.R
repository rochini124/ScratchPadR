setwd("~/Documents/Learning R/Final Assignment R")

bollywood <- read.csv("bollywood.csv")

bollywood<- View(bollywood)

#Q1
last_10 <- tail(bollywood$Movie, 10)   
last_10

#Q2
na_bollywood <- length(which(is.na(bollywood)))
na_bollywood

#Q3
max_Tcollection_T <- which(bollywood['Tcollection']==max(bollywood$Tcollection))
max_Tcollection_T
top_movie <- bollywood[max_Tcollection_T, 1]
top_movie

#Q4
next_max_func <- function(Tcol_col)
{ 
  max_val <- 0
  max_ind <- 0
  next_max <-0
  next_max_ind<-0
  for (i in 1:length(Tcol_col))
  { 
    if(Tcol_col[i]>max_val)
    { 
      next_max <- max_val
      next_max_ind <- max_ind
      max_val <- Tcol_col[i]
      max_ind <- i
    }
    else if (Tcol_col[i]>next_max)
    { 
      next_max <- Tcol_col[i]
      next_max_ind <- i
    } 
  } 
  return(next_max_ind)
}

next_max_row_ind <- next_max_func(bollywood$Tcollection)
top_2_movie <- bollywood[next_max_row_ind, 1]
top_2_movie




