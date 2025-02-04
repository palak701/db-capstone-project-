-- Use the database
USE mydb;

-- Show the tables in the database
SHOW TABLES;

-- Create the OrdersView to filter orders with quantity greater than 2
CREATE VIEW OrdersView AS
SELECT Order_ID, Quantity, Total_Cost
FROM Orders
WHERE Quantity > 2;

-- Display the created view to ensure it has data
SELECT * FROM OrdersView;

-- Check structure of the Menu table and add Cuisine_Name column if missing
DESC Menu;
ALTER TABLE Menu ADD COLUMN Cuisine_Name VARCHAR(45);

-- Modify Contact_Number column in Customers table to allow VARCHAR(20)
ALTER TABLE Customers MODIFY Contact_Number VARCHAR(20);

-- Insert 10 customers (assumed that data has been inserted previously)
-- Insert 10 staff members (same as above)
-- Insert 10 menu items (same as above)

-- Insert 10 orders
INSERT INTO Orders (Order_ID, Order_Date, Quantity, Total_Cost, Customer_ID, Booking_ID)
VALUES
    (1, '2025-02-04', 3, 45.00, 1, 1),
    (2, '2025-02-04', 1, 20.00, 2, 2),
    (3, '2025-02-04', 5, 70.00, 3, 3),
    (4, '2025-02-04', 2, 30.00, 4, 4),
    (5, '2025-02-04', 4, 60.00, 5, 5),
    (6, '2025-02-04', 6, 90.00, 6, 6),
    (7, '2025-02-04', 2, 25.00, 7, 7),
    (8, '2025-02-04', 3, 50.00, 8, 8),
    (9, '2025-02-04', 1, 15.00, 9, 9),
    (10, '2025-02-04', 2, 40.00, 10, 10);

-- Select all bookings to verify data
SELECT * FROM Bookings;

-- Select all order delivery statuses (this table may need to exist in your schema)
SELECT * FROM Order_Delivery_Status;

-- Query to select customers, orders, and menu items where total cost > 150
-- You may adjust the "Total_Cost" threshold based on the data inserted.
SELECT 
    c.Customer_ID, 
    c.Full_Name, 
    o.Order_ID, 
    o.Total_Cost, 
    m.Cuisine_Name, 
    m.Starter_Name, 
    m.Course_Name
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Menu m ON o.Booking_ID = m.Menu_ID
WHERE o.Total_Cost > 50 -- Adjust this threshold based on your data
ORDER BY o.Total_Cost ASC;

-- Query to select cuisine names where Menu_ID exists in orders with quantity > 2
SELECT Cuisine_Name 
FROM Menu
WHERE Menu_ID IN (
    SELECT DISTINCT Menu_ID 
    FROM Orders 
    WHERE Quantity > 2
);

-- Bonus: View customers who made orders of quantity greater than 2 and total cost > 50
SELECT 
    c.Customer_ID,
    c.Full_Name,
    o.Order_ID,
    o.Quantity,
    o.Total_Cost
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
WHERE o.Quantity > 2 AND o.Total_Cost > 50;


DELIMITER $$

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS Max_Ordered_Quantity
    FROM Orders;
END$$

DELIMITER ;
CALL GetMaxQuantity();
DELIMITER $$

DELIMITER $$

CREATE PROCEDURE GetOrderDetail(IN customerID INT)
BEGIN
    PREPARE stmt FROM
    'SELECT Order_ID, Quantity, Total_Cost FROM Orders WHERE Customer_ID = ?';
    
    SET @id = customerID;

    EXECUTE stmt USING @id;
    DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;
CALL GetOrderDetail(1); 

DELIMITER $$

CREATE PROCEDURE CancelOrder(IN orderID INT)
BEGIN
    DELETE FROM Orders WHERE Order_ID = orderID;
    SELECT 'Order has been canceled' AS Message;
END$$

DELIMITER ;


INSERT INTO Bookings (Booking_ID, Booking_Date, Table_No, Customer_ID)
VALUES
    (11, '2022-10-10', 5, 1),
    (12, '2022-11-12', 3, 3),
    (13, '2022-10-11', 2, 2),
    (14, '2022-10-13', 2, 1);
    
DELIMITER $$

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status INT;

    -- Check if the table is already booked on the specified date
    SELECT COUNT(*) INTO table_status
    FROM Bookings
    WHERE Booking_Date = booking_date AND Table_No = table_number;

    -- Return status
    IF table_status > 0 THEN
        SELECT 'Table is already booked on this date.' AS Status;
    ELSE
        SELECT 'Table is available on this date.' AS Status;
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
    DECLARE table_status INT;

    -- Start transaction
    START TRANSACTION;

    -- Check if the table is already booked
    SELECT COUNT(*) INTO table_status
    FROM Bookings
    WHERE Booking_Date = booking_date AND Table_No = table_number;

    -- If table is already booked, rollback the transaction
    IF table_status > 0 THEN
        ROLLBACK;
        SELECT 'Booking failed. Table is already booked.' AS Status;
    ELSE
        -- Table is available, insert booking and commit transaction
        INSERT INTO Bookings (Booking_Date, Table_No, Customer_ID)
        VALUES (booking_date, table_number, customer_id);
        COMMIT;
        SELECT 'Booking successful.' AS Status;
    END IF;
END$$

DELIMITER ;

CALL CheckBooking('2022-10-10', 5); 
CALL AddValidBooking('2022-10-10', 5, 2);

DELIMITER $$

CREATE PROCEDURE AddBooking(
    IN booking_id INT, 
    IN customer_id INT, 
    IN booking_date DATE, 
    IN table_number INT
)
BEGIN
    -- Insert a new booking record
    INSERT INTO Bookings (Booking_ID, Customer_ID, Booking_Date, Table_No)
    VALUES (booking_id, customer_id, booking_date, table_number);
    
    SELECT 'Booking added successfully.' AS Status;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT, 
    IN new_booking_date DATE
)
BEGIN
    -- Update the booking date for the given booking_id
    UPDATE Bookings
    SET Booking_Date = new_booking_date
    WHERE Booking_ID = booking_id;
    
    SELECT 'Booking updated successfully.' AS Status;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    -- Delete the booking record for the given booking_id
    DELETE FROM Bookings
    WHERE Booking_ID = booking_id;
    
    SELECT 'Booking cancelled successfully.' AS Status;
END$$

DELIMITER ;
CALL AddBooking(15, 3, '2022-11-12', 5);
CALL UpdateBooking(1, '2022-11-15'); 





















