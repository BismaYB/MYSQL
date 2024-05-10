-- Create Database
CREATE DATABASE library;
USE library;

-- Create Tables
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(50),
    Contact_no VARCHAR(15));
desc Branch;

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Position VARCHAR(50),
    Salary int,
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));
desc Employee;

CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(25),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 3),
    Status ENUM('yes', 'no'),
    Author VARCHAR(25),
    Publisher VARCHAR(25));
desc Books;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(25),
    Customer_address VARCHAR(25),
    Reg_date DATE);
desc Customer;

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(25),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));
desc IssueStatus;

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(25),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
desc ReturnStatus;

-- Inserting Table Data
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, '123 Main Street', '1234567890'),
(2, 102, '456 Avenue', '9876543210'),
(3, 103, '789 East', '4567890123'),
(4, 104, '321  Road', '7890123456'),
(5, 105, '654 Lane', '0123456789'),
(6, 106, '987 Main', '3456789012'),
(7, 107, '210 Street', '6789012345'),
(8, 108, '543  Avenue', '9012345678'),
(9, 109, '876 West', '2345678901'),
(10, 110, '1098 Road', '5678901234');
select * from Branch;

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'John', 'Manager', 60000, 1),
(2, 'Jane', 'Assistant Manager', 50000, 2),
(3, 'Dane', 'Librarian', 45000, 2),
(4, 'Emily', 'Assistant Librarian', 45000, 1),
(5, 'Mike', 'Clerk', 35000, 3),
(6, 'can', 'Clerk', 35000, 3),
(7, 'Dani', 'Manager', 60000, 4),
(8, 'pop', 'AssistantM anager', 50000, 4),
(9, 'Moos', 'Librarian', 45000, 5),
(10, 'Elina', 'Assistant Librarian',34500, 5);
select * from  Employee;

INSERT INTO Books  VALUES('978-0132350884', 'IntroductiontoAlgorithms', 'Computer Science', 25.00, 'yes', 'Thomas H. Cormen', 'D Press');
insert into  books values('978-0262033848', 'Artificial Intelligence', 'Computer Science', 30.00, 'yes', 'Stuart Russell', 'Pearson');
insert into  books values('978-0134171456', 'The C ProgrammingLanguage', 'Computer Science', 50.00, 'yes', 'Balaguruswammy', 'DC books');
insert into  books values('978-0262533058', 'Brida', 'Novel', 35.00, 'yes', 'Paulo Coelho', 'HarperCollins');
insert into  books values('978-0061120084', 'Ikigai', 'Story', 15.00, 'yes', 'Hector', 'Hutchinson london');
insert into  books values('978-0141182605', 'The girl in room 105', 'Fiction', 100.00, 'yes', 'Chetan bhagat', 'WestlandBooks');
insert into  books values('978-0679417649', 'Pride and Prejudice', 'Fiction', 12.00, 'No', 'Jane Austen', 'Modern Library');
insert into  books values('978-0547928210', 'Harry potter', 'Fiction', 200.00, 'yes', 'J.k rowling', 'HarperCollins');
insert into  books values('978-0321125217', 'Atomic habit', 'Story', 50.00, 'yes', 'James Clear', 'Prentice Hall');
insert into  books values('978-0132922490', 'OOP with C++', 'Computer Science', 218.00, 'yes', 'Balaguruswammy', 'MC graw hill');
select * from  Books;

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'Alice', '456 Avenue', '2021-12-15'),
(2, 'Bob', '789 Main', '2021-11-20'),
(3, 'Charli', '321 Road', '2021-10-25'),
(4, 'Dane', '654Lane', '2021-09-30'),
(5, 'Eli', '987 Road', '2021-08-05'),
(6, 'Rony', '210 Street', '2021-07-10'),
(7, 'Gracy', '543 Avenue', '2021-06-15'),
(8, 'Jany', '876 Fort', '2021-05-20'),
(9, 'Taylor', '10 Road', '2021-11-25'),
(10, 'Jose', '123 Main', '2022-03-30');
select * from Customer ;

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, 'Introductionto Algorithms', '2023-06-01', '978-0132350884'),
(2, 2, 'Artificial Intelligence', '2023-06-02', '978-0262033848'),
(3, 3, 'The C ProgrammingLanguage', '2023-06-03', '978-0134171456'),
(4, 4, 'Brida', '2023-07-04', '978-0262533058'),
(5, 5, 'Ikigai', '2023-07-05', '978-0061120084'),
(6, 6, 'The girl in room 105', '2023-08-06', '978-0141182605'),
(7, 7, 'Pride and Prejudice', '2023-06-07', '978-0679417649'),
(8, 8, 'Harry potter', '2023-05-08', '978-0547928210'),
(9, 8, 'Atomic habit', '2023-06-09', '978-0321125217'),
(10, 10, 'OOP with C++', '2023-06-10', '978-0132922490');
select * from IssueStatus;

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 1, 'Introduction toAlgorithms', '2023-07-01', '978-0132350884'),
(2, 2, 'Artificial Intelligence', '2023-07-02', '978-0262033848'),
(3, 3, 'The C ProgrammingLanguage', '2023-07-03', '978-0134171456'),
(4, 4, 'Brida', '2023-08-04', '978-0262533058'),
(5, 5, 'Ikigai', '2023-08-05', '978-0061120084'),
(6, 6, 'The girl in room 105', '2023-09-06', '978-0141182605'),
(7, 7, 'Pride and Prejudice', '2023-07-07', '978-0679417649'),
(8, 8, 'Harry potter', '2023-07-08', '978-0547928210'),
(9, 8, 'Atomic habit', '2023-07-09', '978-0321125217'),
(10, 10, 'OOP with C++', '2023-07-10', '978-0132922490');
select * from ReturnStatus;

