## Put comments here that give an overall description of what your
## functions do

### This function takes an invertible matrix and returns
### a list of functions:
### 1. set the matrix
### 2. get the matrix
### 3. set the inverse of the matrix
### 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
### This function takes a list of functions returned by
### makeCacheMatrix and computes the inverse if it is not 
### present or gets it from cache if it is. 
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
