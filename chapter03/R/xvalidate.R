library(snow)
n <- 100
set.seed(123)

# generate data
x <- rnorm(n)
y <- x + rnorm(n)
rand.data <- data.frame(x, y)

# create samples
K <- 10
samples <- split(sample(1:n), rep(1:K, length = n))

#  Cross-validation function
cv.fold.fun <- function(index) {
  fit <- lm(y~x, data = rand.data[-samples[[index]],])
  pred <- predict(fit, newdata = rand.data[samples[[index]],])
  return((pred - rand.data$y[samples[[index]]])^2)
}

#####  Sequential version
res.fun   <- lapply(seq(along = samples), cv.fold.fun)
mean(unlist(res.fun))

#####  Parallel version
# create the cluster object
cl <- makeMPIcluster(4)
# export the data to the workers
clusterExport(cl, list("rand.data", "samples"))
# run the function on all the workers
snowres.fun <- parLapply(cl, seq(along=samples), cv.fold.fun)
# get the mean of the collected result
mean(unlist(snowres.fun))

# always stop the cluster when done
stopCluster(cl)

#####  Compare results to sequential version
all.equal(res.fun, snowres.fun)
