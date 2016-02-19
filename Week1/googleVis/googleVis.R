suppressPackageStartupMessages(library(googleVis))

M <- gvisMotionChart(Fruits, "Fruit", "Year", options = list(width=600, height=400))
plot(M)


G <- gvisGeoChart(Exports, locationvar = "Country", colorvar = "Profit", options=list(width=600, height=400))
plot(G)


G1 <- gvisGeoChart(Exports, locationvar = "Country", colorvar = "Profit", options=list(width=600, height=400, region=150))
plot(G1)