# library(ncdf4)
# nc <- nc_open("E:\\00_BackUP_Laptop\\20201008_FinalDesktop\\03_ProPolis\\13 Plots/indoor_model_3d.001.nc")
#
# temp <- ncvar_get(nc, "theta", start = c(1,1,2,9), count = c(nc$dim$x$len,
#                                                              nc$dim$y$len,
#                                                              1,
#                                                              1))
# temp2 <-  ncvar_get(nc, "theta", start = c(1,1,2,29), count = c(nc$dim$x$len,
#                                                                 nc$dim$y$len,
#                                                                 1,
#                                                                 1))
# temp <- temp2 - temp
#
# meltvec  <- reshape2::melt(temp)
#
# library(tidyverse)
# ggplot2::ggplot(meltvec, ggplot2::aes(x = Var1, y = Var2, fill = value)) +
#   geom_raster() +
#   theme_ibp() +
#   scale_fill_gradientn(colours = c("blue", "white", "red"),
#                        oob = scales::squish) +
#   scale_x_ibp_cont( name = "x [m]", limits = c(0,100)) +
#   scale_y_ibp_cont( name = "y [m]", limits = c(0,100)) +
#   coord_ibp_cartesian()
#
#
#
# temp <- ncvar_get(nc, "theta", start = c(49,49,2,1), count = c(1,
#                                                                1,
#                                                                1,
#                                                                nc$dim$time$len))
#
# temp <- data.frame("theta" = temp,
#                    "time" = as.POSIXct("2017-07-21 00:00:00") + nc$dim$time$vals+1)
#
# library(ggIBPplot)
# ggplot(temp, aes(x = time, y = theta)) +
#   geom_line(size = 2, color = "red") +
#   theme_ibp() +
#   scale_x_ibp_datetime(labels =
#                          ggIBPplot::show_less_labels_dates(formatation = "%Y-%m-%d %H:%M"),
#                        name = "Time")+
#   scale_y_ibp_cont(limits = c(288, 305), name = "Theta [K]") +
#   coord_ibp_cartesian()
