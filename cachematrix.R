## makeCacheMatrix creates a special "matrix", which is really a list containing a function to

## Step-1 Setting the value of the Matrix
## Step-2 Getting the value of the Matrix
## Step-3 Setting the value of the Inverse of Matrix
## Step-4 Getting the value of the Inverse of Matrix

## cacheSolve function finds out the inverse of the matrix. 
## But it first checks if inverse is already calculated value is returned else it computes the calculates the inverse of the data and store it in cache.

## Function to calculate inverse of a matrix and use cache if it has already been calculated in the past
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
	set <- function(y){
	        x <<- y
	        m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Function to store the inverse of matrix (Cache in 'memory' for future use)
cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m)){
		print("Cached value found!")
		return(m)
	}
	data = x$get()
	m <- solve(data)
	x$setinverse(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
