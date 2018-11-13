library(dplyr)

data(diamonds, package='ggplot2')
diamonds

head(diamonds)
head(diamonds, n=8)
head(diamonds, n=3)

tail(diamonds)
tail(diamonds, n=2)

tail(head(diamonds, n=4), n=1)

head(diamonds)
diamonds %>% head()
head(diamonds, n=4)
diamonds %>% head(n=4)

tail(diamonds, n=3)
diamonds %>% tail(n=3)

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)

# ctrl-shift-M

diamonds

select(diamonds, carat, price)
diamonds %>% select(carat, price)

diamonds %>% filter(carat > 1)
diamonds %>% filter(cut == 'Ideal')
diamonds %>% filter(carat > 1 & cut == 'Ideal')
diamonds %>% filter(carat > 1 | carat < 0.4)

