SQL Bug Tracking System & Data Analysis
📌 Project Overview
This project demonstrates the creation and management of a relational database designed for Quality Assurance (QA) purposes. It simulates a real-world scenario where bug reports are logged, updated, and linked to specific testers using PostgreSQL.

🛠 Tech Stack
Database: PostgreSQL

Tool: pgAdmin 4

Language: SQL

Output Formats: .sql (Script), .csv (Report)

🔍 Key Features & SQL Concepts Used
Data Definition (DDL): Creating structured tables (Testers and Bugs) with appropriate data types and constraints (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK).

Data Manipulation (DML): Inserting realistic sample data to simulate a live testing environment and performing UPDATE operations to reflect bug status changes.

Relational Mapping: Implementing a One-to-Many relationship between testers and bug reports.

Advanced Querying: Utilizing INNER JOIN to generate comprehensive reports that bridge data between multiple tables.

Data Export: Exporting query results into CSV format for professional stakeholder reporting.

📂 Project Structure
bug_tracking_setup.sql: The full SQL script containing schema creation, data population, and analysis queries.

bug_report_output.csv: An exported report showing the final joined data, demonstrating the results of the SQL analysis.

Author: Gordana Grubic
Goal: Showcase SQL proficiency for QA Engineering roles.
