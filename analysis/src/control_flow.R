#### if statement
 
x <- 8

# Won't print anything
if(x >= 10){
  print("x is greater than or equal to 10")
}

#### if ... else statement
# Will print statement after else
if(x >= 10){
  print("x is greater than or equal to 10")
} else {
  print("x is less than 10")
}

#### Multiple if ... else for multiple testing conditions (Nested if/else)
if (x >= 10){
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is 5 or less")
}

# Conditions are tested in order they are written


# Use logical values directly
x <- 4 == 3
x

if (x) {
  print("4 equals 3")
} else {
  print("4 does not equal 3")
}

### Ifelse function (can be nested, but harder to read)
y = -3
ifelse(y < 0,"y is a negative number","y is either zero or positive")

# multiple logicals 
x <- c(TRUE, TRUE, FALSE)

# Will throw an error because it only access a single value
if (x) {
  print("x is TRUE")
}

# Will look at all values and see if any are true
if (any(x)){
  print("At least one value of x is TRUE")
}

# Will look at all values and see if all are true
if (all(x)){
  print("All values of x are TRUE")
} else {
  print("Not all values of x are TRUE. At least one is FALSE")
}

# for loop
for (i in 1:10) {
  print(i)
}

# Nested for loops
for (i in 1:5) {
  for (j in c("a","b","c","d","e")) {
    print(paste(i,j))
  }
}

for (j in c("a","b","c","d","e")) {
  for (i in 1:5) {
    print(paste(i,j))
  }
}

output_vector <- c()

for (i in 1:5) {
  for (j in c("a","b","c","d","e")) {
    temp_output <- paste(i,j)
    output_vector <- c(output_vector, temp_output)
  }
}

output_vector


# Predefining the output size saves computational resources
output_matrix <- matrix(nrow = 5, ncol = 5)
j_vector <- c("a","b","c","d","e")

for (i in 1:5) {
  for (j in 1:5){
    temp_j_value <- j_vector[j]
    temp_output <- paste(i, temp_j_value)
    output_matrix[i,j] <- temp_output
  }
}
output_matrix

# Coerce output matrix into vector
output_vector2 <- as.vector(output_matrix)
output_vector2


# While loops (not as commonly used)
z <- 1

while (z > 0.1) {
  z <- runif(1)
  cat(z, "\n")
}


# Will add lines
z <- 1
while (z > 0.1) {
  z <- runif(1)
  print(z)
}















