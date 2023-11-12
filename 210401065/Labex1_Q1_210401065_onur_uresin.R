download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv","MapsThatChangedOurWorld_StoryMap_Data.csv")

df <- read.csv("./MapsThatChangedOurWorld_StoryMap_Data.csv", sep = ";")

maps <- data.frame(df)


