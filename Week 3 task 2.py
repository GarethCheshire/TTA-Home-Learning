def mark_grade (input_target, input_percentage):
    target = input_target
    percentage = input_percentage
    num1 = 85
    num2 = 75
    num3 = 65
    num4 = 55
    num5 = 1
    num6 = 100
    if target < percentage:
        print ("Awesome achievement! You have beaten your target!!!")
    elif target == percentage:
        print ("Congratulations, you have achieved your target mark.")
    else:
        print ("You have not achieved your target mark, better luck next time.")
    
    if percentage >= num1 and percentage <= num6:
        print ("You have achieved an A. Top of the class!!!")
    elif percentage >= num2 and percentage < num1:
        print ("You have achieved a B. Congratulations!")
    elif percentage >= num3 and percentage < num2:
        print ("You have achieved a C. Great work.")
    elif percentage >= num4 and percentage < num3:
        print ("You have achieved a D. You have passed, revision will help you to achieve a higher score though.")
    elif percentage < num5 or percentage > num6:
        print ("Please enter a valid percentage.")
    else:
        print ("Unfortunately, you have not scored high enough to pass. Make sure to revise thoroughly before taking your next exam.")

    return print

target = int(input ("What was your target percentage mark? Please select 1 to 100: "))

percentage = int(input ("What is your percentage mark? Please select 1 to 100: "))

mark_grade (target, percentage)


    