## The following functions are aimed to caching the inverse of a matrix.

## makeCacheMatrix will be a function creating a different matrix that can cache the inverse of the input.

makeCacheMatrix <- function(x = matrix()) {
        invf <- NULL
        set1 <- function(y) {
                x <<- y
                inverse <<- NULL
}
get <- function() x
setinv <- function(inverse) invf <<- inverse
getinv <- function() invf
list(set1 = set1, get = get, setinv = setinv, getinv = getinv)

## CacheSolve will be a function calculating the inverse of the previous matrix as a result of makeCacheMatrix function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)){
        message("Cached data")
        return(inv)
}
data <- x$get1()
nv <- solve(data, ...)
x$setinv(inv)
inv
   }     
