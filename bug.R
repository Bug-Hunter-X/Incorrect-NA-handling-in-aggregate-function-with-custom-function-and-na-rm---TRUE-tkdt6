```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, NA, 9, 10))

# Incorrect use of na.rm = TRUE in aggregate function
result <- aggregate(data$y, by = list(data$x), FUN = function(z) mean(z, na.rm = TRUE))

# Print result
print(result)
```