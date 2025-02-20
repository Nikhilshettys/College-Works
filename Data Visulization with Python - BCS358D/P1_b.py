#1.b) Develop a Python program to check whether a given number is palindrome or 
#not and also count the number of occurrences of each digit in the input number.

from collections import *
value = input("Enter a value : ")
if value == value[::-1]:
    print("Palindrome")
else:
    print("Not Palindrome")
    counted_dict = Counter(value)
    for key in counted_dict.keys():
        print(f"{key} appears {counted_dict[key]} times")