library(ggplot2)

data(diamonds, package='ggplot2')

diamonds

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(size=1)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(size=1, shape=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, aes(shape=cut)) + 
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=10)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=100)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=200)

ggplot(diamonds, aes(x=price)) + geom_histogram(bins=25, color='red')
ggplot(diamonds, aes(x=price)) + 
    geom_histogram(bins=25, color='red', fill='blue')

ggplot(diamonds, aes(x=price)) + geom_histogram(bins=25, aes(fill=cut))


ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin()

ggplot(diamonds, aes(x=cut, y=price)) + 
    geom_jitter(alpha=1/5, size=1, shape=1, width=0.35, aes(color=carat)) + 
    geom_violin(alpha=1/2, color='grey50', draw_quantiles=c(.25, .5, .75)) + 
    scale_color_gradient('Diamond Size', low='#56B1F7', high='#c91010') + 
    scale_y_continuous(labels=scales::dollar) + 
    labs(x='Cut', y='Price', title='Price vs Cut and Carat')

library(ggthemes)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    theme_economist() + scale_color_economist()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    theme_wsj() + scale_color_wsj()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    theme_few() + scale_color_few()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    theme_excel() + scale_color_excel()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(size=1, shape=1) + 
    theme_excel_new() + scale_color_excel_new()
