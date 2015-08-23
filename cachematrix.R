## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
## set the value 
invMatrix <- NULL 
set <- function(y) { 
 x <<- y 
 invMatrix  <<- NULL 
} 
## get the value 
get <- function() x 
    
## set the value of inverse of the matrix 
setinverse <- function(valOfInverse) invMatrix <<- valOfInverse 
getinverse <- function() invMatrix 
    
## get the value of inverse of the matrix 
list(set = set, get = get, 
    setinverse = setinverse, 
    getinverse = getinverse) 
 
  
} 



cacheSolve <- function(x, ...) { 
 
  
## get the inverse of the matrix         
invMatrix <- x$getinverse() 

 ## check if the inverse has already been calculated    
if(!is.null(invMatrix)) { 
   message("getting cached data!") 
     return(invMatrix) 
   } 
   ## if not, get the inverse of the matrix    
   data <- x$get() 
   invMatrix <- solve(data, ...) 
   ## set the inverse of the matrix  
   x$setinverse(invMatrix) 
   invMatrix 
 } 
