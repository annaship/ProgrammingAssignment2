# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.

# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

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

# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.s

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m_cashe <- x$get_inverse()
  if(!is.null(m_cashe)) {
         message("getting cached data")
         return(m_cashe)
  }
  data <- x$get()
  m_cashe <- solve(data, ...)
  x$set_inverse(m_cashe)
  m_cashe
}
