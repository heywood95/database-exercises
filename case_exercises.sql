# 1. Write a query that returns all employees, their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.

USE employees;

SELECT *
FROM employees;
-- emp_no, birth_date, first_name, last_name, gender, hire_date

SELECT *
FROM dept_emp;
-- emp_no, dept_no, from_date_, to_date

SELECT e.first_name, e.last_name, de.dept_no, de.from_date, de.to_date,
	CASE
		WHEN de.to_date > CURDATE() THEN 1
		ELSE 0
	END AS is_current_employee
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
GROUP BY e.first_name, e.last_name, de.dept_no, de.from_date, de.to_date;

# 2. Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.

SELECT first_name, last_name,
	CASE
		WHEN last_name BETWEEN 'A' AND 'I' THEN 'A-H' 
		WHEN last_name BETWEEN 'I' AND 'Q' THEN 'I-Q' 
		ELSE 'R-Z'
	END AS 'alpha_group'
FROM employees
GROUP BY first_name, last_name; 

# 3. How many employees (current or previous) were born in each decade?

SELECT COUNT(*),
	CASE
		WHEN birth_date >= '1960-01-01' then '60s'
		WHEN birth_date >= '1950-01-01' THEN '50s'
	END AS 'birth_decade'
FROM employees
GROUP BY birth_decade;

# 4. What is the current average salary for each of the following department groups: R&D, Sales & Marketing, Prod & QM, Finance & HR, Customer Service?		

SELECT *
FROM salaries;
-- emp_no, salary, from_date, to_date

SELECT * 
FROM departments;
-- dept_no, dept_name

SELECT * 
FROM dept_emp;
-- emp_no, dept_no, from_date, to_date



SELECT
   CASE
       WHEN dept_name IN ('Research', 'Development') THEN 'R&D'
       WHEN dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
       WHEN dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
       WHEN dept_name IN ('Finance', 'Human Resources') THEN 'Finance & HR'
       ELSE 'Customer Service'
   END AS 'new_dept', ROUND(AVG(salary), 2) AS mean_salary
FROM departments
	JOIN dept_emp de USING (dept_no)
	JOIN salaries s USING (emp_no)
WHERE de.to_date > NOW() AND s.to_date > NOW()
GROUP BY new_dept;
		