-- 1. Retrieve the book title, category, and rental price of all available books.
select book_title,category,rental_price from books where status="yes";

-- 2. List the employee names and their respective salaries in descending order of salary.
select emp_name,salary from employee order by salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT b.Book_title, c.Customer_name 
FROM Books b 
JOIN IssueStatus i ON b.ISBN = i.Isbn_book 
JOIN Customer c ON i.Issued_cust = c.Customer_Id;

-- 4. Display the total count of books in each category.
select  category,count(*) as Total_count from books group by category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select emp_name,position,salary from employee where salary>50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
select customer_name,reg_date from customer where reg_date < '2022-01-01' 
AND Customer_Id NOT IN (SELECT DISTINCT Issued_cust FROM IssueStatus);

-- 7. Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023. 
 
 SELECT DISTINCT c.Customer_name ,i.Issue_date
FROM Customer c 
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust 
WHERE MONTH(i.Issue_date) = 6 AND YEAR(i.Issue_date) = 2023;

-- 9. Retrieve book_title from book table containing history.
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) 
VALUES ('9781234567890', 'A Brief History of Time', 'History', 20.00, 'yes', 'Stephen Hawking', 'Bantam Books');

SELECT Book_title FROM Books WHERE Category LIKE '%history%';

-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(11, 'Dani', 'Clerk', 30000, 2),
(12, 'Thomas', 'Ass.manger', 48000, 2),
(13, 'johny', 'Clerk', 30000, 2),
(14, 'sanem', 'librarian', 670000, 2);

select branch_no,count(*)  Total_Employees from employee group by branch_no having count(*)>5;


-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

SELECT e.Emp_name,e.position, b.Branch_address 
FROM Employee e 
JOIN Branch b ON e.Branch_no = b.Branch_no 
WHERE e.Position = 'Manager';
 
 -- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
 
SELECT DISTINCT c.Customer_name 
FROM Customer c 
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust 
JOIN Books b ON i.Isbn_book = b.ISBN 
WHERE b.Rental_Price > 25;




