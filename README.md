# HR Analytics Dashboard

## Project Overview

This project is an interactive HR Analytics Dashboard built using PostgreSQL, SQL, and Power BI. The dashboard provides insights into employee demographics, attrition trends, salary distribution, attendance performance, and department-level analysis.

The objective of this project is to demonstrate data analysis, SQL querying, data modeling, and dashboard development skills by transforming raw HR data into meaningful business insights.

---

## Tools Used

- PostgreSQL
- SQL
- Power BI
- Excel / CSV

---

## Dataset

The dataset contains employee-related information across multiple tables:

### Employee
- Employee ID
- Employee Name
- Gender
- Department
- Job Role
- Salary
- Joining Date
- Experience Years
- Performance Rating

### Attendance
- Employee ID
- Attendance Percentage
- Overtime Hours

### Attrition
- Employee ID
- Attrition Status

### Training
- Employee ID
- Training Hours
- Training Programs Completed

---

## Database Design

Relationships were created using:

sql--
employee_id


Tables:

- employee
- attendance
- attrition
- training

---

## SQL Analysis Performed

Some of the business questions answered using SQL:

### Employee Analysis
- Total Employees
- Employees by Department
- Employees by Gender
- Average Salary by Department

### Attrition Analysis
- Attrition Count
- Attrition Rate
- Attrition by Department

### Performance Analysis
- Average Performance Rating
- Performance by Department
- Attendance vs Performance

### Attendance Analysis
- Average Attendance Percentage
- Overtime Analysis

---

## Power BI Dashboard Features

### KPI Cards
- Total Employees
- Average Salary
- Attrition Rate
- Average Attendance
- Average Performance

### Visualizations
- Employees by Department
- Attrition by Department
- Average Salary by Department
- Employee Details Table

### Filters
- Department Slicer
- Gender Slicer

---

## Key Insights

- Operations department has the highest employee count.
- Attrition varies across departments.
- Salary distribution differs between departments.
- Employee attendance and performance can be monitored through interactive filtering.

---

## Project Structure

<pre>```

HR-Analytics-Dashboard
│
├── Dataset
│   ├── Employee.csv
│   ├── Attendance.csv
│   ├── Attrition.csv
│   └── Training.csv
│
├── SQL
│   └── hr_queries.sql
│
├── PowerBI
│   └── HR_Analytics_Dashboard.pbix
│
├── Screenshots
│   └── dashboard.png
│
└── README.md
  ```</pre>


---

## Skills Demonstrated

- Data Cleaning
- Data Modeling
- SQL Querying
- PostgreSQL
- Power BI
- Data Visualization
- KPI Development
- Dashboard Design

---

## Author

Aanchal

Aspiring Data Analyst | Power BI | SQL | PostgreSQL
