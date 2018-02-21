### Leaflet For R ###

.libPaths()

install.packages("leaflet")
library(leaflet)

m <- leaflet() # Create a map widget with Interactive panning/zooming but no base map (blank)
m

m <- leaflet() %>% 
  addTiles()
m

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") %>%
  addCircles(lng=174.769, lat=-36.853)
m
leaflet() %>% addCircles(data = df, lat = ~ Lat, lng = ~ Long) # Ploting lat log from a set of data "df" with latitute column named as "lat" and longitude column as "long"


?setView # sets the center of the map view and the zoom level
?fitBounds() # fits the view into the rectangle [lng1, lat1] - [lng2, lat2]

m = leaflet() %>% addTiles()
df = data.frame(
  lat = rnorm(100),
  lng = rnorm(100),
  size = runif(100, 5, 20),
  color = sample(colors(), 100)
)
df

m = leaflet(df) %>% addTiles()
m
m %>% addCircleMarkers(radius = ~size, color = ~color, fill = FALSE)
m %>% addCircleMarkers(radius = runif(100, 4, 10), color = c('red'))

m %>% addProviderTiles(providers$Stamen.Toner)
m %>% addProviderTiles(providers$CartoDB.Positron)
m %>% addProviderTiles(providers$Esri.NatGeoWorldMap)


# leaflet R
# https://rstudio.github.io/leaflet/basemaps.html
# http://leaflet-extras.github.io/leaflet-providers/preview/index.html
# https://github.com/leaflet-extras/leaflet-providers
# http://leaflet-extras.github.io/leaflet-providers/preview/#filter=Esri
# http://leafletjs.com/reference-1.0.0.html#map-option
# https://www.youtube.com/results?search_query=leaflet+R
# https://github.com/Leaflet/Leaflet/blob/master/FAQ.md
# https://stackoverflow.com/questions/44678039/how-to-use-the-google-satellite-view-as-tile-in-leaflet-with-r
