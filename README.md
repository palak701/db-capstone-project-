# db-capstone-project-
Exercise: Setting up the repository
Introduction
As with any coding project, you’ll want to upload your work on a GitHub repository so that you can access different versions as needed, and to facilitate collaboration. You must clone the GitHub repository to your machine and push your code at the end of each exercise of this course.


Generic guidelines
Before you get started with the Little Lemon database project development, you'll need to establish somewhere for the project to reside. In this exercise, you’ll create a repository on GitHub and clone it to a local repository.


Prerequisites
To complete this lab, you need to create a GitHub account. You need also to download and install Git for your OS from the 
Git downloads page
.


Scenario
Little Lemon need you to help them set up a booking system to keep track of which guests are visiting the restaurant and at what times. In this first stage of the task, you need to:

Set up a repository, or local directory to house your code.

Record all changes made within the system as they’re implemented.

And allow others to view, review and add to your code.

You can carry out these steps using your knowledge of version control and online collaboration. Review the instructions that follow for guidance on completing these tasks.


Instructions
1. Navigate to your GitHub account and add a new repository. 

Screenshot of new repository menu
Taken from: 
https://docs.github.com/en/get-started/quickstart/create-a-repo#create-a-repository


2. Name the new project db-capstone-project 


3. Click Create repository 

Screenshot of create repository butto
Taken from: 
https://docs.github.com/en/get-started/quickstart/create-a-repo#create-a-repository


4. Select the code icon in the repo and copy the HTTPS address. 

Screenshot of code butto

5. Navigate to a local directory on your machine that you wish to store the project at. 


6. Initialize the repo using the following code:

1
git init

7. Create a readme.md file and write the message "setting up repository for project" 


8. To add files to the repo type:

1
git add readme.md

9. Commit the changes with a meaningful message, such as: 

1
git commit -m "adding project readme" 

10. Next, point the directory toward your git repository by using the git remote add command along with the destination URL from step 4.

1
git remote add origin <REMOTE_URL>

11. Verify the remote URL:

1
git remote -v

12. Push your repository.

1
git push -u origin master

You will be prompted to enter your GitHub details. Finally check your GitHub account to ensure the update of the readme file.


Conclusion
In this reading, you helped Little Lemon to create an online repo for your code. You also set up a local repository on your machine and a readme file that provides key details on the project.

Exercise: Set up the MySQL instance server in MySQL Workbench
Scenario 
Little Lemon needs to build a robust relational database system in MySQL to store large amounts of data which they can also easily manage and locate as required. Little Lemon have decided to use MySQL Workbench to develop their new database system. They need you to help them set up their MySQL environment to prepare for the design and development of their database. 


Prerequisites 
MySQL Workbench must already be downloaded and installed on your machine. 


Task Instructions
Complete the following tasks to help Little Lemon set up their MySQL environment. 


Task 1
Creating a new user is the most secure way to connect to your MySQL database. In this first task, you need to use MySQL Workbench to create a new user account. 

Here is some guidance for completing this task:

Log in to the MySQL Server using the root user.

Select Administration tab from the Navigator section.

Select Add account. 

Provide a meaningful username and a strong password.

Grant the new user the right to perform all tasks. 


Task 2
To prepare for building and managing your database, you need to be connected to a MySQL server. In this task you need to create a new MySQL connection. 

Here is some guidance for completing this task:

In the MySQL Workbench home screen, select MySQL connection tab. 

Select the plus icon to open the Setup New Connection form. 

Fill in the form to create a new server instance. 

Click the Test Connection button to check that the settings work as required. 

Once you have completed this task, you can use this connection to begin working with database schemas and SQL queries.


Conclusion
In this exercise, you created a new user account and an instance server. You are now ready to develop a suitable database system for Little Lemon.

Exercise: Create an ER diagram data model and implement it in MySQL
Scenario 
Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. This database system should maintain information about the following aspects of the business:  

Bookings.

Orders.

Order delivery status.

Menu.

Customer details.

and Staff information.


Prerequisites 
Use MySQL Workbench to create the ER diagram and to implement it in your MySQL server.


