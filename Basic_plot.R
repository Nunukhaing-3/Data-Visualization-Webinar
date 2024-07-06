

# Only one continuous data ----
##  1) Histogram ----

hist(dist)

##  2) density plot  (Kernel density) ----
plot(density(dist))

##  3) Frequency polygon ----
polygon(density(dist))

##  4) boxplot ----
boxplot(dist)


# Only discrete data (Categorical data) ----
##  1) pie chart ----
Count <- table(PlantGrowth$group)
pie(Count)

data("mpg")
##  2) bar chart ----
Count2 <- table(mpg$class)
barplot(Count2)

data(mtcars)
attach(mtcars)
table(factor(gear))
barplot(table(factor(gear)))

# One Discrete and One continuous data ----
##  1)boxplot ----
boxplot(mpg ~ gear, data=mtcars)

df<-data.frame(x = c("A","B","C","D","E","F","G"), 
			y = c(10,23,32,65,16,89,78)) 
attach(df)

barplot(df$y, 
        names.arg = df$x, col = "yellow") 

# Create the data for the chart
A <- c(17, 2, 8, 13, 1, 22)
B <- c("Jan", "feb", "Mar", "Apr", "May", "Jun")

# Plot the bar chart
barplot(A, names.arg = B, xlab ="Month",
		ylab ="Articles", col ="green",
		main ="GeeksforGeeks-Article chart")


library(ggplot2) 

df<-data.frame(x = c("A","B","C","D","E","F","G"), 
			y = c(10,23,32,65,16,89,78)) 

ggplot(df, aes(x, y, group = 1))+ 
geom_bar(stat = "identity", fill=2:8,
         color="grey2")+ 
geom_line(color = "red", linewidth=1)+ 
geom_point(color = "blue")+
    theme_bw()

library(ggpattern)
ggplot(df, aes(x, y, group = 1))+ 
geom_bar_pattern(stat = "identity", fill=2:8,
         color="grey2")+ 
geom_line(color = "red", linewidth=1)+ 
geom_point(color = "blue")+
    theme_bw()


##  2) violin plot ----
library(vioplot)
vioplot(mpg ~ cyl, data=mtcars)        

# Two continuous data ----
##  1) scatterplot ----
attach(cars)
plot(dist,speed)

##  2) label chart
##  3) Text cahrt


# Two discrete data ----
##  1) Mosaic Plot ----
mosaicplot(cyl~gear, 
           data = mtcars,col=2:4)


# Time Series data
##  Line Graph ----
# (A line chart is a graph that connects a series of points by drawing line segments between them)

data("AirPassengers")
plot(AirPassengers)

Time <- c(2000, 2005, 2010, 2015, 2020)
buses <- c(200, 300, 500, 700, 600)

plot(Time, buses,
     type="s",
     main = "Line Graph", 
     col="red")


library(GGally)
 
# 
data(tips, package = "reshape")

ggpairs(tips[,1:3],
        ggplot2::aes(fill=sex))
