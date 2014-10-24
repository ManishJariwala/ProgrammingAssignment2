## The below program consists of two programs  - makeCacheMatrix and cacheSolve.  
## makeCacheMatrix will be run the first time, which takes matrix as an argument
## It will calculate inverse of matrix in a global variable m to store the value of results.
##  cacheSolve will first check if makeCacheMatrix by calling getinverse to see if results exists,
#   If it does not, it will calculate resolves and store in global variable m.


## makeCacheMatrix function provides an ability to calculate inverse matrix and store in global variable m

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## cacheSolve makes call to makeCacheMatrix to determine if inverse was already calculate. If not, it calculates it for first 
## time and stores in global variable via calling functions within makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {cacheSolve(amatrix)
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
