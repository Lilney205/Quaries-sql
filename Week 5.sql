-- Question 1: Create an Index on TotalAmount in bills Table
CREATE INDEX IdxTotalAmount ON bills (TotalAmount);

-- Question 2: Drop an Index Named IdxEmail from customer Table
DROP INDEX IdxEmail ON customer;

-- Question 3: Create a User 'bob' with Password 'S$cu3r3!', Restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 4: Grant INSERT Privilege to 'bob' on bills Database
GRANT INSERT ON bills.* TO 'bob'@'localhost';

-- Question 5: Change the Password for 'bob' to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
