## These are two function which create a function (assuming in is invertible), finds the inverse, and then
## stores these two in cache

## This  function creates a list of functions to get & set
## the inverse in the second function

makeCacheMatrix <- function(x = matrix()) {
        m <-NULL    
        
        set<-function (y){    
                x<<- y
                m<<- NULL
        }
        get<- function () x
        setmatrix<- function(solve) m<<-solve
        getmatrix<- function () m
        list(get=get,set=set,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
        
}


## This function calculates the inverse of the matrix that was created in makeCacheMatrix
## If the inverse matrix is not in the cache, it is created and stored in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
        m<- x$getmatrix()
        if (!is.null(m)){
                message("getting the cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix,...)
        x$setmatrix(m)
        
        m
}
