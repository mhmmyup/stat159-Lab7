advertising <- read.csv('data/Advertising.csv')
attach(advertising)

sales.reg <- lm(Sales ~ TV)
sales.reg.summ <- summary(sales.reg)


png('images/scatterplot-tv-sales.png')

plot(TV,Sales, main = "Television Advertising vs. Sales 
     Scatterplot and Fitted Regression Line")
abline(sales.reg)

dev.off()



pdf('images/scatterplot-tv-sales.pdf')

plot(TV,Sales, main = "Television Advertising vs. Sales 
     Scatterplot and Fitted Regression Line")
abline(sales.reg)

dev.off()

save(sales.reg, sales.reg.summ, file = "data/regression.RData")

detach()
