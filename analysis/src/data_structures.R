# Data Structures and Types

# There are five data types in R

# This is a double
double_var <- 3.14
typeof(double_var)

double_var_2 <- 1
typeof(double_var_2)

# This is an integer
int_var <- 4L      # Adding "L" forces it to be an integer
typeof(int_var)

# This is a complex number
complex_var <- 1 + 1i
typeof(complex_var)

# This is a LOGICAL
logical_var <- TRUE
typeof(logical_var)

# This is a character
char_var <- "This is a character"
typeof(char_var)

45 + "word"

5 * "a"

# Collections (Groups of Data)
# Vectors

my_vector <- vector(length = 3)
my_vector

another_vector <- vector(mode='character', length=3)
another_vector

str(another_vector)
str(my_vector)

another_vector[1]

double_vector <- c(5, 7, 9)
double_vector
double_vector[3]

# We can change values in a vector by index
double_vector[1] <- 13
double_vector


# What about if we define vectors with multiple data types?

multi_vector <- c(2, 6, '3')
multi_vector

coercion_vector <- c('a', TRUE)
coercion_vector
str(coercion_vector)
str(multi_vector)

# Type coercion flow
# Logical > integer > double > complex > character

another_coercion_vector <- c(4, TRUE)
another_coercion_vector

# We can go against the coercion flow
character_vector <- c('0', '2', '4')
character_vector

converted_vector <- as.double(character_vector)
converted_vector

# Lists
list_example <- list(1, "a", TRUE, 1+4i)
list_example
str(list_example)

# Lists can hold multiple tyes

# Lists are accessed a little differently
list_example[[2]]

# We can add metadata to lists
another_list <- list(
  title = "Numbers",
  numbers = 1:10,
  data = TRUE
)

another_list

another_list$title
another_list$numbers
str(another_list$numbers)

# Matrix

matrix_example <- matrix(0, nrow=6, ncol=3)
matrix_example

# Tell the number of rows and columns
dim(matrix_example)
typeof(matrix_example)

#We can check numbers of rows and columns
nrow(matrix_example)
ncol(matrix_example)

matrix_example[1,1]

matrix_example_2 <- matrix_example + 2
matrix_example_2

matrix_exam * matrix_example_2


# Dataframes let you mix data types
# Each column has to be the same data type
# Each row has to have the same number of columns
cats <- data.frame(
  coat = c("calico", "black","tabby"),
  weight = c(2.1, 5.0, 3.2),
  likes_catnip = c(1, 0, 1)
)

typeof(cats)  # Underlying object computer using
str(cats)
class(cats)   # What the human is using

# We can access columns by name
cats

cats$weight
cats$coat

# We can perform operations
cats$weight + 2

cats$weight + cats$likes_catnip

cats$weight + "word"  #Will throw error

# Paste is the print function
paste("My cat is", cats$coat)

typeof(cats$weight)

# Lets add a new row to our dataframe
additional_cat <- data.frame(
  coat = "tabby",
  weight = "2.3 or 2.4",
  likes_catnip = 1
)

additional_cat

# Will change weight column to character
combined_cats <-rbind (cats, additional_cat)  
combined_cats

typeof(cats$weight)
typeof(combined_cats$weight)

# Access a dataframe item
cats[1,1]
cats

# Call first column
cats[,1]

# Call first row
cats [1,]































