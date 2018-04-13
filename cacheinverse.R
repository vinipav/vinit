## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatix <- function(x = matrix()) {  
  invers <- NULL  
  set <- function(y) {  
    x <<- y   
    invers <<- NULL 
} 
  get <- function() x 
  setInverse <- function(mean) invers <<- inverse 
  getInverse <- function() invers  
  list(set = set, get = get,     
        setInverse = setInverse, 
        getInverse = getInverse)
 }


## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...)
{ 
  invers <- x$getInverse() 
  if(!is.null(invers)) {  
    message("getting cached data")    
  return(invers) 
}
  data <- x$get() 
  invers <- mean(data, ...) 
  x$setmmakeCacheMatix <- function(x = matrix()) { 
  invers <- NULL  set <- function(y) {  
  x <<- y  
  invers <<- NULL 
}
   get <- function() x  
   setInverse <- function(mean) 
   invers <<- inverse 
  getInverse <- function() invers 
    list(set = set, get = get,    
  setInverse = setInverse,      
  getInverse = getInverse)}ean(invers)
invers}
