```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, NA, 9, 10))

# Correct approach: handle NAs before aggregation
data_cleaned <- na.omit(data)
result <- aggregate(data_cleaned$y, by = list(data_cleaned$x), FUN = mean)

#Alternative approach using a custom function with explicit NA handling
result2 <- aggregate(data$y, by = list(data$x), FUN = function(z) {
  z <- z[!is.na(z)]
  if (length(z) == 0) return(NA) 
  mean(z)
})

# Print result
print(result)
print(result2)
```