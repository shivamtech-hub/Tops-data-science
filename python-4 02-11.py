
# marks= int(input("enter your marks:"))

# if marks >= 90:
#     print ("grade A")
# elif marks >= 70:
#     print("grade B")
# elif marks >= 50:
#     print("grade C")
# elif marks >= 40:
#     print("grade D")
# else: 
#     print("Fail")


# marks = int(input("enter your marks:"))
# attendance = int(input("enter your attendance:"))

# if marks >= 40:
#     print("pass")
#     if attendance >= 75:
#         print("allowed for exam")
#     else:
#         print("not allowed to exam")
# else:
#      print("fail")


# check if a person is eligible for driving.

age = int(input("enter your age:"))
if age >= 18:
    print("eligible for driving")
else:
    print("not eligible for driving")


# multiple conditions using and

## (in, not in,)



age = 25
income = 50000
credit_score = 700

if age >= 18 and income >= 30000 and credit_score >= 650:
    print("eligible for loan")
else:
    print("not eligible for loan")


## if elif and else statements.

age = 25
if age >= 18:
    print("eligible for voting")
else:
    print("not eligible for voting")

if age >= 18:
    print("eligible for marriage")

if age >= 18:
    print("eligible for driving")

if age >= 18:
    print("eligible for working")

if age >= 18:
    print("eligible for driving_license")


number = 10

if number > 0:
    print("positive number")
elif number < 0:
    print("negative number")
else:
    print("zero")

if number % 2 == 0:
    print("even number")
else:
    print("odd number")

if number % 5 == 0:
    print("Divisible by 5")
else:
    print("not divisible by 5")


num = 52

if num % 2 == 0:
    print("divisible by 2")
else:
    print("not divisible by 2")
if num % 5 == 0:
    print("divisible by 5")
else:
     print("not divisible by 5")
if num % 3 == 0:
    print("divisible by 3")
else:
    print("not divisible by 3")

marks = 35

if marks >= 90:
    print("grade A+")

elif marks >= 80:
    print("grade A")

elif marks >= 70:
    print("grade B")

elif marks >= 60:
    print("grade C")

elif marks >= 45:
    print("grade D")

elif marks >= 33:
    print("grade E")
else:
    print("Fail")




















marks = 75
age = 20

if marks >= 60:
    if age >= 18:
        print("Admission approved")
    else:
        print("age is too low")
else:
    print("Marks is too low")




## Nested if and else statements.

## 1. Loan approveble checks.
age = 25
income = 50000
credit_score = 700


if age >= 18:
    if income >= 30000:
        if credit_score >= 650:
            print("eligible for loan")
        else:
            print("not eligible for loan")
    else:
        print("not eligible for loan")
else:
    print("not eligible for loan")


## 2. Atm withdrawal system.

card_vaild = True
pin = 1541
correct_pin = 1541
balance = 5000
withdrawa = 10000

if card_vaild:
    if pin == correct_pin:
        if balance >= withdrawa:
            if withdrawa > 0:   
                print("withdrawal successful")
            else:
                print("invaild withdrawal amount")
        else:
            print("Insufficient balance")

    else:
        print("Incorrect pin")
else:
    print("Invaild Atm_card")


## 3. Create an employee promotion system based on experience, performance and salary.

experience = 5
rating = 4.5
salary = 65000

if experience >= 3:
    if rating >= 4:
        if salary > 80000:
            print("Promotion Apporoved")
        else:
            print("salary is already high")
    else:
        print("performance is not sufficient")
else:
    print("Not enough experince")

## 4. Create an online shopping payment system.

login = True
cart_items = 3
payment_methods = "UPI"
balance = 10000
total_amount = 7500

if login:
    if cart_items > 0:
        if payment_methods == "UPI":
           if balance >= total_amount:
               print ("order confirmed ")
           else:
               print("Insufficient payment balance")
        else:
            print("Invaild payment_methods")
    else:
        print("Your cart is empty")
