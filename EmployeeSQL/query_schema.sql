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
SELECT Departments.dept_no, Departments.dept_name, Dept_manager.emp_no, Employees.last_name, Employees.first_name 
FROM Employees
JOIN Dept_manager ON 
Employees.emp_no=Dept_manager.emp_no
JOIN Departments ON
Departments.dept_no=Dept_manager.dept_no;

--4
SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_emp
JOIN Employees ON
Dept_emp.emp_no=Employees.emp_no
JOIN Departments ON
Dept_emp.dept_no=Departments.dept_no;

--5
SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6
SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Dept_emp ON
Employees.emp_no=Dept_emp.emp_no
Join Departments ON
Dept_emp.dept_no=Departments.dept_no
WHERE dept_name='Sales';