# MYSQL

## Library Management System MySQL Project

This project is a MySQL implementation of a Library Management System. It manages information about branch, books, 
employees, customers, and the status of book issues and returns.

## Database Schema

The database library consists of the following tables:

### Branch: Stores information about library branches.

Attributes: Branch_no, Manager_Id, Branch_address, Contact_no

### Employee: Contains details of library employees.

Attributes: Emp_Id, Emp_name, Position, Salary, Branch_no (foreign key)

### Books: Holds information about books available in the library.

Attributes: ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher

### Customer: Stores customer information.

Attributes: Customer_Id, Customer_name, Customer_address, Reg_date

### IssueStatus: Tracks issued books.

Attributes: Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book (foreign key)

### ReturnStatus: Tracks returned books.

Attributes: Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2 (foreign key)

## Retriving these values from tables
1. Retrieve the book title, category, and rental price of all available books. 
2. List the employee names and their respective salaries in descending order of salary. 
3. Retrieve the book titles and the corresponding customers who have issued those books. 
4. Display the total count of books in each category. 
5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
7. Display the branch numbers and the total count of employees in each branch. 
8. Display the names of customers who have issued books in the month of June 2023.
9. Retrieve book_title from book table containing history. 
10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
11. Retrieve the names of employees who manage branches and their respective branch addresses.
12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.

 ### Answer screenshot and mysql file is attached with repository please check

