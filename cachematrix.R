##creates a cache
makeCacheMatrix <- function(x = matrix()) {
      im <- NULL
##cache the original data
      set <- function(y) {
      	x <<- y
      	im <<- NULL
	}

##get the original data
	get <- function() x

##set the matrix inversion
	setsolve <- function(solve) im <<- solve

##get the matrix inversion
	getsolve <- function() im

##insert into the cache list
	list(set = set, get = get,
		setsolve = setsolve,
		getsolve = getsolve)
}


##compute the inversion
cacheSolve <- function(x, ...) {
##check if there is cached matrix inversion, if yes, return the cached one
	im <- x$getsolve()
	if(!is.null(im)) {
		message("getting cached data")
		return(im)
	}

##compute the matrix inversion
	data <- x$get()
	im <- solve(data, ...)

##save to the cache and return the matrix inversion
	x$setsolve(im)
	im
}
