## Put comments here that give an overall description of what your
## functions do

## This function describes methods to set and get the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) i <<- inv
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function returns the inverse if it exists, else calculates it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(x)){
    message("Getting caches data.")
    return(i)
  }
  data <- x$get()
  i <- inv(data, ...)
  x$setinverse(i)
  i
}
