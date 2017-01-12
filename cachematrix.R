## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  getinv <- function() m<<-solve(x)
  list(getinv=getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m<-makeCacheMatrix(x)$getinv()
  if(is.null(m)){
   print("cache inverse matrix")
    return(m)
  }
  print("calculated")
 solve(x)
}
