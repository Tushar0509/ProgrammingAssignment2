## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  j = NULL
  set = function(x = matrix()){
    x = -y
    j = NULL
  }
  get = function()x
  setInverse = function(inverse)j<<-inverse
  getInverse = function()j
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
##makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.
##cacheSolve: This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
mat <- x$get()


cacheSolve <- function(x, ...) {
        ## Returning a matrix that is the inverse of 'x'
 
  j = x$getInverse()
  if(!is.null(j)){
    message("Getting Cached Data")
    return(j)
  }
  mat = x$get()
  j = solve(mat,...)
  x$setInverse(j)
  j
}

