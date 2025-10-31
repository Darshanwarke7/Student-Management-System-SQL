Student Management System (Pure SQL Project)
Overview

The Student Management System is a SQL-based project designed to manage student, course, and performance data efficiently.
It demonstrates the use of relational database concepts, normalization, and SQL operations such as joins, aggregations, and filters to extract meaningful insights.
The project focuses on building a structured data model and performing analytical queries on student records.

Project Description

This project simulates a basic college or university database containing three core entities — students, courses, and marks.
It enables efficient management of student details, course offerings, and their corresponding performance.
The system also provides analytical insights like top-performing students, department-wise averages, and course-level performance.

Database Design

The database consists of the following three main tables:

Students11: Stores information about students, including ID, name, age, gender, and department.

Courses: Contains details of available courses and their respective instructors.

Marks: Records the marks obtained by students in each course.

These tables are related through primary and foreign keys, allowing for relational queries and data integrity.

Features and Functionalities

Displays complete student and course information.

Retrieves marks for each student along with course details.

Calculates average marks per student and per department.

Identifies students scoring above a specific threshold (e.g., above 85).

Determines the highest marks achieved in each course.

Lists the top three students based on their average marks.

Computes department-wise student counts and average performance.

Displays courses where the overall average marks exceed a set limit.

Key Highlights

Demonstrates strong understanding of relational database design.

Uses SQL joins, groupings, and aggregations effectively.

Focuses on performance-based analytics within a normalized schema.

Provides real-world insights applicable to academic management systems.

Fully implemented using pure SQL queries — no programming language required.

Learning Objectives

Through this project, one can learn:

How to design and normalize SQL tables.

How to implement relationships between entities using keys.

How to use aggregate functions like AVG, COUNT, and MAX for analysis.

How to apply filtering, sorting, and grouping to derive insights.

How to extract meaningful results from structured data.

How to Use

Set up a SQL environment such as MySQL, XAMPP, or PostgreSQL.

Create a new database and execute the SQL script containing table creation, data insertion, and analytical queries.

Review outputs for each query to observe student and course insights.

Future Enhancements

Integration with a front-end interface for better interactivity.

Addition of features like attendance tracking and student registration.

Implementation of stored procedures and triggers for automation.

Connection with real-world datasets for predictive analytics.
