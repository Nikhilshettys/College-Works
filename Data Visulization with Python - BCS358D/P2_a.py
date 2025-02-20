#2.a) Defined as a function F as Fn = Fn-1 + Fn-2. Write a Python program which 
# accepts a value for N (where N >0) as input and pass this value to the function. 
# Display suitable error message if the condition for input value is not followed.

def fn(n):
    if n <= 2:
        return n - 1
    else:
        return fn(n-1) + fn(n-2)
try:
    num = int(input("Enter a number : "))
    if num > 0:
        print(f' fn({num}) = {fn(num)}')
    else:
        print("Input should be greater than 0")
except ValueError:
    print("Try with numeric value")
