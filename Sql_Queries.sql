CREATE TABLE Employee(
	employee_id INT,
	employee_name VARCHAR(100),
	gender VARCHAR(10),
	age INT,
	department VARCHAR(50),
	job_role VARCHAR(50),
	education VARCHAR(20),
	salary NUMERIC,
	joining_date DATE,
	experience_years INT,
	performance_rating INT
);

CREATE TABLE Attrition(
	employee_id INT,
	attrition VARCHAR(5),
	attrition_reason VARCHAR(50)
);

CREATE TABLE Attendance(
	employee_id INT,
	attendance_percentage INT,
	overtime_hours INT,
	work_mode VARCHAR(20)
);

CREATE TABLE Training(
	employee_id INT,	
	trainings_completed INT,
	training_hours INT
);

--Total Employees
SELECT COUNT(*) AS total_employee
FROM employee;

--Average Salary
SELECT ROUND(AVG(salary),2) AS average_salary
FROM employee;

--Department-wise Employee Count
SELECT department, COUNT(employee_id)AS Employee_count
FROM employee
GROUP BY department
ORDER BY Employee_count DESC;

--Attrition Rate
SELECT ROUND(
COUNT(CASE WHEN attrition = 'Yes' THEN 1 END)*100.0
/ COUNT(*),2) AS Attrition_rate
FROM attrition;

--Department With Highest Attrition
SELECT e.department, 
COUNT(*)AS attrition_count
FROM employee e
JOIN attrition a
ON e.employee_id = a.employee_id
WHERE a.attrition = 'Yes'
GROUP BY e.department
ORDER BY attrition_count DESC;

--Average Salary By Department
SELECT department, 
ROUND(AVG(salary),2)AS avg_salary
FROM employee
GROUP BY department
ORDER BY avg_salary DESC;

--Overtime vs Attrition
SELECT a.attrition,
ROUND(AVG(ats.overtime_hours),2)AS avg_overtime
FROM attrition a 
JOIN attendance ats
ON a.employee_id =  ats.employee_id
GROUP BY a.attrition ;

--Training vs Performance
SELECT e.performance_rating,
ROUND(AVG(t.training_hours),2) AS avg_training
FROM employee e
JOIN training t 
ON e.employee_id = t.employee_id
GROUP BY e.performance_rating
ORDER BY e.performance_rating ;

--Highest Paid Employees
SELECT employee_name, department, salary
FROM employee
ORDER BY salary DESC
LIMIT 10;

--Work Mode Distribution
SELECT work_mode,
COUNT(*)AS total_employee
FROM attendance
GROUP BY work_mode ;
