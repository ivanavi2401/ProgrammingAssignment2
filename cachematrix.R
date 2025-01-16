## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<- NULL
        set<- function(){
          x <<- x
          m <<-NULL
        }
        get <- function() x
        setresult <- function(result) m<<- result
        getresult <- function() m
        list(set=set,get=get,
             setresult=setresult,
             getresult=getresult)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if ( is.null(x$getresult()) )
        {
          x$setresult( solve(x$get()) )
          return( x$getresult() )
        }
        message("Getting cache result")
        x$getresult() 
}
