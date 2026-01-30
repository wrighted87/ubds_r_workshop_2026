# Writing the data frame to a file
write.csv(cats, "data/feline-data.csv",
          row.names = FALSE)

# Reading the dataframe to a variable
cats <- read.csv("data/feline-data.csv")

cats

# Defining a new column (vector)
age <- c(2, 3, 5)

# Combining the age column to the original cats data frame
cbind(cats, age)


nrow(cats)
length(cats)

age <- c(2, 3, 5)
age

cats <- cbind(cats, age)
cats


# Adding new rows (list)

newRow <- list("tortoise", 3.3, TRUE, 9)
newRow

cats <- rbind(cats, newRow)
cats


# Append two data frames
cats2 <-rbind(cats, cats)
cats2

# Make new dataframe
df <- data.frame(
  first_name = c("Emma","Robert"),
  last_name = c("Wright","Nicolson"),
  lucky_number = c(13,8)
)
df

# Gapminder dataset
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")

gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv")

str(gapminder)

# Prints out a summary of dataframe
summary(gapminder)

# Type and structure of columns
typeof(gapminder$country)
typeof(gapminder$year)
str(gapminder$year)
str(gapminder$continent)

nrow(gapminder)
ncol(gapminder)

dim(gapminder)

names(gapminder)

colnames(gapminder)


#Length for dataframes
length(gapminder)

head(gapminder)
head(gapminder, n = 10)

tail(gapminder)



