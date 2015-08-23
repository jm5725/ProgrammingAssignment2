## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     mcm <- NULL
     set<- function (cche){
     x<<-cche
     mcm <<- NULL
     }
     gtcche <- function() x
     setmtx <- function(solve) mcm<<-solve
     getmtx <- function()mcm
     list(set=set,gtcche=gtcche,setmtx=setmtx,getmtx=getmtx)
     
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mcm<-x$getmtx()
  if (!is.null(m)){
       message("getmtx returning cached data")
       return(mcm)
  }
   matrix<-x$gtcche()
   mcm<-solve(matrix, ...)
   x$setmtx(mcm)
   mcm
}
