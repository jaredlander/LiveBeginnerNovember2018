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


head(tips)

tip2 <- lm(tip ~ total_bill + size, data=tips)
summary(tip2)

0.668 + 0.092*30 + 0.192*1
0.668 + 0.092*30 + 0.192*2
0.668 + 0.092*45 + 0.192*2

library(broom)

tidy_tip2 <- tidy(tip2)
head(tidy_tip2)
aug_tip2 <- augment(tip2)
head(aug_tip2)

ggplot(aug_tip2, aes(x=tip, y=.fitted)) + geom_point() + 
    geom_smooth() + geom_abline()

summary(tip2)
coefplot(tip2, sort='magnitude')
