CREATE TABLE departments (
	dept_no VARCHAR(100) PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(20),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT, 
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL PRIMARY KEY ,
	title VARCHAR(20) NOT NULL
);

