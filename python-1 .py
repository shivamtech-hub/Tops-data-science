
# List :- A list is an ordered and multiple collection the allows duplicate values.

fruits = ["Apple","Banana","Cherry"]
print(fruits)

# append() :- It is used to add an element at the end of the list.
fruits.append("Mango")
print(fruits)

# insert() :- It is used to add an element at the specific position in the list.
fruits.insert(1,"Grapes")
print(fruits)

# remove() :- It is used to remove the specific element from the list.

numbers = [10,20,40,30,50,60]
numbers.remove(40)
print(numbers)

# pop() :- It is used to remove the last element from the list.
numbers.pop()
print(numbers)

# sort() :- It is used to sort the elememts of the list in ascending order.
numbers.sort()
print(numbers)

# reverse() :- It is used to reverse the order of the elements in the list.
numbers.reverse()
print(numbers)

# count() :- It is used to count the number of occurrences of a specific element in the list.
number = [10,20,10,30,10,40,50,10]
print(number.count(10))

# index() :- It is used to find the index of the first occurrence of a specific elelment in the list.indexing starts from 0.
fruits = ["apple","Mango","Banana"]
print(fruits.index("Mango"))

numbers = [10,20,40,30,50,60]
print(numbers.index(30))

# clear() :- Its is used to remove all the elements from the list.
numbers = [10,20,30,40,50,60]
numbers.clear()
print(numbers)



####   Tuple :- A tuple is an ordered and immutable collection that allows duplicate values.()

numbers = (10,20,30,40,50,60)
print(numbers)

# count() :- It is used to count the number of occurrences of a specific element in the typle.

numbers = (10,20,30,40,10,50,60,40,10)
print(numbers.count(10))

# Note :- [Tuples are immutable, which means you cannot modify their elements after creation. 
# and append(),insert(), remove(),pop(),sort(),reverse() and clear() methods are not available and cannot be used with tu[ples.)]

# sorted() :- It is uesd to sort the elements of the tuple in ascending order and returns a new sorted list.

numbers = (10,60,30,40,60,20,50)
result1 = sorted(numbers)
print(result1)



### set :- A set is an unordered and mutable collection that does not allow dupicate values. 
# and sets are mutable, which means you can add or remove elements from a set after its creation. and sets are unordered, 
# which means the elements in a set do not have a specifc order and cannot be accessed by index.
# and cannot contain dupicate values, which means each element in a set is unique.
# and cannot be used with indexing,slicing,sorting, reversing and other sequence operations.

numbers = {10,20,30,40,50,60,10,20,30}
print(numbers)

# update() :- It is used to add multiple elements to the set.
numbers = {10,20,30,40,50}
numbers.update([60,70,80])
print(numbers)

# discard() :- It is used to remove a specific element from the set. If the element is not present, it does nothing.
numbers = {10,20,30,40,50}
numbers.discard(30)
print(numbers)

# add() :- It is used to add a specific element to the set.
numbers = {10,20,30,40,50}
numbers.add(60)
print(numbers)

# remove() :- It is used to remove a specific element from the set. If the element is not present, it raises a key error.
numbers = {10,20,30,40,50}
numbers.remove(30)
print(numbers)


# union() :- It is used to combine two sets and returns a new set containing all unique elemments from both sets.
set1 = {10,60,30,40,50}
set2 = {40,50,60,70,80}
result = set1.union(set2)
print(result)

# intersection() :- It is used to find the common elements between two sets and returns a new set containing the common elements.
set1 = {10,60,30,40,50}
set2 = {40,50,60,70,80}
result = set1.intersection(set2)
print(result)

# difference() :- It is used to find the elements that are present in one set but not in the other and returns a new set containing those elements.
set1 = {10,60,30,40,50}
set2 = {40,50,60,70,80}
result = set1.difference(set2)
print(result)

# symmetric_difference() :- It is used to find the elements that are present in  either of 
# the sets but not in both and returns a new set containing those elements.
set1 = {10,60,30,40,50,20}
set2 = {40,50,60,70,80,90}
result = set1.symmetric_difference(set2)
print(result)

# pop() :- It is used to remove and return an arbitrary element from the set. If the set is empty, it raises a key error.

numbers = {10,20,30,40,50}
numbers.pop()
print(numbers) 

# clear() :- It is used to remove all the elements from the set.

numbers = {10,20,30,40,50}
numbers.clear()
print(numbers)


#### Dictionary :-A dictionary in Python is a collection of key-value pairs. It stores data in the form of keys and values. Keys must be unique.
#  A dictionary is an unordered and mutable collection that allows duplicate values and not allow duplicate keys.
#  It consists of key-value pairs, where each key is unique and maps to a specific value.

# update() :- It is used to add or update key-value pairs in the dictionary. 
# If the key already exists, its value will be updated; otherwise, a new key-value pair will be added.
student = {"name":"Abhishek","age":20,"course":"python" }
student.update({"city":"Ahemdabad"})
print(student)

# pop() :- It is used to remove a specific key-value pair from the dictionary based on the provided key.
student = {"name":"Abhieshek","age":20,"course":"python"}
student.pop("age")
print(student)

# popitem() :- It is used to remove and return the last inserted key-value pair from the dictionary.
student = {"name":"Abhishek","age":20,"course":"python"}
student.popitem()
print(student)


# get() :- get() method is used to access the value of a specific key in the dictionary. 
# if the key does not exists, it returns none by default instead of raising a key error.
student = {"name":"Abhishek","age":20,"course":"python"}
print(student.get("name"))

# keys() :- It is used to retrieve a view object that contains all the keys in the dictionary.
student = {"name":"Abhishek","age":21,"course":"python"}
print(student.keys())

# values() :- It is used to retrieve a view object that contains all the values in the dictionary.
student = {"name":"Abhishek","age":21,"course":"python"}
print(student.values())

# items() :- the items() methods returns all the key-value pairs in a dictionary as a view object.
student = {"name":"Abhishek","age":21,"course":"python"}
print(student.items())

# setdefault() :- It is used to retrieve the value of a specific key in the dictionary.
# If the key does not exist, it inserts the key with a default value.
student = {"name":"Abhishek","age":21,"course":"python"}
student.setdefault("city","Ahemdabad")
print(student)

# clear() :- It is used to remove all the key-value pairs from the dictionary.
student = {"name":"Abhishek","age":21,"course":"python"} 
student.clear()
print(student)

# copy() :- It is used to create a shallow copy of the dictionary. 
# the new dictionary will have the same key-value pairs as the original dictionary.
student = {"name":"Abhishek","age":21,"course":"python"}
student_copy = student.copy()
print(student_copy)

# fromkeys() :- It is used to create a new dictionary with specified keys and a default value for all keys.
keys = ["name","age","course"]
print(dict.fromkeys(keys,"default_value"))

# len() :- It is used to get the number of key-value pairs in the dictionary.
student = {"name":"Abhishek","age":21,"marks":85}
print(len(student))


# set():- A set is an unordered collection of unique elements. It is mutable,meaning you can add or remove elements from a set after its creation. 
## 
# tuple():- A tuple is an ordered collection of elements. It is immutable, meaning you cannot modify its elements after creation.
## 



# List():- A list is an ordered collection of elements. It is mutable, meaning you can modify its elements after creation.
#  and duplicate values are allowed in a list. lists are defined using square brackets [] and can contain elements of different data types
    

