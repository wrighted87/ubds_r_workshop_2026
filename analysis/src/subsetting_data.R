# Define vector
x <- c(3,4,6,7,8)
x

# Naming a vector
names(x) <- c("a","b", "c", "d", "e")
x

# Access value from vector by index
x[1]

# Access multiple values from vector
x[3:5]

x[c(3,4,5)]

# Index out of value length
x[7]

# There is no zero index in R
x[0]

# Negative Index - prints out everything but what's defined in callout
x[-2]

x[c(-1,-5)]  # Prints out everything but 1st and 5th value

# Redefine vector x without the 4th column (Saving sliced vectors)
x <- x[-4]
x

#####

x <- c(1.1, 2.5, 6.4, 8.7)
names(x) <- c("a","b","c","d")
x

# slice out indexes 3 and 4 Options
x[1:2]
x[c(-3,-4)]
x[c(1,2)]

# Access values from x using names (more reliable)
x[c("a","c")]

# Access values from x using LOGICAl values (TRUE/FALSE)
x[c(TRUE,FALSE,TRUE,FALSE)]
# Do not put True and false and quotes, it'll convert to character instead of 
# calling Logicals

# Subset using logical operators ( < , >, ==)
x         # Verifying contents of x
x[x > 5]  # Access all values in x > 5

x[x < 2]  # Access all values in x < 2

x[x == 2] # You don't anything equal to 2

x

x[x == 2.5]

# Using names to check for logical operations
x[names(x) == "c"]    # Access values in column "c"
names(x) == "c"       # Display logical to show which column has name "c"


##### More Logical operators & and |

#### Using & (AND) operator

# Will return a logical vector
x > 2 & x < 8

# Returns values that meet both criteria
x[x > 2 & x < 8]


#### Using ! (NOT) operator
x

# Returns LOGICALS of where x greater than 2
x > 2

# Returns LOGICALS of where x is not greater than 2
!x > 2


# Call values of x where x > 2
x[x > 2]

# Call values of x where x is not > 2
x[!x > 2]


#### all() and and()
# Conditions must be true for all values (ALL)
all(x > 2)

# Conditions must be true for any value (some)
any (x > 2)


##### Non-unique names
x <- 1:8
x

# Define same name to multiple columns
names(x) <- c("a","a","a","a","b","b","c","d")
x

# Will print out all columns named "a"
x[names(x) == "a"]


##### Using - (negatve) operator for names
x

# Removes the 7th index
x[-7]

# Will throw error
x[-"a"]

# Will only return first value named a
x["a"]

# Returns all values named a
x[names(x) == "a"]

# Returns all values not named a
x[!names(x) == "a"]

# Retuns values named "a" and "d", (but only first 2 "a"s....)
x[names(x) == c("a","d")]
x

# Recycling vecors
names(x) == c("a","d")

length(names(x))
length(c("a","d"))

c("a","c","a","c","a","c","a","c")

names(x)
names(x) == c("a","c")


# %in% operator (Looks for all values where names are defined)
# Look for all values named a and c
names(x) %in% c("a","c")

x[names(x) %in% c("a","c")]


### Do NOT use == to call names, it recycles the vector. Use the %in% function


##### Data type: factors
f <- factor(c("a","a","b","c","c","d"))
f

# Factors have levels. f will have levels a b c and d

# Preserves architecture
f[f %in% c("b","c")]

# Will remove b from factor
f[-3]


#### Matrix
set.seed(1)

# Using random normal distribution
m <- matrix(rnorm(6*4),ncol=4, nrow=6)
m

# Call rows 3 to 4 and columns 1,2
m[3:4,c(1,2)]
m[3:4,1:2]

# Print out a vector
m[3,]
m[4,]

# Print out as matrix instead of vector
m[3, ,drop = FALSE]

# Print out 6th value 
m[6]

# Matrix fills by column and then row
m2 <- matrix(1:24, ncol = 4, nrow = 6)
m2

# Calling 8th position
m2[8]

# Change matrix filling to row then column
m3 <- matrix(1:24, ncol = 4, nrow = 6, byrow = TRUE)
m3

# It will still access it by column and then row
m3[8]

##### List (useful for different datatypes that need to be linked together)
# Matrix is 2D
# array function can go into more dimensions
?array

# mtcars is a preloaded dataset in R
head(mtcars)

xlist <- list(a = "Software Carpentry",
              b = 1:10,
              data = head(mtcars))
xlist

# Access element 1 and 2 (not the values though)
xlist[1:2]

# Will throw an error
xlist[[1:2]]

# To access a value from a particular element
# Will return 2nd element, 1st value
xlist[[2]][1]
# will return all of 2nd element
xlist[[2]]

# Access element named "a"
xlist[["a"]]

# Access element named "b"
xlist[["b"]]

# Print out values of element data
xlist$data

##### Subsetting dataframe
gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)

# Dataframes are lists
# Create a vector of first 6 values under pop
head(gapminder[["pop"]])

# head(gapminder[["pop"]], drop = FALSE)

#Print out all rows of columns 1:3 (subsetting dataframe)
gapminder[,1:3]

# Go google what this is doing, but this will return all columns where 
# lifeExp > 80
gapminder[gapminder$lifeExp > 80,]
