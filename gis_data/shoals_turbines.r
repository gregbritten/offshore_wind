library(here)

dat <- read.csv('Offshore_Wind_-_Proposed_or_Installed_Turbine_Locations_3303755274274641188.csv')

shoals <- dat[dat$BOEM.Lease.Number%in%c("OCS-A 0486",
                                      "OCS-A 0517",
                                      "OCS-A 0487",
                                      "OCS-A 0500",
                                      "OCS-A 0501",
                                      "OCS-A 0534",
                                      "OCS-A 0561",
                                      "OCS-A 0520",
                                      "OCS-A 0521",
                                      "OCS-A 0522"),
]

write.csv(shoals,"shoals_turbines.csv")
