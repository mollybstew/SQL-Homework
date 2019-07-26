-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no as "Employee Number", 
	e.last_name as "Last Name", 
	e.first_name as "First Name", 
	e.gender as "Gender", 
	s.salary as "Salary"
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no

-- List employees who were hired in 1986.
SELECT first_name as "First Name", 
	last_name as "Last Name", 
	hire_date as "Hire Date"
FROM employees
WHERE hire_date LIKE '1986-%'

-- List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.
SELECT d.dept_no as "Department Number", 
	d.dept_name as "Department Name", 
	dm.emp_no as "Employee Number", 
	e.last_name as "Last Name", 
	e.first_name as "First Name", 
	e.hire_date "Start Date", 
	s.to_date as "End Date"
FROM departments d
LEFT JOIN dept_manager dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees e
on dm.emp_no = e.emp_no
LEFT JOIN salaries s
on e.emp_no = s.emp_no


--List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee Number", 
	e.last_name as "Last Name", 
	e.first_name as "First Name", 
	d.dept_name as "Department Name" 
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no


-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name as "First Name", 
	last_name as "Last Name"
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT e.emp_no as "Employee Number", 
	e.last_name as "Last Name", 
	e.first_name as "First Name", 
	d.dept_name as "Department Name" 
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no as "Employee Number", 
	e.last_name as "Last Name", 
	e.first_name as "First Name", 
	d.dept_name as "Department Name" 
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'




