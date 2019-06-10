library(nflscrapR)
setwd("~/Box/Alissa Private Folder/Alex/NFL_PBP")
# season_pbp_2018 <- scrape_season_play_by_play(2018, "reg")
# write.csv(season_pbp_2018,"~/Box/Alissa Private Folder/Alex/2018_nfl_season.csv")
start_time <- Sys.time()
Sys.time()
pbp_2011 <- scrape_season_play_by_play(2011, "reg")
end_time <- Sys.time()

end_time - start_time
pbp_2011$season <- 2011
write.csv(pbp_2011,"2011_nfl_season.csv",row.names = FALSE)


filenames = paste(paste(2009:2018, '_nfl_season', sep = ''), '.csv', sep = '') 
NFL_PBP_10_Year <- do.call(rbind, lapply(filenames, read.csv, header = TRUE))
