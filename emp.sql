CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    hire_date DATE,
    city VARCHAR(50),
    email VARCHAR(100)
);


INSERT INTO employee
(
    first_name,
    last_name,
    gender,
    department,
    salary,
    hire_date,
    city,
    email
)
SELECT
    'Employee' || gs,
    'Last' || gs,
    CASE
        WHEN gs % 2 = 0 THEN 'Male'
        ELSE 'Female'
    END,
    CASE
        WHEN gs % 5 = 0 THEN 'HR'
        WHEN gs % 5 = 1 THEN 'IT'
        WHEN gs % 5 = 2 THEN 'Finance'
        WHEN gs % 5 = 3 THEN 'Sales'
        ELSE 'Marketing'
    END,
    ROUND((30000 + random() * 70000)::numeric, 2),
    CURRENT_DATE - ((random() * 2000)::int),
    CASE
        WHEN gs % 4 = 0 THEN 'Hyderabad'
        WHEN gs % 4 = 1 THEN 'Bangalore'
        WHEN gs % 4 = 2 THEN 'Mumbai'
        ELSE 'Chennai'
    END,
    'employee' || gs || '@company.com'
FROM generate_series(1,150) gs;




SELECT * FROM employee;




SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 10;


Select *
from  employee
where department = 'Fin'
ORDER BY salary DESC
LIMIT 5;




SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rn
    FROM employee
) t
WHERE department = 'Finance'
  AND rn <= 2;


# GROUP BY
  SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department;


