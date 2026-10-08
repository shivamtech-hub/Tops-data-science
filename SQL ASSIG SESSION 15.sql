
# 1. Install the sqlite3 module in Python and write a script to create a new database called foodie.db with a table Restaurants (id, name, cuisine, rating).

import sqlite3

# Connect to database (creates foodie.db if it doesn't exist)
conn = sqlite3.connect("foodie.db")

# Create cursor
cursor = conn.cursor()

# Create Restaurants table
cursor.execute("""
CREATE TABLE IF NOT EXISTS Restaurants (
    id INTEGER PRIMARY KEY,
    name TEXT,
    cuisine TEXT,
    rating REAL
)
""")

# Save changes
conn.commit()

# Close connection
conn.close()

print("Database and table created successfully.")

# 2. Using sqlite3 in Python, insert three sample restaurants into the Restaurants table in foodie.db and write a query to fetch all restaurants with a rating above 4.0, then print their names.

import sqlite3

conn = sqlite3.connect("foodie.db")
cursor = conn.cursor()

# Insert 3 restaurants
restaurants = [
    (1, "Pizza Palace", "Italian", 4.5),
    (2, "Spice Garden", "Indian", 4.2),
    (3, "Burger Hub", "American", 3.8)
]

cursor.executemany("""
INSERT OR IGNORE INTO Restaurants (id, name, cuisine, rating)
VALUES (?, ?, ?, ?)
""", restaurants)

conn.commit()

# Fetch restaurants with rating above 4.0
cursor.execute("""
SELECT name
FROM Restaurants
WHERE rating > 4.0
""")

results = cursor.fetchall()

# Print names
for row in results:
    print(row[0])

conn.close()

# 3. Write Python code to load all rows from the Restaurants table in foodie.db into a Pandas DataFrame and display the top 2 rows using DataFrame.head().


import sqlite3
import pandas as pd

conn = sqlite3.connect("foodie.db")

# Load table into DataFrame
df = pd.read_sql_query(
    "SELECT * FROM Restaurants",
    conn
)

# Display top 2 rows
print(df.head(2))

conn.close()

# 4. Add a new column 'delivery_charge' to your DataFrame, setting it to 50 for all restaurants, and then calculate a new column 'final_rating' as rating + (0.1 if cuisine is 'Italian').<br><br><em><strong>Hint:</strong> Use DataFrame.apply() or a lambda function for the conditional logic.</em>

import sqlite3
import pandas as pd

conn = sqlite3.connect("foodie.db")

# Load data
df = pd.read_sql_query(
    "SELECT * FROM Restaurants",
    conn
)

# Add delivery charge
df["delivery_charge"] = 50

# Calculate final rating
df["final_rating"] = df.apply(
    lambda row: row["rating"] + 0.1
    if row["cuisine"] == "Italian"
    else row["rating"],
    axis=1
)

print(df)

conn.close()

# 5. Automate a daily summary: Write a Python script that connects to foodie.db, fetches all restaurants with rating above 4.5, loads them into a DataFrame, and saves the result as a CSV file named top_rated_restaurants.csv.

import sqlite3
import pandas as pd

# Connect to database
conn = sqlite3.connect("foodie.db")

# Fetch restaurants with rating above 4.5
query = """
SELECT *
FROM Restaurants
WHERE rating > 4.5
"""

# Load into DataFrame
df = pd.read_sql_query(query, conn)

# Save as CSV
df.to_csv("top_rated_restaurants.csv", index=False)

# Close connection
conn.close()

print("Daily summary saved successfully.")



