print("hello")

## string formatting :- string function is used to work with text,such as letters,words and sentences. 
# It is used to format the string in a specific way.

# upper() :- It is used to convert to all letters into uppercase.

name = "my name is shivam pandey"
print(name.upper())

# lower() :- It is used to convert to all letters into lowercase.
name = "MY NAME IS SHIVAM PANDEY"
print(name.lower())

# capitalize() :- convert to the first character uppercase and the ramaining chracters to lowercase.

name = "my name is shivam pandey"
print(name.capitalize())

# title() :- convert to the first character of each word to uppercase.

name = "my name is shivam pandey"
print(name.title())

# swapcase() :- converts uppercase letters to lowercase and lowercase letters to uppercase.

name = "MY name is SHIVAM PANDEY"
print(name.swapcase())

# split() :- splits a string into a lists of words or parts.

text = "python is high level programming language "
text.split()
print(text.split())

# replace() :- replace one word or character with another.
text = "I Like java"
print(text.replace("java","python"))

# strip() :- removes spaces from the beginning and end of a string.
text = "   Hello Python    "
print(text.strip())

# find() :- returns the index of the first occurrnce of a substring . return -1 if it is not found.
text =  "HelloPython"
print(text.find("hello"))

# len() :- returns the numbers of characters in a string or the number of items in a collection.
text = "Python"
print(len(text))

# startswith() :- checks whether a string starts with the given text.returns ture or flase.
text = "python programming"
print(text.startswith("python"))

# endswith() :- checks whether a string ends with the given text.
text = "hello.python"
print(text.endswith("on"))

# count() :- count how many times a character or substring appears.
text = "banana"
print(text.count("a"))





### Mathematical functions in python
# these functions are used to calculate values from numbers and collection.
# 
# 
# max() :- returns the  largest value.
number = [10,20,30,50,40,60,70,90,80]
print(max (number))

# min() :- returns the smallest value.
number = [10,30,40,20,50,70,60,80,90]
print(min(number))

# sum() :- Adds all rthe numnbers in an iterable, such as a list.
number = [10,20,40,30,50,70,60,80]
print(sum(number))

# average() :- calculates the average by dividing the total by the number of value.python does not have a built in avg() function.
# we can calculate the average using sum() divided by len(), or use statistics.mean().

number = [10,20,40,50,30]
avearge = sum(number)/ len(number)
print(avearge)

# count() :- count how many times a character or substring appears.
text = "banana"
print(text.count("a"))




####  Arithemetic Operators in python 

# Addition(+) :- Adds two or more number.

a = 50
b = 40
print(a + b)

# Subtraction(-) :- subtracts one number from another.
a = 10
b = 40
print(a - b)

# Multiplication(*) :- multiple two numbers
a = 10
b = 5
print(a*b)

# Division(/) : - divides one number by another and returns a quotient as a float.
number = 50 
number1 = 15
print(number / number1)

# Floor Division(//) :- divides two numbers and rounds the result down to the nearest integer for positive numbers,
# more generally, it round down to the nearest whole-number multiple.
number = 30
numners1 = 4
print(30//4)
print(-30//4)

# Modulus(%) :- returns the remainder after divison.
number = 30
number1 = 4
print(number % number1)

# Power(**) :- raises a number to the power of another number. exmple (50*50*50*50*50*50)
a = 50
b = 6 
print(a ** b) 



#### Logical Operators :- logical operators are used to combine two or more conditions
#  and return a result based on those conditions/ and result a boolean result (Ture or Flase).

# and operators :-    returns ture if both conditions are ture
age = 22

print(age >= 18 and age <= 60)


# or operators :- ture if at least one condition is ture.

marks = 85
print(marks >=90 or marks >=80)

# not operators :- reverses the boolean result of a condition.

is_raining = False

print(not is_raining)


marks  = 75
attendence  = 80

if marks >= 40 and attendence >= 75:
    print("pass")
else:
    print("fail")


# user input :- User input is a way to take data or information from the user while a program is running.

name = "shivam"
age = "21"


name  = input("enter your name:")
print("hello",name)

age = int(input("enter your age :"))
print("your age is", age)

a = int(input ("enter your score"))
b = int(input("enter your score"))


price = float(input("enter product price:"))
print("price is", price)


## lists functions:- 




