create database INFRACLUB_PVT_LTD;
use INFRACLUB_PVT_LTD;

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(150) NOT NULL,
    project_type VARCHAR(50) NOT NULL,
    location VARCHAR(150) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget DECIMAL(15,2) NOT NULL,
    status VARCHAR(30) CHECK (status IN ('Ongoing', 'Completed', 'On Hold'))
);
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(150) NOT NULL,
    client_type VARCHAR(50) CHECK (client_type IN ('Government', 'Private')),
    contact_person VARCHAR(100),
    contact_email VARCHAR(150),
    city VARCHAR(100) NOT NULL
);
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    designation VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


CREATE TABLE Contracts (
    contract_id INT PRIMARY KEY,
    project_id INT NOT NULL,
    client_id INT NOT NULL,
    contract_value DECIMAL(15,2) NOT NULL,
    signed_date DATE,
    deadline DATE,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Materials (
    material_id INT PRIMARY KEY,
    material_name VARCHAR(150) NOT NULL,
    supplier_name VARCHAR(150),
    unit_cost DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);
CREATE TABLE Expenses (
    expense_id INT PRIMARY KEY,
    project_id INT NOT NULL,
    expense_type VARCHAR(50) CHECK (expense_type IN ('Material', 'Labor', 'Equipment')),
    amount DECIMAL(15,2) NOT NULL,
    expense_date DATE,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO Projects 
(project_id, project_name, project_type, location, start_date, end_date, budget, status)
VALUES
(1, 'Rajajinagar Heights', 'Residential', 'Rajajinagar, Bengaluru', '2025-07-15', '2027-09-30', 85000000, 'Ongoing'),

(2, 'Whitefield Tech Park Extension', 'Commercial', 'Whitefield, Bengaluru', '2025-08-01', '2028-01-15', 120000000, 'Ongoing'),

(3, 'Shivamogga Riverfront Residency', 'Residential', 'Shivamogga', '2025-09-10', '2027-12-25', 65000000, 'Ongoing'),

(4, 'Sirsi Agro Warehousing Hub', 'Industrial', 'Sirsi', '2025-10-18', '2027-06-30', 48000000, 'Ongoing'),

(5, 'Ballari Steel Logistics Yard', 'Industrial', 'Ballari', '2025-11-12', '2027-08-10', 73000000, 'Ongoing'),

(6, 'Electronic City Flyover Package 3', 'Infrastructure', 'Electronic City, Bengaluru', '2026-01-20', '2028-11-28', 150000000, 'Ongoing');

INSERT INTO Employees
(emp_id, emp_name, designation, department, salary, hire_date, project_id)
VALUES
(101, 'Naveen Kumar', 'Project Manager', 'Operations', 95000, '2025-07-05', 1),

(102, 'Harshitha Gowda', 'Site Engineer', 'Civil', 55000, '2025-07-20', 1),

(103, 'Rohith Shetty', 'Structural Engineer', 'Design', 72000, '2025-08-15', 2),

(104, 'Keerthana Hegde', 'Planning Engineer', 'Planning', 68000, '2025-09-01', 3),

(105, 'Vikram Reddy', 'Procurement Manager', 'Supply Chain', 80000, '2025-10-10', 4),

(106, 'Aishwarya Bhat', 'QA/QC Engineer', 'Quality', 60000, '2025-11-19', 5),

(107, 'Sharan Prabhu', 'Safety Officer', 'Safety', 50000, '2026-01-05', 6),

(108, 'Deepika Nayak', 'HR Executive', 'HR', 45000, '2025-08-10', 2);


INSERT INTO Contracts
(contract_id, project_id, client_id, contract_value, signed_date, deadline)
VALUES
(201, 1, 2, 87000000, '2025-07-10', '2027-09-30'),

(202, 2, 5, 125000000, '2025-07-25', '2028-01-15'),

(203, 3, 3, 66000000, '2025-08-20', '2027-12-25'),

(204, 4, 3, 50000000, '2025-09-30', '2027-06-30'),

(205, 5, 4, 75000000, '2025-10-20', '2027-08-10'),

(206, 6, 5, 155000000, '2026-01-10', '2028-11-28');


INSERT INTO Expenses
(expense_id, project_id, expense_type, amount, expense_date)
VALUES
(401, 1, 'Material', 12000000, '2025-08-10'),

(402, 1, 'Labor', 4500000, '2025-09-12'),

(403, 2, 'Material', 20000000, '2025-09-20'),

(404, 3, 'Equipment', 8000000, '2025-11-14'),

(405, 4, 'Labor', 3500000, '2025-12-18'),

(406, 5, 'Material', 15000000, '2026-01-05'),

(407, 6, 'Equipment', 22000000, '2026-02-22');

INSERT INTO Clients
(client_id, client_name, client_type, contact_person, contact_email, city)
VALUES
(1, 'Karnataka Housing Board', 'Government', 'Raghavendra Rao', 'raghavendra.rao@khb.gov.in', 'Bengaluru'),

(2, 'Bhoomi Developers Pvt Ltd', 'Private', 'Sushmitha Shetty', 'sushmitha@bhoomidev.in', 'Mysuru'),

(3, 'Malnad Agro Infrastructure Ltd', 'Private', 'Prashanth Hegde', 'prashanth@malnadagro.in', 'Shivamogga'),

(4, 'Ballari Industrial Consortium', 'Private', 'Manjunath Reddy', 'manjunath@bic.in', 'Ballari'),

(5, 'Bruhat Bengaluru Mahanagara Palike', 'Government', 'Anitha Gowda', 'anitha.gowda@bbmp.gov.in', 'Bengaluru');


INSERT INTO Materials
(material_id, material_name, supplier_name, unit_cost, stock_quantity)
VALUES
(301, 'ACC Cement', 'ACC Limited - Karnataka', 380, 5000),

(302, 'TMT Steel Bars', 'JSW Steel Ballari', 62000, 200),

(303, 'M-Sand', 'Tavarekere Aggregates', 1200, 800),

(304, 'Red Bricks', 'Mandya Brick Works', 8, 25000),

(305, 'Concrete Blocks', 'Shivamogga Blocks Pvt Ltd', 45, 15000);

select * from projects;
select * from clients;
select * from contracts;
select * from employees;
select * from materials;
select * from expenses;

SELECT 
    p.project_name,
    c.client_name,
    ct.contract_value
FROM Contracts ct
JOIN Projects p ON ct.project_id = p.project_id
JOIN Clients c ON ct.client_id = c.client_id;

#QUERIES
#1.What is the total allocated budget for ongoing projects?
select sum(budget) as total_allocated_budget from projects where status='Ongoing';

#2.What is the total expense incurred for each project?
select project_name,sum(amount) as total_expense from expenses ex join projects p using(project_id) group by project_name;

#3.Compare allocated budget vs actual expense.
select project_name,budget,
ifnull(sum(e.amount),0) as total_expense,
(p.budget-ifnull(sum(e.amount),0)) as remaining_budget from expenses e join projects p using(project_id) group by project_id;

#4.Which projects have exceeded their budget?
select project_name,budget,sum(amount) as total_expense from expenses e join projects p using(project_id) group by project_id having sum(amount)>budget;

#5.Which project has the highest contract value?
select project_name,contract_value from contracts c join projects p using(project_id) order by contract_value desc limit 1;

#6.Rank Projects by Contract Value (Window Function)
select project_name,contract_value,rank() over(order by contract_value desc) as contract_rnk from projects p join contracts c using(project_id);

#7.Top 3 Highest Paid Employees Per Department
select * from(
select emp_name,department,salary,rank() over(partition by department order by salary) as salary_rank from employees)
ranked where salary_rank<=3;

#8.Average Salary by Department
select department,avg(salary) as avg_salary from employees group by department;

#9.Monthly Expense Trend
select date_format(expense_date,'%y-%m') as month,sum(amount) as total_expense from expenses group by month order by month;

#10.Expense Distribution by Type
select expense_type,sum(amount) as total_expense from expenses group by expense_type;

#11.Employee Count Per Project
select project_name,count(emp_id) as emp_count from employees e join projects p using(project_id) group by project_name;

#12.Client-wise Total Contract Value
select client_name,sum(contract_value) as total_contract_value from clients c join contracts using(client_id) group by client_name;

#13.Most Expensive Project (Based on Actual Expense)
select project_name,sum(amount) as total_expenses from projects p join expenses e using(project_id) group by project_name order by sum(amount) desc limit 1;

#14.Running Total of Expenses Per Project (Advanced)
select project_id, expense_date,amount,sum(amount) over(partition by project_id order by expense_date) as running_total from expenses;

#15.Profit Estimation Per Project
select p.project_name,c.contract_value,ifnull(sum(amount),0) as total_expense,(contract_value-ifnull(sum(amount),0)) as estimated_profit from projects p join contracts c using(project_id) join expenses e using(project_id) group by p.project_id, p.project_name, c.contract_value;

#16.Projects by Location (Inside vs Outside Bengaluru)
select case 
       when location like '%Bengaluru%' then 'Bengaluru'
       else 'Outside Bengaluru'
       end as project_zone,
       count(*) as total_projects
 from projects
 group by project_zone;
 select * from projects;
 
 #17.Projects Ending in Next 2 Year
 select project_name,end_date from projects where end_date<=date_add(curdate(), interval 2 year);
 
 #18.Employees Hired After 2026
 select emp_name,hire_date from employees where hire_date>='2026-01-01';
 
 #19.Project with Maximum Employees
 select project_name,count(emp_id) as emp_count from projects p join employees e using(project_id) group by project_id order by emp_count desc limit 1;
 
 #20.Percentage of Budget Utilized
 select project_name,round(sum(amount)/budget*100,2) as budget_utilization_percent from projects p join expenses e using(project_id) group by project_id;