Task Instructions 
Little Lemon wants you to use MySQL Workbench to develop a relational database system and implement it in MySQL server. Save your database capstone project files in a folder on your machine and name it db-capstone-project.


Task 1
In this task, you need to create a normalized ER diagram (that adheres to 1NF, 2NF and 3NF) with relevant relationships to meet the data requirements of Little Lemon. When creating your diagram, include the following tables:

Bookings: To store information about booked tables in the restaurant including booking id, date and table number.

Orders: To store information about each order such as order date, quantity and total cost.

Order delivery status: To store information about the delivery status of each order such as delivery date and status.

Menu: To store information about cuisines, starters, courses, drinks and desserts.

Customer details: To store information about the customer names and contact details.

Staff information: Including role and salary.

Here is some guidance for completing this task:

Identify entities and related attributes. 

Identify primary and foreign keys.

Define data types and constraints. 

Once you have designed your ER diagram inside your MySQL Workbench Model Editor you then need to save your data model as LittleLemonDM and export it as a PNG file.


Task 2
In this second task, you need to implement the Little Lemon data model inside your MySQL server. Here is some guidance for completing this task:

Use the forward engineer method in MySQL Workbench to implement the Little Lemon data model inside MySQL server. 

Name your database LittleLemonDB. 

Export the LittleLemonDB as a single contained SQL file and save it in the db-capstone-project folder.


Task 3
In the third and final task, you need to show the databases in the MySQL server. Write a SQL code inside MySQL Workbench SQL editor to show all your databases in MySQL server. Check if the Little Lemon database is included in the list.


Conclusion
In this exercise, you created a data model for Little Lemon, implemented it in MySQL and listed all databases in MySQL server.

Exercise: Committing the project
Scenario
At this stage of the course, you have created a database model with the name LittleLemonDM. You have also developed a database with the name LittleLemonDB and exported the SQL file.

In this exercise, you’ll take the next step and commit the project to the remote repository on GitHub.


Prerequisites
You should have already cloned the GitHub repository to a local repository named db-capstone-project in your machine's workspace directory. 


Task instructions
Complete the following tasks to commit your project to Git. 

Task 1
In this first task, you need to create a new branch and commit the changes. Here are a few steps that you can follow. 

Step 1: Create a new branch on your local repository
Open the terminal and use the command $ git checkout –B command <branch-name> to create a new git branch.

Step 2: add the project folder to the stage
In the Git terminal, enter the command $ git add. 

Step 3: check the status
In the Git terminal, enter the command $ git status. This will display a list of details about the commit.

Step 4: commit the changes
The Git command for this action is $ git commit –m "message"


Task 2
After completing the first task, you should carry out the following steps to push and pull the changes to GitHub.

Step 1: Push the changes to the GitHub repository
Use the command $ git push –u origin <branch-name>

Step 2: Login to GitHub and open the repository
The repository page should display the Compare & pull request button. Go ahead and press it. 

Screenshot of compare & pull request button
Step 3: Create pull request
On the repository page, you’ll see the changes committed, and the Create & pull request button.

Screenshot of create pull request button
Step 4: Merge pull request
Review the changes and confirm by pressing the Merge pull request button.

Screenshot of merge request button
Task 3
After you complete the second task, you need to update the main branch by completing the following steps:

Step 1: Login to the main branch of local repository
Go back to the Git terminal and enter the command $ git checkout main

Step 2: Update the main branch
Use the $ git pull command.

Conclusion
In this exercise, you practiced the steps for pushing the Little Lemon database project files to the GitHub repository.

Exercise: Create a virtual table to summarize data
Scenario
Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:

Create a virtual table to summarize data.

Use a JOIN statement to query data from multiple tables.

Create a SQL statement with a subquery.

You can carry out these steps using your knowledge of virtual tables, JOIN statements and SQL queries. Review the instructions that follow for guidance on completing these tasks.


Prerequisites
In the previous module, you developed a data model for Little Lemon and implemented it in your MySQL server. Your database should now contain several tables including the following:

Menus, 

Orders, 

MenuItems,

and Customers.

These tables might have a different name within your database. However, they should still contain similar data to, and resemble the relationships in, the following diagram:

Diagram of data and relationships
You also need to use MySQL Workbench SQL editor to write the required subquery, virtual table and JOIN statements.


