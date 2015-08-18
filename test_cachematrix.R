source('cachematrix.R')

-- 
d <- matrix(c(3,-7,5,2),2,2)
tst <- makeCacheMatrix(d)
tst$get()
tst$setinv(solve(d))
tst$getinv()
cacheSolve(tst)

d <- matrix(c(3,4,1,2),2,2)
tst <- makeCacheMatrix(d)
tst$get()
tst$setinv(solve(d))
tst$getinv()
cacheSolve(tst)
# > tst$getinv()
# [,1] [,2]
# [1,]    1 -0.5
# [2,]   -2  1.5

d <- matrix(c(4,1,3,1),2,2)
tst <- makeCacheMatrix(d)
tst$get()
tst$setinv(solve(d))
tst$getinv()
cacheSolve(tst)
# [,1] [,2]
# [1,]    1   -3
# [2,]   -1    4

d <- matrix(c(3,6,2,4),2,2)
tst <- makeCacheMatrix(d)
tst$get()
tst$setinv(solve(d))
tst$getinv()
cacheSolve(tst)
# > cacheSolve(tst)
# Show Traceback
# 
# Rerun with Debug
# Error in solve.default(data, ...) : 
#   Lapack routine dgesv: system is exactly singular: U[2,2] = 0 
