/* 1:14:57 PM Codeup DB Server */ use employees;
/* 1:14:57 PM Codeup DB Server */ SHOW DATABASES;
/* 1:14:57 PM Codeup DB Server */ SELECT DATABASE();
/* 1:14:57 PM Codeup DB Server employees */ SHOW FULL TABLES;
/* 1:14:57 PM Codeup DB Server employees */ SELECT * FROM information_schema.routines WHERE routine_schema = 'employees' ORDER BY routine_name;
/* 1:15:21 PM Codeup DB Server employees */ show tables;
/* 1:19:34 PM Codeup DB Server employees */ /* Which table(s) do you think contain a numeric type column? employees and salaries Which table(s) do you think contain a string type column? All tables Which table(s) do you think contain a date type column? All tables What is the relationship between the employees and the departments tables? The id number as the primary key */  describe dept_manager;