Task instructions
Little Lemon need you to create some reports on the orders placed in the restaurant. Complete the following tasks to help Little Lemon obtain the relevant information about the menu’s orders.


Task 1
In the first task, Little Lemon need you to create a virtual table called OrdersView that focuses on OrderID, Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2. 

Here’s some guidance around completing this task: 

Use a CREATE VIEW statement.

Extract the order id, quantity and cost data from the Orders table.

Filter data from the orders table based on orders with a quantity greater than 2. 

You can query the OrdersView table using the following syntax:

1
Select * from OrdersView;
The output result of your query (depending on the data populated in your database) should be similar to the example in the following screenshot. 

Output result of quer

Task 2
For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 

Customers table: The customer id and full name.

Orders table: The order id and cost.

Menus table: The menus name.

MenusItems table: course name and starter name.

The result set should be sorted by the lowest cost amount.

The output result of your query (depends on the data populated in your database) should be similar to the example in the following screenshot: 

Output result of query

Task 3
For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

Here’s some guidance around completing this task: 

Use the ANY operator in a subquery

The outer query should be used to select the menu name from the menus table.

The inner query should check if any item quantity in the order table is more than 2. 

The output result of your query (depends on the data populated in your database) should be similar to the following screenshot:

Output result of query

Conclusion
In this exercise you helped Little Lemon to create reports using your knowledge of virtual tables, JOIN statements and SQL queries.

Exercise: Create optimized queries to manage and analyze data
Scenario 
Little Lemon need to query the data in their database. To do this, they need your help with creating optimized queries using stored procedures and prepared statements.


Prerequisites
In the previous module, you developed a data model for Little Lemon and implemented it in your MySQL server. Your database should now contain several tables including the following:

Menus, 

Orders, 

MenuItems,

and Customers.

These tables might have different names within your database. However, they should still contain similar data to, and resemble the relationships in, the following diagram:

Diagram of data and relationships

You also need to use MySQL Workbench SQL editor to write the required stored procedures and prepared statements.


Task 1
In this first task, Little Lemon need you to create a procedure that displays the maximum ordered quantity in the Orders table. 

Creating this procedure will allow Little Lemon to reuse the logic implemented in the procedure easily without retyping the same code over again and again to check the maximum quantity. 

You can call the procedure GetMaxQuantity and invoke it as follows:

1
CALL GetMaxQuantity();

The output result of your query (depending on the data populated in your database) should be similar to the output in the following screenshot: 

Output result of query

Task 2
In the second task, Little Lemon need you to help them to create a prepared statement called GetOrderDetail. This prepared statement will help to reduce the parsing time of queries. It will also help to secure the database from SQL injections.

The prepared statement should accept one input argument, the CustomerID value, from a variable. 

The statement should return the order id, the quantity and the order cost from the Orders table. 

Once you create the prepared statement, you can create a variable called id and assign it value of 1. 

Then execute the GetOrderDetail prepared statement using the following syntax:

12
SET @id = 1;
EXECUTE GetOrderDetail USING @id;
Output result of query

Task 3
Your third and final task is to create a stored procedure called CancelOrder. Little Lemon want to use this stored procedure to delete an order record based on the user input of the order id.

Creating this procedure will allow Little Lemon to cancel any order by specifying the order id value in the procedure parameter without typing the entire SQL delete statement.   

If you invoke the CancelOrder procedure, the output result should be similar to the output of the following screenshot:

Output result of query

Conclusion
In this exercise, you helped Little Lemon to query the data in their database by creating optimized queries using stored procedures and prepared statements.

Exercise: Create SQL queries to check available bookings based on user input
Scenario 
Little Lemon’s data model must include a Bookings table so that they can store data for table bookings. They also need a stored procedure that checks available bookings based on user input, and a MySQL transaction that can be used to cancel bookings. Use your knowledge of MySQL to help them out.


Prerequisites
You should have created the Little Lemon database in an earlier module. This database should contain a basic Bookings table linked to a Customers table as illustrated below. Your tables can differ slightly from those provided in the example once the required relationship exists between the two.

Diagram illustrating relationship between Bookings and Customers

