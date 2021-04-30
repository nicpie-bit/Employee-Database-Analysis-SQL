DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Dept_emp CASCADE;
DROP TABLE IF EXISTS Dept_manager CASCADE;

CREATE TABLE Employees (
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE Titles (
	title_id VARCHAR NOT NULL,
	PRIMARY KEY (titel_id),
	titel VARCHAR NOT NULL
);

CREATE TABLE Departments (
	dept_no VARCHAR NOT NULL, 
	PRIMARY KEY (dept_no),
	dept_name VARCHAR NOT NULL
);

CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	salary INT NOT NULL
);

CREATE TABLE Dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL
);

CREATE TABLE Dept_manager (
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL 
);
