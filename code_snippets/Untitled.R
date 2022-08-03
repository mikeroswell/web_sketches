# install.packages("osmdata")

library(osmdata)

x <- getbb(place_name = "Bratislava") 
y <- opq(x)


z <- add_osm_feature(y, key = 'boundary', value = 'postal_code',,
                  value_exact = F, key_exact = F) 


w <- osmdata_sf(z)

"831 01" %in% w$osm_multipolygons$postal_code

w$osm_multipolygons$osm_id

ggplot(w)    
plot(w)
sf::plot_sf(w)
+geom_sf(data = w)

plot(w$osm_lines)
points(w$osm_points)

