# Load ggplot2
library(ggplot2)

# Read gapminder data into variable gapminder
gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)

# Will show nothing
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) + geom_point()

# Adding color
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent)) + geom_line()

# Adding group, lines, and points
ggplot(data = gapminder, 
       mapping = aes(x = year, y = lifeExp, group = country, color = continent)) + geom_line() + geom_point()


# Adding aesthetics into geom_line and geom_point.
# Lines will be in the backgroud with points on top
ggplot(data = gapminder, 
       mapping = aes(x = year, 
                     y = lifeExp, 
                     group = country)) + 
  geom_line(mapping = aes(color = continent)) + 
  geom_point()

# Poins will be in the background with lins on top
ggplot(data = gapminder, 
       mapping = aes(x = year, 
                     y = lifeExp, 
                     group = country)) + 
  geom_point(mapping = aes(color = continent)) + 
  geom_line()