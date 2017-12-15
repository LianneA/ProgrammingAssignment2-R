

##c-is a placeholder
##set- sets the value of the matrix
##get- retrieves the value of the matrix
##setinverse- sets the inverse value of the matrix
##getinverse- retrieves the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  c <- NULL
  set <- function(y)
  {
    x <<- y
    c <<- NULL
  }
  get <- function() x 
  setinverse <- function(inverse) c <<- inverse  
  getinverse <- function() c 
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

##checks the placeholder/cache if empty
##retrieves matrix content
## Returns the inverse function of the matrix. 
##double check if the matrix is inversed, if not inverse the matrix.

cacheSolve <- function(x, ...) {
  c <- x$getinv()
  if(!is.null(c)) {
    message("Retrieving...")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}


