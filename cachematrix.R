## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

Solution:
  
  makeCacheMatrix <- function(x = matrix()) { ##creates cachematrix
    m<-NULL
    set<-function(y){ ##sets matrix
      x<<-y
      m<<-NULL
    }
    get<-function() x ##gets matrix
    setmatrix<-function(solve) m<<- solve ##sets inverse
    getmatrix<-function() m ## gets inverse
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  }

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data") ##check if null matrix if not get cached
    return(m)
  }
  matrix<-x$get() ##gets matrix
  m<-solve(matrix, ...) ##solve matrix for inverse
  x$setmatrix(m)
  m
}