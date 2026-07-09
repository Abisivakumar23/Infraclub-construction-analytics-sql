InfraClub Construction Analytics SQL

## Project Overview

This project simulates a real-world construction company database and performs end-to-end financial and operational analysis using SQL.

The primary objective is to evaluate project performance, budget utilization, expense tracking, workforce allocation, and client revenue contribution using structured relational data. The project demonstrates how SQL can transform operational data into meaningful business insights for decision-making.

---

## Database Structure

The database consists of six relational tables:

-  Projects
-  Clients
-  Contracts
-  Employees
-  Materials
-  Expenses

All tables are connected using **Primary Keys** and **Foreign Keys** to maintain referential integrity and ensure accurate data relationships.

---

## Key Analysis Performed

The project includes SQL queries to analyze:

- Budget vs Actual Expense Comparison
- Profit Estimation per Project
- Client-wise Contract Value Analysis
- Expense Distribution by Type
- Employee Distribution per Project
- Salary Analysis by Department
- Monthly Expense Trend
- Running Total using Window Functions
- Ranking Projects by Contract Value

---

## Business Insights

After performing the analysis, the following insights were observed:

-  Total project portfolio value: **₹54.10 Crores**
-  Total contract value secured: **₹55.80 Crores**
-  Total expenses incurred: **₹8.45 Crores**
-  Expenses represent approximately **15.6%** of the total allocated budget, indicating controlled spending during the current project phase.
-  **Electronic City Flyover Package 3** is the highest-value project with a contract value of **₹15.50 Crores**.
-  Government clients contribute the majority of contract revenue, indicating a high dependency on public-sector projects.
-  Material procurement forms the largest component of project expenses.
-  No project has exceeded its allocated budget.
-  All projects currently maintain positive estimated profitability.

---

## SQL Concepts Used

This project demonstrates practical usage of:

- SELECT Statements
- INNER JOIN
- USING Clause
- GROUP BY
- HAVING
- Aggregate Functions (`SUM`, `AVG`, `COUNT`)
- CASE Statements
- Window Functions
  - `RANK()`
  - `SUM() OVER()`
- Date Functions
- Budget Utilization Calculations
- Profit Estimation Logic

---

## Tools & Technologies

- **MySQL**
- **SQL**
- **Relational Database Design**
- **Git**
- **GitHub**

---

## Project Structure

```
infraclub-construction-analytics-sql/
│
├── Database/
│   ├── create_tables.sql
│   ├── insert_data.sql
│
├── Queries/
│   ├── budget_analysis.sql
│   ├── expense_analysis.sql
│   ├── client_analysis.sql
│   ├── employee_analysis.sql
│   ├── project_analysis.sql
│
├── README.md
```

---

## How to Run

1. Clone this repository.

```bash
git clone https://github.com/your-username/infraclub-construction-analytics-sql.git
```

2. Create a new MySQL database.

3. Execute the table creation script.

4. Insert the sample data into the tables.

5. Run the SQL analysis queries.

6. Modify or extend the queries to perform additional business analysis.

---

## Learning Outcomes

This project demonstrates how SQL can be applied to:

- Analyze construction project performance
- Monitor budget utilization
- Track operational expenses
- Estimate project profitability
- Evaluate client contributions
- Measure workforce allocation
- Generate business-ready insights from relational databases

---

## Future Enhancements

- Build an interactive Power BI dashboard
- Create Tableau visualizations
- Add Stored Procedures and Views
- Include Index Optimization
- Perform Advanced SQL Analytics
- Integrate Python for automated reporting


## Support

If you found this project useful, consider giving it a ⭐ on GitHub!

---

## License

This project is created for educational and portfolio purposes.
