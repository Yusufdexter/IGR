#data <- read.csv(file.choose())
getwd()
setwd('C:\\Users\\PATH')
getwd()

# ===== Importing Font
windowsFonts(Roboto=windowsFont("Roboto"))


data <- read.csv('FAAC-IGR1.csv')
head(data)
data
tail(data)
str(data)
summary(data)


# converting into factor

data$State.Code
data$State.Code <- factor(data$State.Code)
str(data)


data$Year
data$Year <- factor(data$Year)
str(data)


# =========== filter 

data2013 <- data[data$Year == 2013,]
data2014 <- data[data$Year == 2014,]
data2015 <- data[data$Year == 2015,]
data2016 <- data[data$Year == 2016,]
data2017 <- data[data$Year == 2017,]


#nrow(data2013) #37rows
#nrow(data2014) #37rows
#nrow(data2015) #37rows
#nrow(data2016) #37rows
#nrow(data2017) #37rows

# summarries
#summary(add2013)
#summary(add2014)
#summary(add2015)
#summary(add2016)
#summary(add2017)



# ================ Visualization

#==================
# IGR  2013
#==================
I <- ggplot(data=data2013, aes(x=State.Name, y=Internal.Generated.Revenue))
I <- I + geom_bar(stat='identity', aes(fill=Region)) + 
  coord_flip() + 
  geom_text(aes(label=round(Internal.Generated.Revenue/1000000000,2)), vjust=0.3, hjust=0,size=3)

# NON DATA   
I <- I + labs(title='State Internal Generated Revenue 2013',
              subtitle='',
              caption='Source: jtb.gov.ng/monthly-igr-reports/                                                                                                                                                                                                                                    © Copyright 2019 @_yusufdexter
            @BudgITng') +
  
  xlab("State") +
  ylab("Internal Generated Revenue (billions Naira)")

# THEME
I + theme(axis.title.x = element_text(colour='steelblue', size=15),
          axis.title.y = element_text(colour='steelblue', size=15),
          
          legend.title = element_text(size=10),
          legend.text = element_text(size=10),
          
          plot.title = element_text(colour='steelblue',
                                    size=18),
          
          plot.subtitle = element_text(colour='darkgreen'),
          
          plot.caption = element_text(hjust = 0,
                                      size=10,
                                      colour='darkgreen'),
          
          text = element_text(family='Roboto')
)


#======================
# IGR  2014
#======================
J <- ggplot(data=data2014, aes(x=State.Name, y=Internal.Generated.Revenue),
            colour='white')
J <- J + geom_bar(stat='identity', aes(fill=Region)) + 
  coord_flip() + 
  geom_text(aes(label=round(Internal.Generated.Revenue/1000000000,2)), vjust=0.3, hjust=0,size=3)

# NON DATA   
J <- J + labs(title='State Internal Generated Revenue 2014',
              subtitle='',
              caption='Source: jtb.gov.ng/monthly-igr-reports/                                                                                                                                                                                                                                    © Copyright 2019 @_yusufdexter
            @BudgITng') +
  
  xlab("State") +
  ylab("Internal Generated Revenue (billions Naira)")

# THEME
J + theme(axis.title.x = element_text(colour='steelblue', size=15),
          axis.title.y = element_text(colour='steelblue', size=15),
          
          legend.title = element_text(size=10),
          legend.text = element_text(size=10),
          
          plot.title = element_text(colour='steelblue',
                                    size=18),
          
          plot.subtitle = element_text(colour='darkgreen'),
          
          plot.caption = element_text(hjust = 0,
                                      size=10,
                                      colour='darkgreen'),
          
          text = element_text(family='Roboto')
)



#======================
# IGR  2015
#======================
K <- ggplot(data=data2015, aes(x=State.Name, y=Internal.Generated.Revenue),
            colour='white')
K <- K + geom_bar(stat='identity', aes(fill=Region)) + 
  coord_flip() + 
  geom_text(aes(label=round(Internal.Generated.Revenue/1000000000,2)), vjust=0.3, hjust=0,size=3)

# NON DATA   
K <- K + labs(title='State Internal Generated Revenue 2015',
              subtitle='',
              caption='Source: jtb.gov.ng/monthly-igr-reports/                                                                                                                                                                                                                                    © Copyright 2019 @_yusufdexter
            @BudgITng') +
  
  xlab("State") +
  ylab("Internal Generated Revenue (billions Naira)")

# THEME
K + theme(axis.title.x = element_text(colour='steelblue', size=15),
          axis.title.y = element_text(colour='steelblue', size=15),
          
          legend.title = element_text(size=10),
          legend.text = element_text(size=10),
          
          plot.title = element_text(colour='steelblue',
                                    size=18),
          
          plot.subtitle = element_text(colour='darkgreen'),
          
          plot.caption = element_text(hjust = 0,
                                      size=10,
                                      colour='darkgreen'),
          
          text = element_text(family='Roboto')
)




#======================
# IGR  2016
#======================
L <- ggplot(data=data2016, aes(x=State.Name, y=Internal.Generated.Revenue),
            colour='white')
L <- L + geom_bar(stat='identity', aes(fill=Region)) + 
  coord_flip() + 
  geom_text(aes(label=round(Internal.Generated.Revenue/1000000000,2)), vjust=0.3, hjust=0,size=3)

# NON DATA   
L <- L + labs(title='State Internal Generated Revenue 2016',
              subtitle='',
              caption='Source: jtb.gov.ng/monthly-igr-reports/                                                                                                                                                                                                                                    © Copyright 2019 @_yusufdexter
            @BudgITng') +
  
  xlab("State") +
  ylab("Internal Generated Revenue (billions Naira)")

# THEME
L + theme(axis.title.x = element_text(colour='steelblue', size=15),
          axis.title.y = element_text(colour='steelblue', size=15),
          
          legend.title = element_text(size=10),
          legend.text = element_text(size=10),
          
          plot.title = element_text(colour='steelblue',
                                    size=18),
          
          plot.subtitle = element_text(colour='darkgreen'),
          
          plot.caption = element_text(hjust = 0,
                                      size=10,
                                      colour='darkgreen'),
          
          text = element_text(family='Roboto')
)



#======================
# IGR  2017
#======================
M <- ggplot(data=data2017, aes(x=State.Name, y=Internal.Generated.Revenue),
            colour='white')
M <- M + geom_bar(stat='identity', aes(fill=Region)) + 
  coord_flip() + 
  geom_text(aes(label=round(Internal.Generated.Revenue/1000000000,2)), vjust=0.3, hjust=0,size=3)

# NON DATA   
M <- M + labs(title='State Internal Generated Revenue 2017',
              subtitle='',
              caption='Source: jtb.gov.ng/monthly-igr-reports/                                                                                                                                                                                                                                    © Copyright 2019 @_yusufdexter
            @BudgITng') +
  
  xlab("State") +
  ylab("Internal Generated Revenue (billions Naira)")

# THEME
M + theme(axis.title.x = element_text(colour='steelblue', size=15),
          axis.title.y = element_text(colour='steelblue', size=15),
          
          legend.title = element_text(size=10),
          legend.text = element_text(size=10),
          
          plot.title = element_text(colour='steelblue',
                                    size=18),
          
          plot.subtitle = element_text(colour='darkgreen'),
          
          plot.caption = element_text(hjust = 0,
                                      size=10,
                                      colour='darkgreen'),
          
          text = element_text(family='Roboto')
)