import mysql.connector as connector

# Establishing the connection
connection = connector.connect(
    user="root",
    password="srishti",
    host="localhost",  
    database="mydb"
)

# Creating a cursor object to interact with the database
cursor = connection.cursor()
print("Database connection established successfully.")

# Query to show all tables
show_tables_query = "SHOW TABLES"
cursor.execute(show_tables_query)

# Fetch and display the results
results = cursor.fetchall()
print("Tables in the database:")
for table in results:
    print(table[0])

# Query to fetch full name, contact details, and order total for orders > $60
query = """
SELECT c.Full_Name, c.Contact_Number, o.Total_Cost
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Total_Cost > 60;
"""

# Execute the query
cursor.execute(query)

# Fetch and display results
results = cursor.fetchall()
print("Customers with orders above $60:")
for row in results:
    print(f"Name: {row[0]}, Contact: {row[1]}, Order Total: ${row[2]:.2f}")

# Close the cursor and connection
cursor.close()
connection.close()
print("Database connection closed.")