You also require access to MySQL Workbench SQL editor to write the required queries.


Task 1
Little Lemon wants to populate the Bookings table of their database with some records of data. Your first task is to replicate the list of records in the following table by adding them to the Little Lemon booking table. 

You can use simple INSERT statements to complete this task.

BookingID

BookingDate

TableNumber

CustomerID

1

2022-10-10

5

1

2

2022-11-12

3

3

3

2022-10-11

2

2

4

2022-10-13

2

1


Your output must resemble the following screenshot:

Output result of query

Task 2
For your second task, Little Lemon need you to create a stored procedure called CheckBooking to check whether a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved in repeatedly coding the same SQL statements.

The procedure should have two input parameters in the form of booking date and table number. You can also create a variable in the procedure to check the status of each table.

The output of your procedure should be similar to the following screenshot:

Output result of query

Task 3
For your third and final task, Little Lemon need to verify a booking, and decline any reservations for tables that are already booked under another name. 

Since integrity is not optional, Little Lemon need to ensure that every booking attempt includes these verification and decline steps. However, implementing these steps requires a stored procedure and a transaction. 

To implement these steps, you need to create a new procedure called AddValidBooking. This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.  

Use the following guidelines to complete this task:

The procedure should include two input parameters in the form of booking date and table number.

It also requires at least one variable and should begin with a START TRANSACTION statement.

Your INSERT statement must add a new booking record using the input parameter's values.

Use an IF ELSE statement to check if a table is already booked on the given date. 

If the table is already booked, then rollback the transaction. If the table is available, then commit the transaction. 

The screenshot below is an example of a rollback (cancelled booking), which was enacted because table number 5 is already booked on the specified date.

Code for adding valid booking
 

Conclusion
Little Lemon’s customers can now check available bookings based on user input. And you can create SQL queries that let users check records based on their input.

Exercise: Create SQL queries to add and update bookings
Scenario 
Little Lemon needs your help with managing their bookings. They need you to create stored procedures that they can invoke as required to add, update and delete bookings in their database.


Prerequisites
You should have a basic Bookings table in your Little Lemon database that’s linked to a Customers table. An example of these tables is illustrated below for reference. Your tables can look slightly different once the required relationship exists between the two. 

Example of relationship between bookings and customers tables

Task 1
In this first task you need to create a new procedure called AddBooking to add a new table booking record.

The procedure should include four input parameters in the form of the following bookings parameters:

booking id, 

customer id, 

booking date,

and table number.

The screenshot below shows an example of the AddBooking statement:

Add Booking Procedure

Task 2
For your second task, Little Lemon need you to create a new procedure called UpdateBooking that they can use to update existing bookings in the booking table.

The procedure should have two input parameters in the form of booking id and booking date. You must also include an UPDATE statement inside the procedure. 

The screenshot below shows an example of the UpdateBooking procedure in use.

Screenshot of UpdateBooking procedure

Task 3
For the third and final task, Little Lemon need you to create a new procedure called CancelBooking that they can use to cancel or remove a booking.

The procedure should have one input parameter in the form of booking id. You must also write a DELETE statement inside the procedure. 

When the procedure is invoked, the output result should be similar to the following screenshot:

Output result of query

Conclusion
You have helped Little Lemon to create the required stored procedures for their booking system. And you should now be able to create multiple stored procedures to add, update and delete records in a database.

Exercise: Set up the Tableau Workspace for data analysis
Scenario 
Little Lemon have an Excel sheet file with thousands of records of data on orders made between 2019 and 2023. They want to analyze the sales data to examine how they can increase their profits. They need you to help them to prepare the existing data before they start analyzing it.   


Prerequisites 
Check that you have the following before you begin these tasks:

Tableau already installed on your machine 

Little Lemon DB Excel Sheet should be downloaded on your machine  


Task instructions
Complete the following tasks to help Little Lemon set up their Tableau Workspace for data analysis. 


Task 1
In this first task, you need to connect to Little Lemon data stored in the Excel Sheet called LittleLemonDB. Then filter data in the data source page and select the United States as the country.

Here’s some guidance for completing this task:

Open Tableau. In the Connection Pane select Excel, then navigate to the data source.

