import random
number = random.randint (1, 10)
user_name = input ("What is your name?")
print (user_name +  " I am thinking of a number between 1 and 10.")
guess = int(input ("Take a guess:"))

if guess == number:
    print ("Well done " + user_name + " that is correct.")
else:
    print ("That is incorrect.")