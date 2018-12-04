
cat("\014")  


############################################################
##            Plotly: interactive graphics                ##
##                    html graphics                       ##
############################################################

#If you want to share visualization https://plot.ly

#install.packages("plotly")
library("plotly")


# Playing with mtcars

data(mtcars)
head(mtcars,6)

plot <- plot_ly(mtcars, x= mtcars$wt, y =mtcars$mpg, mode = "markers", color = mtcars$disp)
plot

plot <- plot_ly(mtcars, x= mtcars$wt, y =mtcars$mpg, mode = "markers", color = as.factor(mtcars$cyl), size = mtcars$hp)
plot

htmlwidgets::saveWidget(as_widget(plot), "index.html")


# example of three dimensional scatterplot

temp <- rnorm(100, mean =30, sd =5)
pressure <- rnorm(100)
dtime <- 1:100
plot_ly(x = temp, y = pressure, z = dtime, type = "scatter3d", mode = "markers", color = temp)