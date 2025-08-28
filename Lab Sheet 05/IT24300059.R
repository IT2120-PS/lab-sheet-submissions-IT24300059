setwd("C:\\Users\\IT24300059\\Desktop\\Lab 05")
getwd()
data <- read.table("Data.txt", header = TRUE, sep = ",")
fix(data)
attach(data)

names(data)<-c("X1","X2")
attach(data)
hist(X2,main="Histogram for Number of Shareholders")
histrogram<-hist(X2,main = "Histrogram for Number of Shareholders",breaks = seq(130,270,length = 8),right = FALSE)
?hist

breaks <- round(histrogram$breaks)
freq   <- histrogram$counts
mids   <- histrogram$mids
classes <- c()
for (i in 1:(length(breaks) - 1)) {
  classes[i] <- paste0("[", breaks[i], " - ", breaks[i+1], "]")
}
cbind(classes = classes, Frequency = freq)

lines(mids,freq)
plot(mids,freq,type = ']' ,main = "Frequency Polygon for Shareholders",xlab = "Shareholders",ylab = "Frequency",ylim = c(0, max(freq))))

cum.freq <- cumsum(freq)
new <- c()
for(i in 1:length(breaks)){
  if(i == 1){
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i-1]
  }
}

plot(breaks, new, type = "l",
     main = "Cumulative Frequency Polygon for Shareholders",
     xlab = "Shareholders",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))
cbind(Upper = breaks, CumFreq = new)

#Exercise
Delivery_Times <- read.table("Exercise – Lab 05.txt", header = TRUE)

setwd("C:\\Users\\USER\\IT24300059")
getwd()

#01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)
attach(Delivery_Times)

#02
breaks <- seq(20, 70, by = (70-20)/9)
hist(`Delivery_Time_.minutes.`, main = "Delivery Time(Minutes)", breaks = breaks, right = TRUE)

#03
# The curve shows a bimodal distribution and appears approximately symmetrical.The data spans between 20 and 70.

#04
freq_table <- hist(`Delivery_Time_.minutes.`, breaks = breaks,)
cum_freq <- cumsum(freq_table$counts)

plot(freq_table$mids, cum_freq, type = "o", 
     main = "Cumulative Frequency Polygon", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency")