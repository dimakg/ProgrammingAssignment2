## These two functions will cashe the inverse of a new matrix


## function creates a new list that contains matrix to be inversed and cashed.

makeCacheMatrix <- function(x = matrix()) {
  mInverse <- NULL
  set <- function(y){
    x<<-y
    mInverse <<- NULL
  }
  
  get <- function(){
    x
  }
  setInverse<-function(inv){
    mInverse<<-inv
  }
  
  getInverse<-function(){
    mInverse
  }
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Function to inverse the matrix and cashe it

cacheSolve <- function(x, ...) {
  mInverse<-x$getInverse()
  if(!is.null(mInverse)){
    message("Getting cached value")
    return(mInverse)
  }else{
    message("Cashing new value")
    newInverse <- solve(x$get())
    x$setInverse(newInverse)
    return(newInverse)
  }
  
}