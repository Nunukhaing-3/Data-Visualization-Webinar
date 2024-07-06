data(mpg)
attach(mpg)
q=mpg |> 
  select(manufacturer, model,cty,hwy,class) |> 
    pivot_longer(cols=c(cty,hwy)) |> 
    mutate(
        model=fct_reorder(str_glue("{manufacturer}{model}") |> 
                              str_to_title(), value), 
        name=str_to_upper(name)) |> 
    ggplot(aes(model, value, fill=class))+
    geom_boxplot()+
    coord_flip()+
    facet_grid(cols=vars(name))+
    theme_bw()+
    labs(title="Fuel Economy by model",
         x="", y="mpg")
    
    
library(plotly)
ggplotly(q)

ggsave("Fuel Economy by Model.png")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(leaflet)

m = leaflet() %>% addTiles()
m  # a map with the default OSM tile layer

m = m %>% setView(96.149, 16.799, zoom = 5)
m

m %>% addPopups(96.149, 16.799, 'Here is Shwedagon Pagoda, <b>Myanmar</b>.')

m %>% addPopups(96, 16, 'Here is <b>Yangon</b>.')


#===========================================
#install.packages("esquisse")

library(esquisse)
esquisser()

library(ggplot2)

Q <- ggplot(dplyr::starwars) +
 aes(x = height, fill = eye_color) +
 geom_density() +
 scale_fill_hue(direction = 1) +
 labs(title = "Hair color", fill = "Eye color") +
 hrbrthemes::theme_ipsum()

ggplotly(Q)
 
ggsave("Fuel Economy by Model.png")    
