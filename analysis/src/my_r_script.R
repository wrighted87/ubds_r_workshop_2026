# This is a comment
100 + 101
3 + 5 * 10       # R natively respects the order of operations

# Help me remember order of operations
3 + (5 * 10)

# I want to add first
(3 + 5) * 10

# Do I need a multiplication symbol? Yes
# (3 + 5) 10

# Exponents 
3 ^ 2

# Are these equal?
10 == 10
9 == 10

# Only use Boolian logic on integers. 
# Because computers aren't great with decimals.
10.01 == 10.01
10.01 == 10.000000001
10.0 == 10.0000000000000000000000000000000000000000000000000001

# What do fractions look like?
2/10000
50000000/2

# R has fuctions 
getwd()   # Get working directory
sin(1)    # Take the sine of the radian 1

# R is like math
x <- 1/40 # Assign a value to x
x = 1/100 # You can see = but it is less common. See help file

# R has vectors
1:5
x <- 3:10

# Vectors can be used in computations
2 ^ (x)

# Install packages
install.packages("tidyverse")
library(tidyverse)

install.packages("dplyr")
library(dplyr)