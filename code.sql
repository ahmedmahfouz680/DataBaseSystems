CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Departments (dept_name) VALUES 
('IT'),
('HR'),
('Sales');

INSERT INTO Employees (emp_name, salary, dept_id) VALUES 
('Ahmed', 15000.00, 1),
('Sara', 12000.00, 2),
('Omar', 18000.00, 1);

SELECT Employees.emp_name, Employees.salary, Departments.dept_name
FROM Employees
JOIN Departments ON Employees.dept_id = Departments.dept_id;