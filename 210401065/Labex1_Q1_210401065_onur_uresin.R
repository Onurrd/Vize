download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv","MapsThatChangedOurWorld_StoryMap_Data.csv")

df <- read.csv("./MapsThatChangedOurWorld_StoryMap_Data.csv", sep = ";")

maps <- data.frame(df)

maps$Latitude<-gsub("N","",as.character(maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

idx <- grep("[W]",maps$Longitude)

maps$Longitude<-gsub("E","",as.character(maps$Longitude))
maps$Longitude<-gsub("W","",as.character(maps$Longitude))

maps$Year<-gsub("AD","",as.character(maps$Year))

maps$Longitude<-as.numeric(maps$Longitude)
maps$Latitude<-as.numeric(maps$Latitude)
