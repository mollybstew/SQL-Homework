CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30)
  );
  
CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
 ); 
  
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no integer NOT NULL,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
 ); 
 
 CREATE TABLE employees (
	emp_no integer NOT NULL,
	birth_date VARCHAR(20),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(10),
	hire_date VARCHAR(20)
 ); 
 
CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
 ); 
 
CREATE TABLE titles (
	emp_no integer NOT NULL,
	title VARCHAR(50),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
 ); 
 
select * from departments

select * from dept_emp

select * from manager

select * from employees

select * from salaries

select * from titles