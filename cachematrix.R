## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        s <- NULL
	
        set <- function(y) {
                x <<- y
                m <<- NULL
		s <<- NULL
        }

        get <- function() x

        setmean <- function(mean) m <<- mean

        getmean <- function() m

        setsolve <- function(solve) s <<- solve

        getsolve <- function() s
	

        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean,
	     setsolve = setsolve,
	     getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        		i<- x$getsolve()
		
		if (is.null(i))
		{
			y<-x$get()
			i<<-solve(y)
			x$setsolve(i)					
			i
		}	
		else
		{
			return(i)
		}
}
