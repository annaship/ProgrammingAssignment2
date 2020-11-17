## Put comments here that give an overall description of what your
## functions do
# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

# makeVector <- function(x = numeric()) {
#         m <- NULL
#         set <- function(y) {
#                 x <<- y
#                 m <<- NULL
#         }
#         get <- function() x
#         setmean <- function(mean) m <<- mean
#         getmean <- function() m
#         list(set = set, get = get,
#              setmean = setmean,
#              getmean = getmean)
# } 

makeCacheMatrix <- function(x = matrix()) {
  m_cashe <- NULL
  set <- function(new_val) {
    x <<- new_val
    m_cashe <<- NULL
  }
  get <- function() x
  set_inverse <- function(solve) m_cashe <<- solve
  get_inverse <- function() m_cashe
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
