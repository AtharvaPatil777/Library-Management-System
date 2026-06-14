# Library-Management-System

A comprehensive SQL-based library management system designed to handle book inventory, student records, and book issuance tracking.

## Features
- **Book Management**: Track book inventory and availability
- **Student Database**: Manage student information and departments
- **Issue Tracking**: Record book issuance and return dates
- **Analytics Queries**:
  - Find most issued books
  - Identify most active students
  - Track unreturned books
  - Check available inventory

## Project Structure
- `database_schema.sql` - Table definitions and relationships
- `sample_data.sql` - Sample data for testing
- `queries.sql` - Business logic queries

## Database Schema

### Books Table
- book_id (PK)
- title
- author
- available_copies

### Students Table
- student_id (PK)
- student_name
- department

### Issue Records Table
- issue_id (PK)
- issue_date
- return_date
- book_id (FK)
- student_id (FK)

## How to Use
1. Create the database: `source database_schema.sql`
2. Insert sample data: `source sample_data.sql`
3. Run queries: `source queries.sql`

## Key Queries
- Find unreturned books
- Most issued books ranking
- Student borrowing history
- Available books inventory

## Technologies Used
- MySQL/SQL
- Relational Database Design
- JOIN Operations
- Aggregate Functions

## Future Enhancements
- Add fine calculation for late returns
- Implement user authentication
- Create web interface with backend
- Add book categories/genres
