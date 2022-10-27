# 1. Use the join_example_db. Select all the records from both the users and roles tables.

USE join_example_db;

SELECT *
FROM users;

SELECT * 
FROM roles;

# 2. Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# 3. Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

SELECT users.name AS user_name, roles.name AS role_name, COUNT(*)
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY user_name, role_name;

# 1. Use the employees database.

USE employees;

# 2. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SHOW tables;

SELECT * 
FROM dept_manager;
-- emp_no, dept_no

SELECT *
FROM departments;
-- dept_no, dept_name

SELECT *
FROM employees;
-- em_no, first_name, last_name, gender

SELECT *
FROM dept_emp;
-- emp_no, dep_no, from_date, to_date

SELECT *
FROM titles;
-- emp_no, title, from_date_, to_date

SELECT *
FROM salaries;
-- emp_no, salary, from_date, to_date

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

# 3. Find the name of all departments currently managed by women.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, e.gender
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name ASC;

# 4. Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS Title, COUNT(e.emp_no) AS Count
FROM employees AS e
JOIN titles AS t
	ON t.emp_no = e.emp_no
JOIN dept_emp AS de
	ON de.emp_no = t.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_no = 'd009'
GROUP BY title
ORDER BY title ASC;

# 5. Find the current salary of all current managers.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
JOIN salaries AS s
	ON s.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# 6. Find the number of current employees in each department.

SELECT d.dept_no, d.dept_name, COUNT(e.emp_no) as num_employees
FROM employees AS e
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_no
ORDER BY d.dept_no;

# 7. Which department has the highest average salary? Hint: Use current not historic information.

SELECT d.dept_name, ROUND(AVG(salary)) AS Highest_average_salary
FROM employees AS e
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
JOIN salaries as s
	ON s.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_name
ORDER BY Highest_average_salary DESC
LIMIT 1;

# 8. Who is the highest paid employee in the Marketing departments

SELECT e.first_name, e.last_name, s.salary, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
	ON e. emp_no = de.emp_no
JOIN salaries AS s 
	ON e.emp_no = s.emp_no
JOIN departments AS d 
	ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01' AND d.dept_name = 'Marketing'
ORDER BY s.salary DESC
LIMIT 1;

# 9. Which current department manager has the highest salary?

SELECT e.first_name, e.last_name, s.salary, d.dept_name
FROM employees AS e
JOIN dept_manager AS dm 
	ON e.emp_no = dm.emp_no
JOIN salaries AS s 
	ON e.emp_no = s.emp_no
JOIN departments AS d 
	USING(dept_no) 
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY s.salary DESC
LIMIT 1;

# Determine the average salary for each department. Use all salary information and round your results.

SELECT d.dept_name, ROUND(AVG(s.salary), 0) AS avg_dept_salary
FROM departments d
JOIN dept_emp de 
	ON d.dept_no = de.dept_no
JOIN salaries s 
	ON de.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY avg_dept_salary DESC;




