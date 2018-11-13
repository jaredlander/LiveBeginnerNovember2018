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
diamonds %>% filter(cut != 'Ideal')

diamonds %>% mutate(price / carat)
diamonds %>% mutate(Ratio = price / carat)

diamonds %>% summarize(mean(price))
diamonds %>% summarize(mean(price), sum(carat))
diamonds %>% summarize(AvgPrice=mean(price), TotalSize=sum(carat))

diamonds %>% group_by(cut)

diamonds %>% group_by(cut) %>% summarize(AvgPrice=mean(price))

diamonds %>% 
    group_by(cut) %>% 
    summarize(AvgPrice=mean(price), TotalSize=sum(carat))

diamonds %>% count(cut)
diamonds %>% group_by(cut) %>% summarize(n=n())

diamonds %>% 
    select(carat, price, cut) %>% 
    filter(carat > 1) %>% 
    group_by(cut) %>% 
    summarize(AvgPrice=mean(price), TotalSize=sum(carat)) %>% 
    arrange(AvgPrice)

arrange(
    summarize(
        group_by(
            filter(
                select(
                    diamonds, carat, price, cut), 
                carat > 1), 
            cut), 
        AvgPrice=mean(price), TotalSize=sum(carat)), 
    AvgPrice
)