In the data source page, select Filter Tab.


Task 2
In the second task, you need to create two new data fields called First Name and Last Name. Related values should be extracted from the Full Name field.

Here’s some guidance for completing this task:

You can use the Split feature in Tableau.

Rename the new fields.


Task 3
For your third task, you need to create a new data field that stores the profits for each sale, or order as shown in the screenshot below.

Here’s some guidance for completing this task:

Select Sales field in the Data Pane, then select Create Calculated field. 

Name the calculated field Profit.

Write a formula that deducts Cost from Sales. 

Once you complete these tasks you should be ready to perform data analytics and to create visual charts. 

Example of Sales and Profit tables

Conclusion
You have now prepared Little Lemon’s data in Tableau. You can now begin analyzing it and providing relevant visualized charts.

Exercise: Create interactive dashboard for sales and profits
Scenario 
In the previous exercise, you prepared Little Lemon’s data to perform data analytics. Little Lemon now need you to filter the data, analyze it and create visual charts in the form of an interactive dashboard to help them understand their business performance, so they can increase their sales and profits.


Prerequisites 
Tableau already installed on your machine. 

Little Lemon DB Excel Sheet should be downloaded on your machine.


Task instructions
Complete the following tasks to help Little Lemon create interactive dashboards to display their sales and profits.


Task 1
In the first task, you need to create a bar chart that shows customers sales and filter data based on sales with at least $70.

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane into the shelves section.

Use a suitable colour scheme.

Filter sales based on sales >= $70.

Name the chart Customers sales.

If you roll over a bar, the customer names and sale figures should be displayed as shown below.

Example of interactive chart

Task 2
In the second task, you need to create a line chart to show the sales trend from 2019 to 2022. 

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable colour scheme.

Filter data to exclude 2023.

Name the chart Profit chart.

Your chart should show the trend of sales from 2019 to 2022 only as shown below. 

Example of interactive chart

Task 3
In the third task, you need to create a Bubble chart of sales for all customers. The chart should show the names of all customers. Once you roll over a bubble, the chart should show the name, profit and sale.

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable colour scheme.

Name the chart Sales Bubble Chart.

Your chart should show the following Bubble chart.

Example of Sales Bubble chart

Task 4
In this task, you need to compare the sales of the three different cuisines sold at Little Lemon. Create a Bar chart that shows the sales of the Turkish, Italian and Greek cuisines.

You need to display sales data for 2020, 2021, and 2022 only. Each bar should display the profit of each cuisine. 

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable color scheme.

Name the worksheet Cuisine Sales and Profits.

Sort data in descending order by the sum of the sale.

Your chart should be similar to the following example:

Example of Cuisine Sales and Profit chart

Task 5
In this final task, you need to create an interactive dashboard that combines the Bar chart called Customers sales and the Sales Bubble Chart. Once you click a bar, and roll over the related bubble, the name, sales and profit figures should be displayed in the Bubble chart as shown below.

Example of interactive dashboard

Conclusion
By completing the above tasks, you have helped Little Lemon in understand their data, evaluate their sales and understand which customers they should take care of more.

Exercise: Set up the client project
Overview
At this point you are familiar with all the tools required for creating a booking system for Little Lemon. You have refreshed your knowledge on Python, Jupyter Notebooks, Connector/python and version control. Now you are ready for this exercise, which is to create your working environment. 


Scenario
Little Lemon needs you to help them to build a Booking System so that their guests can book tables with the restaurant. Use your knowledge of database clients to help Little Lemon complete this task.


Prerequisites
To complete this task, you need to create a folder and then open a command prompt at that location. Next, to start writing code to create the booking system, you first need to ensure that you have Python installed, a working IDE and configured a driver that you can use to interact with your database.


Task Instructions
Complete the following tasks to set up the client project.


Task 1
Your first task is to navigate to your terminal and ensure that Python is installed and available on the command path. To complete this task, type the following syntax:

1
python --version

This should display the version number of the python installed. Your OS should be running Python version 3. If faced with an earlier version of Python, or a command not found message, navigate to 
https://www.python.org/downloads/
 for instructions on how to configure and install an appropriate version for your operating system. 


