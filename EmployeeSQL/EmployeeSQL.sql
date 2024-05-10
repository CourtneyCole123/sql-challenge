--Create Tables

CREATE TABLE depts (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY(dept_no)
); 

CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no VARCHAR NOT NULL,
	emp_title_id VARCHAR,
	birth_date Date,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date Date,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no)
);

CREATE TABLE dept_mgr(
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no VARCHAR NOT NULL,
	salary VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);