## code to prepare `DATASET` dataset goes here
ibp_cols <- list()

# ibp_cols$PPoint <-

ibp_cols$ppoint <- prismatic::color(rgb(c(23, 242, 31, 226, 177, 254, 225),
                c(156, 148, 130, 0, 200, 239, 227),
                c(125, 0, 192, 26, 0, 214, 227),
                names = c("FhG_logo", "FhG_Orange", "FhG_blau", "FhG_rot", "FhG_gruen", "FhG_hellorange", "FhG_hellgrau"),
  maxColorValue = 255
))

ibp_ppoint <- prismatic::color(ibp_cols$PPoint)
usethis::use_data(ibp_ppoint, overwrite = TRUE)


Col.IBP.All <- prismatic::color(rgb(red =   c(23,  235,   0,  37, 177, 0, 168, 254),
                   green = c(156, 106, 110, 186, 200, 0, 175, 239),
                   blue =  c(125,  10, 146, 226,   0, 0, 175, 214),
                   names = c("FhG_logo", "FhG_orange", "FhG_blau", "FhG_tuerkis", "FhG_gruen", "FhG_schwarz", "FhG_grau", "FhG_hellorgane"), maxColorValue = 255)
)
Col.IBP.All <- Col.IBP.All[c(6,1,2,3,5,4,8,7)]
Col.IBP     <- Col.IBP.All

ibp_cols$all <- Col.IBP.All
ibp_all      <- Col.IBP.All
usethis::use_data(ibp_all, overwrite = TRUE)


Col.IBP.Logo <- prismatic::color(colorRampPalette(c("white", Col.IBP.All[2], "black"))(9)[2:8])
names(Col.IBP.Logo) <- c("IBP_Logo1", "IBP_Logo2", "IBP_Logo3",
                         "IBP_Logo5", "IBP_Logo6", "IBP_Logo7", "IBP_Logo8")

ibp_cols$logo <- Col.IBP.Logo
ibp_logo      <- Col.IBP.Logo
usethis::use_data(ibp_logo, overwrite = TRUE)


Col.IBP.Grey <-prismatic::color( colorRampPalette(c("white", Col.IBP.All[8], "black"))(9)[2:8])
names(Col.IBP.Grey) <- c("IBP_Grey1", "IBP_Grey2", "IBP_Grey3",
                         "IBP_Grey5", "IBP_Grey6", "IBP_Grey7", "IBP_Grey8")

ibp_cols$grey <- Col.IBP.Grey
ibp_grey      <- Col.IBP.Grey
usethis::use_data(ibp_grey, overwrite = TRUE)

Col.IBP.Oran <- prismatic::color(colorRampPalette(c("white", Col.IBP.All[3], "black"))(9)[2:8])
names(Col.IBP.Oran) <- c("IBP_Oran1", "IBP_Oran2", "IBP_Oran3",
                         "IBP_Oran5", "IBP_Oran6", "IBP_Oran7", "IBP_Oran8")

ibp_cols$orange <- Col.IBP.Oran
ibp_oran        <- Col.IBP.Oran
usethis::use_data(ibp_oran, overwrite = TRUE)

Col.IBP.Blue <- prismatic::color(colorRampPalette(c("white", Col.IBP.All[4], "black"))(9)[2:8])
names(Col.IBP.Blue) <- c("IBP_Blue1", "IBP_Blue2", "IBP_Blue3",
                         "IBP_Blue5", "IBP_Blue6", "IBP_Blue7", "IBP_Blue8")

ibp_cols$blue <- Col.IBP.Blue
ibp_blue      <- Col.IBP.Blue
usethis::use_data(ibp_blue, overwrite = TRUE)

Col.IBP.Gree <- prismatic::color(colorRampPalette(c("white", Col.IBP.All[5], "black"))(9)[2:8])
names(Col.IBP.Gree) <- c("IBP_Gree1", "IBP_Gree2", "IBP_Gree3",
                         "IBP_Gree5", "IBP_Gree6", "IBP_Gree7", "IBP_Gree8")

ibp_cols$green <- Col.IBP.Gree
ibp_green      <- Col.IBP.Gree
usethis::use_data(ibp_green, overwrite = TRUE)

Col.IBP.Tuer <- prismatic::color(colorRampPalette(c("white", Col.IBP.All[6], "black"))(9)[2:8])
names(Col.IBP.Tuer) <- c("IBP_Tuer1", "IBP_Tuer2", "IBP_Tuer3",
                         "IBP_Tuer5", "IBP_Tuer6", "IBP_Tuer7", "IBP_Tuer8")

ibp_cols$tuer <- Col.IBP.Tuer
ibp_tuer      <- Col.IBP.Tuer
usethis::use_data(ibp_tuer, overwrite = TRUE)

Col.IBP.Old <- prismatic::color(rgb(c(255,0,0,255,27,255,255,128),
                   c(0,255,102,204,184,161,51,128),
                   c(51,0,255,0,120,97,204,128),
                   names=c("rot","gruen","blau","gelb","FhG","orange","lila","grau"),
                   maxColorValue=255))


ibp_cols$old <- Col.IBP.Old
ibp_old      <- Col.IBP.Old
usethis::use_data(ibp_old, overwrite = TRUE)

Col.IBP.Old.matt <- prismatic::color(rgb(c(255,204,204,255,153,255,255,221),
                        c(153,255,236,255,240,200,153,221),
                        c(153,153,255,153,204,163,255,221),
                        names=c("rot_matt","gruen_matt","blau_matt","gelb_matt","FhG_matt","orange_matt","lila_matt","grau_matt"),
                        maxColorValue=255))

ibp_cols$old_matt <- Col.IBP.Old.matt
ibp_old_matt      <- Col.IBP.Old.matt
usethis::use_data(ibp_old_matt, overwrite = TRUE)

usethis::use_data(ibp_cols, overwrite = TRUE)
