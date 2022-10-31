# 1. Find all the current employees with the same hire date as employee 101010 using a sub-query.

USE employees;

SHOW tables;

SELECT *
FROM employees;
-- emp_no, birth_date, first_name, last_name, gender, hire_date

SELECT *
FROM dept_emp;

SELECT *
FROM dept_manager;
-- emp_no, dept_no, from_date, to_date

SELECT *
FROM titles;
-- emp_no, title, from_date, to_date

SELECT *
FROM salaries;
-- emp_no, salary, from_date, to_date

SELECT first_name, last_name, hire_date
FROM employees WHERE emp_no IN	(
								SELECT emp_no 
								FROM dept_emp 
								WHERE to_date > CURDATE() AND hire_date = '1990-10-22'
								);
					
# 2. Find all the titles ever held by all current employees with the first name Aamod.

SELECT e.first_name, e.last_name, t.title
FROM employees AS e
JOIN titles AS t ON t.emp_no = e.emp_no
JOIN dept_emp as de ON de.emp_no = e.emp_no  
WHERE e.emp_no IN	(
					SELECT e.emp_no
					WHERE e.first_name = 'Aamod' AND de.to_date > CURDATE()
					)
ORDER BY e.last_name ASC;

# 3. How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.

SELECT e.first_name, e.last_name, de.to_date
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
WHERE e.emp_no IN 	(
					SELECT emp_no
						FROM dept_emp
					WHERE de.to_date < CURDATE()
						)
ORDER BY de.to_date DESC;
# 91_479 former employees

# 4. Find all the current department managers that are female. List their names in a comment in your code.

SELECT e.first_name, e.last_name, e.gender
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
WHERE e.emp_no IN (
					SELECT e.emp_no
					WHERE e.gender = "F" AND dm.to_date > CURDATE());
/* Isamu	Legleitner	F
Karsten	Sigstam	F
Leon	DasSarma	F
Hilary	Kambil	F */

# 5. Find all the employees who currently have a higher salary than the companies overall, historical average salary.

SELECT emp_no, CONCAT(first_name, " ", last_name) AS full_name, MAX(salary) AS highest
FROM employees
JOIN salaries USING(emp_no)
WHERE salary > (
				SELECT AVG(salary)
					FROM salaries
					)
AND to_date > CURDATE()
GROUP BY emp_no, full_name;

# 6. How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?
-- Hint You will likely use multiple subqueries in a variety of ways
-- Hint It's a good practice to write out all of the small queries that you can. Add a comment above the query showing the number of rows returned. You will use this number (or the query that produced it) in other, larger queries.

SELECT COUNT(*) AS num_of_emps, (COUNT(*) / (
										SELECT COUNT(to_date)
												FROM salaries
												WHERE to_date > CURDATE()) * 100)as percent_of_emps
												
FROM salaries
WHERE salary >= (
				SELECT (MAX(salary) - STD(salary))
				FROM salaries
					WHERE to_date > CURDATE()
					)
AND salaries.to_date > CURDATE();

						
								

			
