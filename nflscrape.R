library(nflscrapR)
setwd("~/Documents/GitHub/NFL_Play_by_Play/Seasons")

# start_time <- Sys.time()
# Sys.time()
# pbp_2018 <- scrape_season_play_by_play(2018, "reg")
# end_time <- Sys.time()
# 
# end_time - start_time
# pbp_2018$season <- 2018
# write.csv(pbp_2018,"2018_nfl_season.csv",row.names = FALSE)


filenames = paste(paste(2009:2018, '_nfl_season', sep = ''), '.csv', sep = '') 

NFL_PBP_10_Year <- do.call(rbind, lapply(filenames, read.csv, header = TRUE))
NFL_PBP_5_Year <- subset(NFL_PBP_10_Year, NFL_PBP_10_Year$season > 2013)

write.csv(NFL_PBP_10_Year, "~/Documents/GitHub/NFL_Play_by_Play/Combined_Seasons/NFL_10_Year_Play_by_Play.csv", row.names = FALSE)
write.csv(NFL_PBP_5_Year, "~/Documents/GitHub/NFL_Play_by_Play/Combined_Seasons/NFL_5_Year_Play_by_Play.csv", row.names = FALSE)
