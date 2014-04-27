ProgrammingAssignment2
======================

a cache for matrix inversion

Matrix inversion is usually a costly computation and it may be some benefit to caching the inverse of a matrix rather than compute it repeatedly. The project is to create a cache for the Matrix inversion.
There are two functions for caching matrix inversion. The first function, makeCacheMatrix creates a list containing a function to

1.	set the value of the matrix
2.	get the value of the matrix
3.	set the value of the inversion
4.	get the value of the inversion

The second function, cacheSolve calculates the inversion of the matrix created with the above function. However, it first checks to see if the inversion has already been calculated. If so, it gets the inversion from the cache and skips the computation. Otherwise, it calculates the inversion of the data and sets the value of the inversion in the cache via the setsolve function.
