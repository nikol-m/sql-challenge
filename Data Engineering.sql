CREATE TABLE Department (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE Titles (
  title_id VARCHAR(6) PRIMARY KEY,
  title VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(6)NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30)NOT NULL,
  last_name VARCHAR(30)NOT NULL,
  sex VARCHAR(1)NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id)
);


CREATE TABLE Dept_emp (
  emp_no INT,
  dept_no VARCHAR(5)NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);


CREATE TABLE Dept_manager (
  dept_no VARCHAR(5),
  emp_no INT PRIMARY KEY,
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);


CREATE TABLE Salaries (
  emp_no INT,
  salary INT NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES Employees (emp_no) 
);