library(sf)
library(raster)
library(ggplot2)
library(here)

shape <- st_read("WindLeases/Offshore_Wind_Leases.shp")

shoals <- shape[shape$LEASE_NUMB%in%c("OCS-A 0486",
                                      "OCS-A 0517",
                                      "OCS-A 0487",
                                      "OCS-A 0500",
                                      "OCS-A 0501",
                                      "OCS-A 0534",
                                      "OCS-A 0561",
                                      "OCS-A 0520",
                                      "OCS-A 0521",
                                      "OCS-A 0522")
                                      & shape$LEASE_TYPE!="Easement",
]

pdf('shoals/map.pdf')
ggplot() +
  geom_sf(data = shoals, fill = "lightblue", color = "black") +
  theme_minimal()
dev.off()

st_write(shoals, "~/dropbox/working/offshore_wind/shoals.shp")
