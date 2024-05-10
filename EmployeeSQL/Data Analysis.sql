SELECT * from salaries

--Data Analysis Section

--1: List employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, last_name,first_name,sex, salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no = salaries.emp_no

--2: List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date 
BETWEEN '1985-12-31' 
AND '1987-01-01'

--3: List the manager of each department along with their department number,
--department name, employee number, last name, and first name
SELECT dept_mgr.dept_no,dept_name,dept_mgr.emp_no,last_name,first_name
FROM dept_mgr
JOIN employees ON
dept_mgr.emp_no = employees.emp_no
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN depts ON
dept_emp.dept_no = depts.dept_no

--4: List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name

--5: List first name, last name, and sex of each employee whose first name is
--Hercules and whose last name begins with the letter B

--6: List each employee in the Sales department, including their employee number, last name,
--and first name 

--7: List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name

--8: List the frequency counts, in descending order, of all the employee last names