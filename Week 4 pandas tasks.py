import pandas as pd

df = pd.read_csv("holiday_destinations.csv")

print ("pandas task 1: ")

print (df.shape)


print ("pandas task 2: ")

print (df.iloc [3:9])

print ("pandas task 3: ")
print ("Average number of all-inclusive hotels: ")

print (df["Number of all-inclusive hotels"].mean())

print ("pandas task 4: ")

print ("The destination with the lowest score is: ")
new_df = df[df["Feedback score out of 10"] == min(df["Feedback score out of 10"])]
print (new_df)


print ("pandas task 5: ")

print ("The destination with the highest score is: ")
new_df2 = df[df["Feedback score out of 10"] == max(df["Feedback score out of 10"])]
print (new_df2)


print ("pandas task 6: ")
print ("The destinations with more than 9 all-inclusive hotels: ")

filter = df ["Number of all-inclusive hotels"] > 9
new_df3 = df[df["Number of all-inclusive hotels"] > 9]
print (new_df3)


print ("pandas task 7: ")
print ("The destinations that scored 8 or higher: ")
filter2 = df ["Feedback score out of 10"] >= 8

highscore = df [filter2]
print (highscore.head())


print ("pandas task 8: ")
print ("The destinations that scored less than 2: ")
filter3 = df ["Feedback score out of 10"] < 2

lowscore = df [filter3]
print (lowscore.head())
