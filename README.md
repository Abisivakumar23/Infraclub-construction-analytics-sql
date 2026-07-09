Project Overview
This project simulates a real-world construction company database and performs end-to-end financial and operational analysis using SQL.

The objective is to evaluate project performance, budget utilization, expense tracking, workforce allocation, and client revenue contribution using structured relational data.

Database Structure
The database consists of 6 relational tables:

Projects
Clients
Contracts
Employees
Materials
Expenses
All tables are connected using primary and foreign key constraints to ensure data integrity.

Key Analysis Performed
Budget vs Actual Expense Comparison
Profit Estimation per Project
Client-wise Contract Value Analysis
Expense Distribution by Type
Employee Distribution per Project
Salary Analysis by Department
Monthly Expense Trend
Running Total using Window Functions
Ranking Projects by Contract Value
Key Observations & Business Insights
The company manages a total project portfolio worth ₹54.10 Crores.
Total contract value secured stands at ₹55.80 Crores, indicating strong revenue potential.
Current total expenses are ₹8.45 Crores, which is approximately 15.6% of the total allocated budget, showing controlled early-stage spending.
The highest value project is Electronic City Flyover Package 3 (₹15.50 Crores contract value).
Government clients contribute a major portion of total contract revenue, highlighting revenue concentration.
Material expenses form the largest cost component across projects.
No project has exceeded its allocated budget.
Estimated profits remain positive across all projects at the current execution stage.
SQL Concepts Used
JOINs (INNER JOIN, USING)
GROUP BY & HAVING
Aggregate Functions (SUM, AVG, COUNT)
CASE Statements
Window Functions (RANK, SUM OVER)
Date Functions
Budget Utilization Calculations
Tools Used
MySQL
Relational Database Design
SQL Analytics
Outcome
This project demonstrates how SQL can be used to monitor financial performance, estimate profitability, track operational efficiency, and generate actionable business insights in a construction company scenario.

How to Run
Create the database.
Execute the table creation scripts.
Insert the sample data.
Run the analytical queries.
Modify queries to perform additional business analysis.
⭐ Feel free to fork the repository and explore additional analytical scenarios.
