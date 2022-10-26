USE employees;

# 2. List the first 10 distinct last name sorted in descending order.

SELECT DISTINCT last_name 
FROM employees 
ORDER BY last_name DESC 
LIMIT 10; 
/* Zykh
Zyda
Zwicker
Zweizig
Zumaque
Zultner
Zucker
Zuberek
Zschoche
Zongker */

# 3. Find all employees hired in the 90s AND born on Christmas. Find the first 5 employees hired in the 90's by sorting by hire date and limiting your results to the first 5 records. Write a comment in your code that lists the five names of the employees returned.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5;
/* 
Alselm	    Cappello	1990-01-01
Utz	        Mandell	    1990-01-03
Bouchung	Schreiter	1990-01-04
Baocai	    Kushner	    1990-01-05
Petter  	Stroustrup	1990-01-10
*/

# 4. Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 45;

# LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?

# In order to get the offset you have to subtract the first page from the page number that you want and then multiply that by your limit.