else:
    print("Please login first")



## 5. Check student admission eligibility based on marks, entrance exam and interview.

marks = 75
entrance_score = 85
interview_score = 35

if marks >= 60:
    if entrance_score >= 50:
        if interview_score >= 40:
           print("Admission Approved")
        else:
            print("Interview failed")
    else:
        print("Entrance exam failed")
else:
     print("Minimum marks not achieved")


## 6.Create a bank loan approval system using income, credit score and employment status.

Income = 50000
credit_score = 750
employeed = True
loan_amount = 400000

if income >= 30000:
    if credit_score >= 650:
        if employeed:
            if loan_amount <= income *10:
                print("Loan approved")
            else:
                print("Loan amount exceeds limit")
        else:
            print("Employeement Required")

    else: 
        print("Low credit score")
else:
    print("Income criteria not met")


## 

num = 5
for i in range(1,10):
    print(f"{num}x{i}={num*i}")


for i in range(1,6):
    print(i)


## 1. Break Statement
## The break statement is used to immediately stop a loop when a specific condition is satisfied.

for i in range(1,11):
    if i == 5:
       break
    print(i)


## 2. Continue Statement
## The continue statement is used to skip the current iteration and move to the next iteration of the loop.(skip karta hai)

for i in range(1,11):
    if i ==5:
        continue
    print(i)

## 3. Pass Statement

## The pass statement is a null statement that does nothing.
#  It is used as a placeholder when a statement is required syntactically but no action is needed yet.

for i in range(1,6):
    if i ==5:
        pass
    print(i)


















# loop with o

lists = [100,200,300,400,500]

for i in lists:
    if i >= 300:
        print(i)

## for indexing.





## i,j, with used

a = [0,1,2,3,4]
b = [1,2,3,4,5]

for i in a:
    for j in b:
        print(i,j)


## i,j,with zip() used.


for i,j in zip(a,b):
    print(i,j)



a = [0,1,2,3,4]
b = [1,2,3,4,5]
c = [2,3,4,5,6]

for i,j,k in zip(a,b,c):
    print(i,j,k)


a = [0,1,2,3,4,5]

for i in (a):
    print(i)


for i in range(10):
    print(i) 


## enumearteis indexing.

list = ["apple","banana","chikuu"]

for k in enumerate(list):
    print(k)


list = ["apple","banana","chikuu"]

for i,k in enumerate(list):
    print(i,k)


## break. for range i in (10). output : 0 1 2

for i in range(1,6):
    print(i)



for  i in range(1,6):
    if i == 3:
        break
    print(i)



## continue. output : 0 1 2 3 4 5 6 7 8 9 

for  i in range(1,6):
    if i == 3:
        continue
    print(i)



## pass.



for  i in range(1,6):
    if i == 3:
        pass
    print(i)












































# ## loops:- loops function for.

# for i in range(10):
#     print(i)




# amt = [100,200,100]
# total = 0
# for i in amt:
#     total += i
# print("total amount is", total)



# ## Loops:- A loop is a control struture that used to execute a block of code repeatedly until 
# # a specified condition is met or all items in a sequence are processed.
# #  there are tow types of loops in python:- 1. for loop 2. while loop.

# # for loop:- for loop is used to iterate over a sequence (list, tuple, string, range).


# for i in range(1,11):
#     print(i)



# names = ["Rahul", "Ramesh", "Amit"]
# for name in names:
#     print(name)



## numbers = int (input("enter a numbers"))

# for i in range(1,11):
#     print(f"{numbers} *{i} = {numbers*i}")



# total = 0
# for i in  range(1,11):
#     total = total + i
#     print("total:",total)



# # total = 0

# # for i in range(1,11):
# #     total = total + i
# #     print("total")
# for i in range(1,11):
#     if i == 10:
#         print("total_completed")
    










