## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This funky function creates a matrix that will cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Write a short comment describing this function
## This function takes the matrix created by his buddy makeCacheMatrix and figures out the inverse.
## If the inverse has already been calculated, then he he will go get it. He's cool like that.
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
