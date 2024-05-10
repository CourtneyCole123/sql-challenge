--Create Tables and check imports

CREATE TABLE depts (
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY(dept_no)
);

SELECT * FROM depts

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles

CREATE TABLE employees (
	emp_no VARCHAR,
	emp_title_id VARCHAR,
	birth_date Date,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date Date,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no)
);

SELECT * FROM dep_emp

CREATE TABLE dept_mgr(
	dept_no VARCHAR,
	emp_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_mgr

CREATE TABLE salaries(
	emp_no VARCHAR,
	salary VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries

