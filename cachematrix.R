## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The first function i have here is going to chace the matrix data
## I am getting a matrix as an input to my function 
## The function will return a list of 4 function that helps us to get, set , getinverse and setinverse of the matrix
##
makeCacheMatrix <- function(x = matrix()) {
  inversetemp <- NULL
  set <- function(y) {
    x <<- y
    inversetemp <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inversetemp <<- inverse
  getinverse <- function() inversetemp
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## This function returns the inverse of a matrix but if first checks the cache we created in the above function 
## If it available in cache it returns the value from cache if not do perform the inverse again and return the inverse of the matrix


cacheSolve <- function(x, ...) {
  inversetemp <- x$getinverse()
  if(!is.null(inversetemp)) {
    message("Function is getting cache data")
    return(inversetemp)
  }
  data <- x$get()
  inversetemp <- solve(data)
  x$setinverse(inversetemp)
  inversetemp
}
