##Lab 03
##01
setwd("C:\\Users\\janiya\\OneDrive\\Desktop\\IT24300059")
student_data <- read.csv("Exercise.csv", header = TRUE)
str(student_data)
head(student_data)
##02
summary(student_data$X1)
hist(student_data$X1, main = "Age Distribution", xlab = "Age", col = "skyblue", border = "black")

##03
gender_freq <- table(student_data$X2)
gender_freq
barplot(gender_freq,
        main = "Bar Chart for Gender",
        xlab = "Gender (1=Male, 2=Female)",
        ylab = "Frequency",
        col = "lightgreen")
##04
student_data$X3 <- factor(student_data$X3,
                          levels = c(1, 2, 3),
                          labels = c("Type 1", "Type 2", "Type 3"))

boxplot(X1 ~ X3,
        data = student_data,
        main = "Age by Accommodation Type",
        xlab = "Accommodation Type",
        ylab = "Age",
        col = c("lightpink", "lightyellow", "lightcyan"))

