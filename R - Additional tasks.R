a <- sample(1:20,5,replace = FALSE)
b <- sample(1:20,5,replace = FALSE)
c <- sample(1:20,5,replace = FALSE)

print(a)
print(b)
print(c)

m <- cbind(a,b,c)
print(m)

matplot((m), type = "l",
        main="Graph of integers from matrix (m)",
        xlab="vector position",
        ylab="integer value")
legend("topright", legend=c("a", "b", "c"), col=c(1:3), lty=c(1:3))





employee_name <- c("John Smith", "Peter Simpson", "Linda Jones", "Carol Rice", "Alexander Blake")
age <- c(26, 39, 42, 29, 33)
role <- c("receptionist", "accountant", "sales manager", "project manager", "researcher")
length_of_service_years <- c(2, 8, 6, 7, 10)

employee_records <- data.frame(employee_name, age, role, length_of_service_years)
print (employee_records)





library (ggplot2)

x <- c(1:20)
y <- c(x^2)

print (x)
print (y)

qplot(x = x, y = y, geom = "point", xlab = "The sequence of 1 to 20", ylab = "x^2")





name <- c("Sam", "Gary", "Max", "Claire", "Felix")
height <- c(168, 195, 178, 154, 187)

height_in_cm <- data.frame(name,height)

print(height_in_cm)

barplot(height=height_in_cm$height, name=height_in_cm$name, col=height_in_cm$name, ylim=c(0, 200), xlab="name", ylab="height in cm")





name = readline(prompt="What is your name? ")
age = readline(prompt="What is your age? ")
print(paste("My name is",name, "and I am",age ,"years old."))





print ("Sequence of numbers from 20 to 50:")
print (seq(20,50))
print ("The mean of numbers from 20 to 50:")
print (mean(20:50))
print ("The sum of numbers from 20 to 50:")
print (sum(20:50))





v <- sample(-50:50, 10)
print ("10 random integers between -50 and 50:")
print (v)