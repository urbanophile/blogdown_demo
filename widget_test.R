library(pscl)  # for prussian horse kick data

library(plotly)
library(tidyverse)
library(htmlwidgets)
library(ggplot2)
library(magrittr)


df <- data(prussian)

main_dir <- getwd()
widget_dir <- file.path(main_dir, "widgets")

region_bar <- prussian %>%
  select(y, year) %>%
  group_by(year) %>%
  summarise(freq = sum(y)) %>%
  ggplot(aes(y = freq, x = year)) + 
  geom_point()  
region_bar

# save widget
graph <- ggplotly(region_bar)
html_graph <- as_widget(graph)
saveWidget(html_graph, file.path(widget_dir, "example_scatter.html"), selfcontained = FALSE)
saveWidget(html_graph, file.path(widget_dir, "selfcontained_scatter.html"))

