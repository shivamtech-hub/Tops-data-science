
print("Hello")
print("Python")
print("python\nsql")

print("hello","python","and","sql",sep="%$*")
print("hello",   "python", sep =  "  & ")

a,b,c = "python","sql","ml"
print(a)
print(b)
print(c)

course = "python"
place = "tops"
name = "purvi"
print(f"i am learning {course} at {place}")
print("i am learning   {} at  {}".format (course,place ))
print("my name is " + name   +"   and i am learning " + course)

lists = [10,20,"python",54.54]
print(lists)
print(type(lists))


## type of variables.

myvar = "hello python"
my_var = "hello python"
_my_var = "hello python"
myvar = "hello python"
MYVAR = "hello python"

print(course ,end= "-")
print(place)

name = "Purvi"
course = "python"

print("my name is " + name  + " and i am teaching " + course)

## 1. text type: str
# 1. string :-  string is used to store text, words, names,and characters.

text = "Shivam"
print(text)
print(type(text))

## 2. Numeric types: (int, float,complex)
list1 = (1,2,3,4)
print(list1)

## 2. int(integer):-  Integer is used to store whole numbers without decimal points.

age = 25
print(age)
print(type(age))

## 3. float:- Float is used to store numbers with decimal points.

price = 99.98
print(price)
print(type(price))

# 4. complex :- Complex stores numbers having real and imaginary parts.

number = 5 + 3j
print(number)
print(type(number))
print(number.real)
print(number.imag)


## 3. boolean type:-  Boolean is used to store only two values: True or False.
# 5. boolean

is_student = True
print(is_student)
print(type(is_student))


## 4. sequence type:- list, tuple, range.
## 6. lists:- List stores multiple values in a single variable. It is ordered and changeable. 

number = [10,20,30,40,50,60]
print(number)
print(type(number))

fruits = ["Apple","Mango","Banana"]
print(fruits)
print(fruits[0])
fruits.append("Orange")
print(fruits)

## 7. tuple:- Tuple stores multiple values. It is ordered but cannot be changed after creation. 

number = (10,20,30,40,50)
print(number)
print(type(number))
print(number[0])

colours = ("Red","Green","Blue")
print(colours)
print(type(colours))
print(colours[2])

## 8. range:- Range generates a sequence of numbers, commonly used with loops.

number = range(0,10) 
print(number)
print(type(number))

for i in number:
    print(i)



## 5. mapping typle:- 
# 9. dict :- store data in keys value pairs.

student = {"name":"shivam","age":21,"city":"Surat"}

print(student)
print(student["name"])
print(student["age"])
print(student["city"])

## 6. set type:- 
# 10. set 
number = {10,20,30,40,20,10}
print(number)
print(type(number))

# 11. frozen set:- Frozenset stores unique values but cannot be modified after creation.

number = ([10,20,30])

print(number)
print(type(number))

## 7. None type:-
# 12. none:- none represents the absence of a value.

result = None
print(result)
print(type(result))