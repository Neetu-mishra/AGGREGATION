DROP DATABASE company;
CREATE DATABASE company;
USE company;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    age INT
);

-- 2) Insert sample data
INSERT INTO employees (id, name, department, salary, age) VALUES
(1, 'John', 'HR', 50000.00, 29),
(2, 'Sara', 'IT', 70000.00, 31),
(3, 'Mike', 'Finance', 60000.00, 35),
(4, 'Ayesha', 'HR', 55000.00, 28),
(5, 'David', 'IT', 72000.00, 33),
(6, 'Sam', 'Finance', 65000.00, 32),
(7, 'Sophia', 'IT', 68000.00, 30),
(8, 'Rita', 'Marketing', 48000.00, 27),
(9, 'Paul', 'Marketing', 52000.00, 29),
(10,'Lia', 'IT', 71000.00, 34);

-- 1. Sum of salaries by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 2. Average salary by department (rounded)
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Count of employees by department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 4. Distinct departments count
SELECT COUNT(DISTINCT department) AS distinct_departments
FROM employees;

-- 5. Highest salary by department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 6. Departments having average salary > 60000
SELECT department, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- 7. Group by multiple columns (department + age group example)
SELECT department,
       CASE WHEN age < 30 THEN 'Under30' WHEN age BETWEEN 30 AND 34 THEN '30-34' ELSE '35plus' END AS age_group,
       COUNT(*) AS cnt,
       ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY department, age_group
ORDER BY department, age_group;

-- 8. How many employees earn more than 60000 (use WHERE)
SELECT COUNT(*) AS employees_over_60000
FROM employees
WHERE salary > 60000;

-- 9. Count distinct names (example)
SELECT COUNT(DISTINCT name) AS distinct_names FROM employees;