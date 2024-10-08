## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse_m) inv <<- inverse_m
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix)
  x$setinverse(inv)
  inv
}
