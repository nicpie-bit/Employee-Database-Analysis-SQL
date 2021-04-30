--1
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Salaries 
JOIN Employees ON 
Employees.emp_no=Salaries.emp_no;

--2
SELECT Employees.first_name, Employees.last_name, Employees.hire_date
FROM Employees
WHERE hire_date>='01/01/86' AND hire_date<='12/31/86';

--3
SELECT Departments.dept_no, Departments.dept_name, Dept_emp.dept_no, Employees.last_name, Employees.first_name 
FROM Employees
JOIN Dept_emp ON 
Employees.emp_no=Dept_emp.emp_no
JOIN Departments ON
Departments.dept_no=Dept_emp.dept_no;

--4