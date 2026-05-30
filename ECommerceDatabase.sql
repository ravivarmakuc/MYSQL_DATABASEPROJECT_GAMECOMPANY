CREATE DATABASE myGameCompany;
USE myGameCompany;
CREATE TABLE employees(
employee_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
job_title VARCHAR(50),
salary INT,
hire_date DATE
);


ALTER TABLE employees
ADD COLUMN department VARCHAR(50);

ALTER TABLE employees
MODIFY department VARCHAR(50) AFTER last_name;

ALTER TABLE employees
MODIFY COLUMN salary VARCHAR(50);

INSERT INTO employees
VALUES (1, "Mark","Jonathan","Development","Game Director","350K","2000-01-19");


SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE employee_id=1;

SELECT * FROM employees;
ALTER TABLE employees
RENAME COLUMN department TO department_id;

ALTER TABLE employees
RENAME COLUMN job_title TO job_titleid;

ALTER TABLE employees
MODIFY COLUMN department_id int;

ALTER TABLE employees
MODIFY COLUMN job_titleid int;

CREATE TABLE Departments(
department_id int,
department_name VARCHAR(50)
);


CREATE TABLE JobTitles(
job_titleid INT,
department_id INT,
job_title VARCHAR(50)
);