Task 2
Having established that an up-to date version of python is installed on your machine you will need to install Jupyter. You can install Jupyter using the following code: 

1
python -m pip install jupyter

Once Jupyter is installed, you can open a notebook by typing the following command in the terminal:

1
jupyter notebook 

Once you’ve opened Jupyter, you then need to create a new notebook for writing your code by clicking new and then selecting ipykernel. This action creates a new notebook from which you can compile code.


Task 3
Your third and final task is to establish a connection between Python and your database using the following steps:


Step One: 

Ensure that mysql-connector is installed by running the command:

1
!pip install mysql-connector-python

Step Two: 

Import the connector under the alias connector:

1
import mysql.connector as connector

Step Three: 

Verify that a connection can be made with your database by calling the connection method from the connector class: 

1
connection = connector.connect(user = "your_user_name", password = "your_password_for_database")

Conclusion
You now have configured your working environment so that you can use it to write the code for Little Lemon’s booking system.

Exercise: Add query functions
Scenario 
Little Lemon have started building a functional booking system from which they can manage their customer data. An integral part of a well-functioning system is the ability to query data. Little Lemon need you to help them add the search functionality required to query their data. 


Prerequisites
At this stage of the project, you should have set up the working environment, configured the connector/python and created a database with all the customer information. To implement a booking system, you will first have to review how to make queries on an existing database using Python syntax.


Task One
In the previous exercise you created a Python environment. In the first task of this exercise, you are tasked with extending the environment to connect with your database and interact with the data it holds. 

Your first step is to import the connector module, enter your user details and connect with the database (Hint: you can use an alias when importing the module).

This gives you access to all the functionality available from the connector API, which can be accessed through the variable named connector (or whichever alias you choose). 

To connect with your database, you can call the connect method of the connector class and pass in your details using the following code: 

1
connection = connector.connect(user = "your_username", password = "your_password", db = "database_name") 

This code should look very familiar to you from the previous course, apart from the parameter db. DB stands for database. When instantiating the connection, you can pass the database name here in place of calling the USE command later. 

The final step is to instantiate an instance of cursor to pass queries and return results (Hint: the cursor is part of the connection class outlined above).


Task two
In this second task, you now need to query the database to show all tables within the database. 

Having established a connection in the first task, you need to execute a test query to ensure that there are no issues. You can do this by executing, or passing, a generic query that returns a snapshot of the database tables. 

You need to execute the query on the cursor using the code that follows. The cursor, as you should recall, is the bridge through which you can pass queries and return results. 

12
show_tables_query = "SHOW tables" 
cursor.execute(show_tables_query)

As before, a variable is used to hold the query. To gain a general insight, the query asks to display all tables within the database. 

The second line calls the cursor execute method. This method takes the Python string and ports it into a viable SQL statement. It then passes it to the database and returns the result. 

To view the results of your query, you can create another variable called results (Hint: the cursor has a method that can return all results in one call). 

To view the tables that are associated with a database, you can print out the results variable using the following code: 

1
print(results)

Task 3
Query with table JOIN

For the third and final task, Little Lemon need you to return specific details from your database. They require the full name and contact details for every customer that has placed an order greater than $60 for a promotional campaign. 

You can use the following steps to implement this functionality in your database directory:


Step One: Identify which tables are required. To complete the query, you first need to identify which table has the required data. 

The bill paid can be found in Orders as TotalCost and the customer contact information can be found in the Customers table. 

When selecting attributes from a specific table, specify the table name, followed by a dot and the target attribute as below (Hint: select the column attributes that you will need). 


Step Two: Next, specify a table (Hint: The FROM keyword allows you to identify a table.)

To join two tables, specify the type of JOIN and the attribute to join the table on. The tables must be joined on an attribute that is common to both tables (such as a common column).


Step Three: Finally, include a clause to filter the data on. (Hint: the WHERE clause can be used to add conditional parameters.) 

When you have completed these steps, wrap this query as a string and pass it to the .execute() method of the cursor class. When executed, your SELECT query must extract the full name, contact details and bill amount for every customer who spent more than $60.


Conclusion
In this exercise you reviewed the mechanisms for performing queries using Python.

