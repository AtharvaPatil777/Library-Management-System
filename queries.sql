-- All your SQL queries here
-- Issued Books
SELECT s.student_name, b.title, i.issue_date
FROM issue_records i 
JOIN students s ON i.student_id = s.student_id
JOIN books b ON i.book_id = b.book_id;

-- Books Not Returned
SELECT * FROM issue_records WHERE return_date IS NULL;

-- Most Issued Books
SELECT b.title, COUNT(*) AS issue_count 
FROM issue_records i 
JOIN books b ON i.book_id = b.book_id
GROUP BY b.title
ORDER BY issue_count DESC;

-- Most Active Students
SELECT s.student_name, COUNT(*) AS book_count 
FROM issue_records i 
JOIN students s ON i.student_id = s.student_id 
GROUP BY s.student_name 
ORDER BY book_count DESC;

-- Available Books
SELECT title, available_copies FROM books WHERE available_copies > 0;
