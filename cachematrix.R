## comments
# Matrix inversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeatedly. The
# following two functions are used to cache the inverse of a matrix
# Caching reduces the time of analysis
# It is important mostly when the function is going to be used over and over 
# Reduces the time of computing 


## Write a short comment describing this function
# will create a makeCacheMatrix which creates a list containing
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        Invs<-NULL
        Set<-function(y) {
        x<<-y 
        Invs<<-NULL                
}
get<-function()x
setinverse<-function(inverse)Invs<<-inverse
getinverse<-function()Invs
list(set=set,get=get,
setinverse=setinverse,
getinverse=getinverse)
}
## Write a short comment describing this function
#function 2  calculates the inverse of a matrix created wit the makeCatchMatrix function 1 above.
#the difference is this function 2 will first check if the inverse has been calculated
#If it has been calculated, it will get the inverse from the cache and skip computation 
 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        Invs<-x$getinverse()
	if(!is.null(Invs)){
		message("getting cached data")
		return(Invs)
}
        data<-x$get()
	Invs<-solve(data)
	x$setinverse(Invs)
        Invs
}
