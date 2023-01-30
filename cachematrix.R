## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


##my code
cachemean <- function(x, ...) {
  m <- NULL
  makeCacheMatrix <- function() {
    m <<- mean(x, ...)
    m
  }
  cacheSolve <- function(y = NULL) {
    ## Return the mean if y is NULL
    if (is.null(y)) {
      ## Return the mean if it is already calculated
      if (!is.null(m)) {
        m
      } else {
        makeCacheMatrix()
      }
    } else {
      x <<- y
      m <<- NULL
    }
  }
  list(get = cacheSolve, set = cacheSolve)
}
