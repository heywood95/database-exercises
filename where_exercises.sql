USE employees;

# 2. Find all employees with first names 'Irena', 'Vidya', or 'Maya' using IN.  

SELECT * 
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# 709 records

#Find all employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN.  
SELECT * 
FROM employees 
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name =  'Maya';
#709 records, matches Q2  

# 3. Find all employees with first names 'Irena', 'Vidya', or 'Maya', using OR, AND who is male.  
SELECT * 
FROM employees 
WHERE gender = 'M' AND(first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
# 441 records  

# 4. Find all employees whose last name starts with 'E'
   
SELECT * 
FROM employees  
WHERE last_name LIKE 'E%';
# 7330 records  

# 5. Find all employees whose last name starts OR ends with 'E' 

SELECT * 
FROM employees  
WHERE last_name LIKE 'E%'  OR last_name LIKE '%E';
# 30,723 records 

# 6. How many employees have a last name that ends with E, but does not start with E?   

SELECT * 
FROM employees  
WHERE last_name LIKE '%E'  AND NOT last_name LIKE 'E%';
# 23_393 records  

# 7. Find all employees employees whose last name starts AND ends with 'E'  

SELECT * 
FROM employees  
WHERE last_name LIKE 'E%'  AND last_name LIKE '%E';
# 899 records  

# 8. Find all employees hired in the 90s  

SELECT *  
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
# 135,214 records  

# 9. Find all employees born on Christmas  

SELECT * 
FROM employees 
WHERE birth_date LIKE '%-12-25';
# 842 records 
 
# 10. Find all employees hired in the 90s AND born on Christmas.   

SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25';
# 362 records  

# 11. Find all employees with a 'q' in their last name  

SELECT * 
FROM employees 
WHERE last_name LIKE '%q%';
# 1873 records 
 
# 12. Find all employees with a 'q' in their last name but NOT 'qu'  

SELECT * 
FROM employees 
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
# 547 records
