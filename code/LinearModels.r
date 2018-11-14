data(tips, package='reshape2')
library(ggplot2)
library(coefplot)
library(useful)

ggplot(tips, aes(x=total_bill, y=tip)) + geom_point() + geom_smooth(method='lm')

sum((tips$total_bill - mean(tips$total_bill))*(tips$tip - mean(tips$tip))) / 
    sum((tips$total_bill - mean(tips$total_bill))^2)


tip1 <- lm(tip ~ total_bill, data=tips)
tip1

0.92 + 0.105*20
0.92 + 0.105*30
0.92 + 0.105*15

summary(tip1)
