--Data Modeling
--Inspect the CSVs and sketch out an ERD of the tables

--Data Engineering

--Create departments table
--dept_no and dept_name

CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE		(dept_name)
);

-- Create employees table 
-- emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date

CREATE TABLE employees (
	emp_no INTEGER NOT NULL UNIQUE PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL
);

--create dept_emp table
--emp_no,dept_no

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create dept_manager table
-- dept_no,emp_no   

CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- Create salaries table
-- emp_no,salary

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	
-- Create titles table
-- title_id,title
	
CREATE TABLE titles (
	title_id  VARCHAR NOT NULL,
	title VARCHAR  NOT NULL
);









