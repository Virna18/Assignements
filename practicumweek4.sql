Opgave 1
1. -

2. 
desc my_employees;

3. 
INSERT INTO my_employees
Values (1, 'Patel', 'Ralph', 'rpatel', 895);

4.
INSERT INTO my_employees (id, last_name, first_name, userid, salary)
Values (2, 'Dancs', 'Betty', 'bdancs', 860);

5.
Select * from my_employees;

6.
INSERT INTO my_employees
VALUES (3, 'Biri', 'Ben', 'bbiri', 1100), 
(4, 'Newman', 'Chad', 'cnewman', 750),
(5, 'Ropeburn', 'Audrey', 'aropebur', 1550);

7.
select * from my_employees

8.
UPDATE my_employees
SET last_name = 'Van der Veen'
WHERE id = 4;

9.
UPDATE my_employees
SET salary = 1000
WHERE salary <900;

10.
DELETE FROM my_employees
WHERE last_name = 'Biri';

11.
UPDATE my_employees
SET userid = 'cdrexler'
WHERE id IN (4,5) AND salary <1200;

12.
select * from my_employees

Opgave 2
1. 
CREATE TABLE dept (
id INT(7) PRIMARY KEY,
name VARCHAR(25)
);

2.
DESC dept;

3.
INSERT INTO dept (id, name)
SELECT department_id, department_name 
FROM departments;

4.
Select * from dept;

5.
CREATE TABLE emp (
id INT(7) PRIMARY KEY,
last_name VARCHAR(25),
dept_id INT(7), 
FOREIGN KEY (dept_id)
REFERENCES dept (id)
);

6.
DESC emp

7.
DROP TABLE dept, emp; 