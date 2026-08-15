# Week 1 — SQL with SQLite

During Week 1 of my DevJoint Data Analytics Internship, I worked with the Northwind database in SQLite.

The main objective was to explore relational data, write structured SQL queries, and answer business-oriented questions using different SQL methods.

[Open the completed SQL queries](./queries.sql)

---

## Overview

In this project, I:

* Explored the database tables and their relationships
* Filtered and sorted records based on task requirements
* Calculated totals, averages, and record counts
* Grouped data to compare categories, customers, and products
* Combined related tables using SQL JOIN operations
* Used CTEs, subqueries, and window functions
* Reviewed query optimization using an index
* Added comments explaining the purpose of the main queries

---

## SQL Concepts Applied

* **Data Filtering:** `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`, and `IS NULL`
* **Data Aggregation:** `SUM`, `AVG`, `COUNT`, `GROUP BY`, and `HAVING`
* **Table Relationships:** `INNER JOIN`, `LEFT JOIN`, and `SELF JOIN`
* **Advanced Queries:** Subqueries and Common Table Expressions (`CTE`)
* **Window Functions:** `ROW_NUMBER`, `RANK`, and cumulative calculations
* **Query Optimization:** Index creation and query restructuring

---

## Business Questions Addressed

The SQL queries were prepared to complete the following analytical tasks:

* Filter orders by product, discount, region, city, country, date, freight, and order value
* Combine product, category, order, supplier, and employee data using different JOIN operations
* Calculate category-level totals, averages, and product counts
* Identify products with total quantities above the overall average
* Rank product records and calculate cumulative quantities
* Compare product prices with category averages
* Review query optimization using an index and JOIN

---

## Checkpoint Evidence

The screenshots below show the executed SQL queries and their results for each checkpoint.

<details>
<summary><strong>Checkpoint 1 — SELECT, WHERE, ORDER BY and LIMIT</strong></summary>

![Checkpoint 1 SQL result](./screenshots/checkpoint-01-select-filter.jpeg)

</details>

<details>
<summary><strong>Checkpoint 2 — JOIN Operations</strong></summary>

![Checkpoint 2 SQL result](./screenshots/checkpoint-02-joins.jpeg)

</details>

<details>
<summary><strong>Checkpoint 3 — GROUP BY and HAVING</strong></summary>

![Checkpoint 3 SQL result](./screenshots/checkpoint-03-group-by-having.jpeg)

</details>

<details>
<summary><strong>Checkpoint 4 — CTE and Subquery</strong></summary>

![Checkpoint 4 SQL result](./screenshots/checkpoint-04-cte-subquery.jpeg)

</details>

<details>
<summary><strong>Checkpoint 5 — Window Functions</strong></summary>

![Checkpoint 5 SQL result](./screenshots/checkpoint-05-window-functions.jpeg)

</details>

<details>
<summary><strong>Checkpoint 6 — Query Optimization</strong></summary>

![Checkpoint 6 SQL result](./screenshots/checkpoint-06-query-optimization.jpeg)

</details>

---

## Project Files

| File           | Description                                      |
| -------------- | ------------------------------------------------ |
| `README.md`    | Overview and documentation of the Week 1 project |
| `queries.sql`  | Completed SQL queries with comments              |
| `northwind.db` | Northwind SQLite database used in the analysis   |
| `screenshots/` | Screenshots of the executed queries and results  |

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

The SQL queries, database, and supporting screenshots are available in this folder.

---

## Author

**Yalchin Hasanov**
Junior Data Analyst
