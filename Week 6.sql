-- Question 1: INNER JOIN on bills and payments
SELECT 
    b.TotalAmount, 
    b.Status, 
    p.DueDate, 
    p.PaymentMethod, 
    p.PaymentAmount
FROM bills b
INNER JOIN payments p ON b.BillID = p.BillID;

-- Question 2: LEFT JOIN on customer and bills
SELECT 
    c.customerName, 
    c.email, 
    c.customerAddress, 
    b.TotalAmount, 
    b.Status
FROM customer c
LEFT JOIN bills b ON c.customerID = b.customerID;

-- Question 3: RIGHT JOIN on bills and bill_items
SELECT 
    b.BillDate, 
    b.DueDate, 
    bi.Status, 
    bi.ItemDescription, 
    bi.Quantity, 
    bi.LineTotal, 
    DATEDIFF(b.DueDate, b.BillDate) AS Number_of_Days
FROM bills b
RIGHT JOIN bill_items bi ON b.BillID = bi.BillID;

-- Question 4: Creating users and user_profiles tables (One-to-One Relationship)
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL
);

CREATE TABLE user_profiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE, 
    profile_data TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Question 5: Creating departments and employees tables (One-to-Many Relationship)
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
);

-- Question 6: INNER JOIN and LEFT JOIN on categories, bills, and customer
SELECT 
    c.CategoryName, 
    b.TotalAmount, 
    b.DueDate, 
    cu.customerName, 
    cu.customerAddress
FROM categories c
INNER JOIN bills b ON c.CategoryID = b.CategoryID
LEFT JOIN customer cu ON b.CustomerID = cu.CustomerID;no
