Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)




fizzbuzz <- (1:100)

output <- vector()

for (i in fizzbuzz) {
  if (i %% 15 == 0) {
    output[i] <- "Fizzbuzz"
  } else if (i %% 3 == 0) {
    output[i] <- "Fizz"
  } else if (i %% 5 == 0) {
    output[i] <- "Buzz"
  } else {
    output[i] <- i
  }
}

print (output)
