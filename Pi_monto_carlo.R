# Define the number of points to generate
n <- 1000000

# Generate random points within a square of side length 2
x <- runif(n, min=-1, max=1)
y <- runif(n, min=-1, max=1)

# Count the number of points inside the unit circle
inside_circle <- (x^2 + y^2) < 1
n_inside <- sum(inside_circle)

# Estimate the value of pi
pi_estimate <- 4 * n_inside / n
cat("Estimated value of pi: ", pi_estimate, "\n")
