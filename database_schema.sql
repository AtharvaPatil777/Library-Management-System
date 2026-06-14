-- Create database and tables
CREATE DATABASE Library_Management;
USE Library_Management;

CREATE TABLE books(
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(40),
    available_copies INT 
);

CREATE TABLE students(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(40),
    department VARCHAR(50)
);

CREATE TABLE issue_records(
    issue_id INT PRIMARY KEY,
    issue_date DATE,
    return_date DATE,
    book_id INT,
    student_id INT,
    FOREIGN KEY(book_id) REFERENCES books(book_id),
    FOREIGN KEY(student_id) REFERENCES students(student_id)
);
