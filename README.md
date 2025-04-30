# 🏞️ Parks and Recreation SQL Project

This project uses a fictional HR dataset to demonstrate SQL skills for data analysis.

## 📂 Project Overview

We analyze employee demographics, salaries, and department data using:

- **JOINs**: Combining employee and department details
- **Window Functions**: `DENSE_RANK` to rank salaries by gender
- **CASE Statements**: Classifying salary brackets and bonuses
- **CTEs**: Filtering and combining data for older employees
- **UNION ALL**: Labeling groups like “expensive”, “OLD MAN”, and “OLD lady”
- **Temporary Tables**: Creating and querying `OLD_and_expensive`

## 🗃️ Database Structure

- `employee_demographics`: Employee ID, name, age, gender, birthdate
- `employee_salary`: Job title, salary, department ID
- `parks_departments`: Department names and IDs

## 🧠 Key SQL Concepts Practiced

- Data joins across multiple tables
- Conditional logic with `CASE`
- Creating and using common table expressions (CTEs)
- Data classification and ranking
- Temporary table creation

## 🚀 How to Run

1. Run the SQL script to create the database and insert data.
2. Execute the queries step-by-step in your SQL environment (e.g., MySQL Workbench, DBeaver, etc.).

## 📌 Use Case

Perfect for beginners to intermediate SQL learners who want to practice on a structured HR dataset with realistic queries and challenges.

---

Feel free to fork or modify the project to experiment further!
