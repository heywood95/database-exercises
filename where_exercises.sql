USE employees;

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WITH FIRT NAMES 'IRENA', 'VIDYA', OR 'MAYA'

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# 709 records returned

SELECT *
FROM employees
WHERE first_name = 'Irena' 
OR first_name = 'Vidya' OR first_name = 'Maya';

# 709 records returned. This does match Q2


# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WITH FIRT NAMES 'IRENA', 'VIDYA', OR 'MAYA' AND WHO IS MALE USING OR

SELECT *
FROM employees
WHERE gender = 'M' AND first_name = 'Irena' 
OR first_name = 'Vidya' OR first_name = 'Maya';

# 612 records returned

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WHOSE LAST NAMES START WITH 'E'

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# employees with last name of E = 7330


# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WHOSE LAST NAMES STARTS OR ENDS WITH 'E'

SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e';

# 30,723 records returned

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WHOSE LAST NAMES STARTS AND ENDS WITH 'E'

SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE'%e';

# 899 employees names sart and end in 'E'

SELECT *
FROM employees
WHERE last_name LIKE '%e';

# 24,292 employees names end with 'e'

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES HIRED IN THE 90s

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# 135,214 employees hired in the 90s

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES BORN ON CHRISTMAS

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

# 842 employees born on Christmas

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES HIRED IN THE 90s AND BORN ON CHRISTMAS

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND birth_date LIKE '%-12-25';
	
# 362 employees hired in the 90s and born on Christmas

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WITH A 'q' IN THEIR LAST NAME

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# 1873 employees with 'q' in their last name

# FIND ALL CURRENT OR PREVIOUS EMPLOYEES WITH A 'q' IN THEIR LAST NAME BUT NOT 'qu'

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# 547 employees with 'q' in their last name but not 'qu'






