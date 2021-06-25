## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##there are two functions makeCacheMatrix,makeCacheMatrix
##makeCacheMatrix consists of set,get ,setInv, getInv
makeCacheMatrix <- function(x = matrix()) {
 inv<- NULL                               #initializing Inverse as NULL
    set <- function(y){
    x <<- y
    inv <<- NULL 
    
} get <- function() {x}                    #function to get matrix x
      setInverse <- function (inverse) {inv <<- inverse}
      getInverse <- function(){inv}
      list(Set =set, get = get, setInverse =setInverse, getInverse =getInverse)
}
           

## Write a short comment describing this function
##This is used to get the cache data 
cacheSolve <- function(x, ...) {  ## gets cache data 
        
        inv <-x$getInverse()
  if(!is.null(inv)){                   ##cheking whether inverse is NULL
    message("getting cached data")
    return (inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
        
        
        ## Return a matrix that is the inverse of 'x'
}
