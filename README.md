<div align="center">

# 🗄️ Database Optimization
A professional SQL project focused on **query optimization** and **database performance improvement**.

[![SQL](https://img.shields.io/badge/SQL-MySQL-blue)](https://www.mysql.com/)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-black?logo=github)](https://github.com/AkilSelot/Database-Optimization)

</div>

---

## 🔍 Project Overview
The goal of this project is to improve database performance by:

- Optimizing SQL queries for speed  
- Designing efficient data models with indexes  
- Testing query performance on large datasets  

This serves as a portfolio example of practical SQL optimization techniques for **real-world business reporting**.

---

## ✨ Key Features
- Optimized queries for faster execution  
- Indexing and table design improvements  
- Schema design for relational databases  
- Scripts to test query performance  
- Clean and organized project structure  

---

## 🛠 Tools & Technologies
- SQL (MySQL / PostgreSQL compatible)  
- Database schema design  
- Query performance analysis  
- Power BI / Excel (optional for visual reporting)  

---

## 📁 Repository Structure
```
Database-Optimization
├── schema.sql → Database tables and structure
├── queries.sql → Optimized queries for testing
├── README.md → Project documentation
└── images/
    ├── schema/ → Schema screenshots
    │   ├── Screenshot 2026-02-04 235725.png
    │   ├── Screenshot 2026-02-05 000149.png
    │   └── Screenshot 2026-02-05 000308.png
    └── performance/ → Query performance screenshots
```

---

## 🖼 Screenshots / Examples

### Schema Screenshots
Click to view schema images:

[![Schema1](images/schema/Screenshot%202026-02-04%20235725.png)](images/schema/Screenshot%202026-02-04%20235725.png)  
[![Schema2](images/schema/Screenshot%202026-02-05%20000149.png)](images/schema/Screenshot%202026-02-05%20000149.png)  
[![Schema3](images/schema/Screenshot%202026-02-05%20000308.png)](images/schema/Screenshot%202026-02-05%20000308.png)

<details>
<summary>SQL Schema Example (click to expand)</summary>

```sql
-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
```
</details>

---

### Query Performance Screenshots
Click to view query execution screenshots:

[View Performance Screenshot Folder](images/performance/)

<details>
<summary>Example Queries (queries.sql)</summary>

```sql
-- Query 1: Select top 10 customers by total sales
SELECT CustomerID, SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSales DESC
LIMIT 10;

-- Query 2: Find slow queries 
EXPLAIN SELECT * FROM Orders WHERE OrderDate > '2026-01-01';

-- Query 3: Optimize table by adding index
CREATE INDEX idx_order_date ON Orders(OrderDate);
```
</details>

---

## 🚀 Getting Started
1. Clone the repository:

```bash
git clone https://github.com/AkilSelot/Database-Optimization.git
```

2. Open `schema.sql` to create the database tables in MySQL or MariaDB.

3. Open `queries.sql` to test and optimize queries.

4. Optionally, view screenshots in `/images/schema/` and `/images/performance/`.

---

## 👤 Author
**Akil Selot**  
Data Analyst
