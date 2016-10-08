
advertising <- read.csv('data/Advertising.csv')
attach(advertising)


tv.summ <- summary(TV)
tv.var <- var(TV)
tv.mean <- mean(TV)
tv.med <- median(TV)
tv.range <- range(TV)
tv.iqr <- IQR(TV)

sales.summ <- summary(Sales)
sales.var <- var(Sales)
sales.mean <- mean(Sales)
sales.med <- median(Sales)
sales.range <- range(Sales)
sales.iqr <- IQR(Sales)

png('images/histogram-tv.png')
plot(hist(TV))
dev.off()

pdf('images/histogram-tv.pdf')
plot(hist(TV))
dev.off()

png('images/histogram-sales.png')
plot(hist(Sales))
dev.off()

pdf('images/histogram-sales.pdf')
plot(hist(Sales))
dev.off()



sink(file = "data/eda-output.txt", append = TRUE)



sprintf('Mean of TV: %.2f', tv.mean)

sprintf('Variance of TV: %.2f', tv.var)

sprintf('Median of TV: %.2f', tv.med)

sprintf('Range of TV: Lower Bound %.2f
        Upper Bound %.2f', tv.range[1], tv.range[2])

sprintf('Interquartile Range of TV: %.2f', tv.iqr)


sprintf('Mean of Sales: %.2f', sales.mean)

sprintf('Variance of Sales: %.2f', sales.var)

sprintf('Median of Sales: %.2f', sales.med)

sprintf('Range of Sales: Lower Bound %.2f
        Upper Bound %.2f', sales.range[1], sales.range[2])

sprintf('Interquartile Range of Sales: %.2f', sales.iqr)



sink()

detach()
