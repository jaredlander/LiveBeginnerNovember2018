data(tips, package='reshape2')
head(tips)

tips$tip
mean(tips$tip)

library(ggplot2)
ggplot(tips, aes(x=tip)) + geom_histogram()

t.test(tips$tip, mu=2.5, alternative='two.sided')

t.test(tip ~ sex, data=tips)
