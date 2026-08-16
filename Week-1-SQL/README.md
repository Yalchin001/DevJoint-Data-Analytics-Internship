# Week 1 — SQL with SQLite

During Week 1 of my DevJoint Data Analytics Internship, I worked with the Northwind database in SQLite.

The objective was to explore relational data, write SQL queries, and answer business questions using filtering, JOINs, aggregation, subqueries, window functions, and query optimization.

[Open the completed SQL queries](./queries.sql)

---

## Overview

In this project, I:

* Filtered and sorted product and order records
* Combined related tables using `INNER JOIN`, `LEFT JOIN`, and `SELF JOIN`
* Used ID-based relationships where the required keys were available
* Calculated sales using price, quantity, and discount data
* Grouped results by categories and customers
* Used CTEs and subqueries for multi-step analysis
* Applied window functions within product categories
* Compared query plans before and after creating an index
* Replaced a correlated subquery with a more efficient JOIN

---

## SQL Concepts Applied

* **Filtering and Sorting:** `SELECT`, `WHERE`, `BETWEEN`, `TRIM`, `ORDER BY`, and `LIMIT`
* **Aggregation:** `SUM`, `AVG`, `COUNT`, `ROUND`, `GROUP BY`, and `HAVING`
* **Table Relationships:** `INNER JOIN`, `LEFT JOIN`, and self-join
* **Advanced Queries:** CTEs, subqueries, and correlated subqueries
* **Window Functions:** `RANK`, `ROW_NUMBER`, `SUM OVER`, and `PARTITION BY`
* **Query Optimization:** `CREATE INDEX`, `DROP INDEX`, `EXPLAIN QUERY PLAN`, and query restructuring

---

## Business Questions Addressed

The SQL queries were written to complete the following analytical tasks:

* Filter orders by product, discount, location, date, freight, and calculated order value
* Combine product, category, order, supplier, and employee information
* Calculate category sales using price, quantity, and discount
* Identify the five customers with the highest total sales
* Find products whose total ordered quantity is above the overall average
* Rank products by price within their categories
* Calculate cumulative stock value for each category
* Compare query plans before and after creating an index
* Compare a correlated subquery with an optimized JOIN version

---

## Checkpoint Evidence

The sections below contain selected query results for each checkpoint.

<details>
<summary><strong>Checkpoint 1 — SELECT, WHERE, ORDER BY and LIMIT</strong></summary>

### Latest French orders

![Latest French orders sorted by OrderDate](./screenshots/checkpoint-01-question-03.png)

### Products with the highest calculated order value

![Products sorted by calculated order value](./screenshots/checkpoint-01-question-05.png)

</details>

<details>
<summary><strong>Checkpoint 2 — JOIN Operations</strong></summary>

### LEFT JOIN

![Product and order information combined with LEFT JOIN](./screenshots/checkpoint-02-left-join.png)

### INNER JOIN

![Products above the average price combined with related information](./screenshots/checkpoint-02-inner-join.png)

### Self-join

![Employees displayed with their managers](./screenshots/checkpoint-02-self-join.png)

</details>

<details>
<summary><strong>Checkpoint 3 — GROUP BY and HAVING</strong></summary>

### Sales by category

![Category sales aggregation](./screenshots/checkpoint-03-category-sales.png)

### Top five customers by sales

![Top customers by total sales](./screenshots/checkpoint-03-top-customers.png)

</details>

<details>
<summary><strong>Checkpoint 4 — CTE and Subquery</strong></summary>

### Products above the average ordered quantity

![CTE and subquery result](./screenshots/checkpoint-04-cte-subquery.png)

</details>

<details>
<summary><strong>Checkpoint 5 — Window Functions</strong></summary>

### RANK

![Products ranked by price within each category](./screenshots/checkpoint-05-rank.png)

### ROW_NUMBER

![Products assigned unique row numbers within each category](./screenshots/checkpoint-05-row-number.png)

### Running stock value

![Cumulative stock value within each category](./screenshots/checkpoint-05-running-stock-value.png)

</details>

<details>
<summary><strong>Checkpoint 6 — Query Optimization</strong></summary>

### Query plan before index creation

![Query plan showing a table scan](./screenshots/checkpoint-06-before-index.png)

### Query plan after index creation

![Query plan showing index usage](./screenshots/checkpoint-06-after-index.png)

### Correlated subquery

![Correlated subquery result](./screenshots/checkpoint-06-correlated-subquery.png)

### Optimized JOIN

![Optimized JOIN result](./screenshots/checkpoint-06-optimized-join.png)

</details>

---

## Project Files

| File           | Description                                      |
| -------------- | ------------------------------------------------ |
| `README.md`    | Overview and documentation of the Week 1 project |
| `queries.sql`  | Completed SQL queries with explanations          |
| `northwind.db` | Northwind SQLite database used in the analysis   |
| `screenshots/` | Executed queries and result screenshots          |

---

## Tools Used

* SQLite
* SQL
* DB Browser for SQLite
* Northwind Database
* GitHub

---

## Status

**Week 1 has been completed and evaluated.**

The folder contains the reviewed SQL queries, supporting database, and updated result screenshots.

---

## Author

**Yalchin Hasanov**
Junior Data Analyst
