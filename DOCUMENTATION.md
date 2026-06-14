# Documentation - Library Management System

## Project Overview
This project demonstrates:
- Relational Database Design
- SQL Queries (SELECT, JOIN, GROUP BY, ORDER BY)
- Data Integrity using Foreign Keys
- Real-world Business Logic

## Database Design Explanation

### Why These 3 Tables?
1. **Books Table** - Stores book information
2. **Students Table** - Stores student details
3. **Issue_Records Table** - Tracks borrowing history

### Relationships
- One Book → Many Issue Records (1:N)
- One Student → Many Issue Records (1:N)

## Key Queries Explained

### 1. Issued Books Query
Shows which student borrowed which book and when
- Uses: INNER JOINs on multiple tables
- Business Value: Track active borrowing

### 2. Non-Returned Books
Identifies books still with students
- Uses: WHERE clause with NULL check
- Business Value: Follow up with students

### 3. Most Issued Books
Ranks books by popularity
- Uses: GROUP BY, COUNT(), ORDER BY
- Business Value: Procurement decisions

## Future Enhancements
- Add fine calculation for late returns
- Implement renewal functionality
- Add book categories/genres
- Create stored procedures
