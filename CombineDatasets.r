sport <- c("Hockey","Baseball","Football")
league <- c("NHL","MLB","NFL")
trophy <- c("Stanley Cup", "Commissioner's Trophy","Vince Lombardi Trophy")

sport1 <- cbind(sport, league, trophy)
sport1

sport2 <- data.frame(sport = c("Basketball","Golf")
                    ,league = c("NBA","PGA")
                    ,trophy = c("Larry O'Brien Championship Trophy","Wanamaker Trophy")
                     )
sport2

sports <- rbind(sport1, sport2)
sports
