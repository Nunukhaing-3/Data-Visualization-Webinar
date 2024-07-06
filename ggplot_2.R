# Install packages

# ggplot= Grammar of graphics

install.packages(c("tidyverse","ggplot2","ggxmean","ggpattern","plotly"))

# Loading packages ----

library(tidyverse)
library(ggplot2)

data(mpg)


# Only one discrete variable ----
# Bar chart----

ggplot(mpg,              # data
       aes(class)) +      # variable
    geom_bar(fill=rainbow(7))   +         # plot function
    labs(title="Different class of the cars",
         x= "Class of the cars",
         y= "Frequency")+
    theme_classic(16)+
    theme(plot.title = element_text(hjust=0.5))+
    theme(axis.text.x = element_text(angle=90))
 
# Bar chart with pattern ----   
 library(ggpattern)   
    
 ggplot(mpg,              # data
       aes(class)) +      # variable
    geom_bar_pattern(fill=rainbow(7),
                     pattern="pch"
                     )   +         # plot function
    labs(title="Different class of the cars",
         x= "Class of the cars",
         y= "Frequency")+
    theme_classic(16)+
    theme(plot.title = element_text(hjust=0.5))+
    theme(axis.text.x = element_text(angle=90)) 
    
  

 # Two variables (one discrete and one continuous)  ----
 
 # Bar chart with pattern ---- 
 
 ggplot(mpg,              # data
       aes(hwy, class)) +      # two variables
    geom_col_pattern(
                     aes(pattern=class,
                         fill=class)
                     )   +         # plot function
    labs(title="Fuel economy of different cars",
         x= "Fuel",
         y= "Class of the cars")+
    theme_classic(16)+
    theme(plot.title = element_text(hjust=0.5))
     


  #One continuous variable ----
 
  # Histogram ---- 
  ggplot(mpg,
         aes(hwy))+
      geom_histogram(fill="plum",
                     color="gray1")
  
  # Density plot ----
  ggplot(mpg,
         aes(hwy))+
      geom_density(fill="plum",
                     color="gray1")
 
  # Density plot with pattern ----
  ggplot(mpg,
         aes(hwy))+
      geom_density_pattern(aes(fill=class),
                     color="gray1")+
      theme_bw()+
      facet_wrap(~class)
  

 
 # Two variables (continuous)  ----
  
  # Scatter plot ----
  ggplot(mpg,
         aes(hwy, cty)) + # x=hwy, y=cty
         geom_point(aes(shape=class),
                    size=3)+     # Scatter plot
        theme_bw(17)+
     ggtitle("CTY vs. HWY")
  
  # Label plot ----
  ggplot(mpg,
         aes(hwy, cty)) + # x=hwy, y=cty
         geom_label(aes(label=hwy,color=class))  +   # Label plot
                   facet_wrap(~factor(cyl))+
      theme_bw()
  
 
 # Two variables (continuous) and one discrete variable ----
 
 ##  Scatter plots of different groups ---- 
  ggplot(mpg,
         aes(hwy, cty)) + # x=hwy, y=cty
         geom_point(aes(shape=class))+     
      theme_bw()+
      facet_wrap(~class, ncol=1)        # group layout for categorical variables
  
  
  
  
  
    
