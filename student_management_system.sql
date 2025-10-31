-- Student Management System (Pure SQL Project)

-- Create tables
CREATE TABLE Students11 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    instructor VARCHAR(50)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
);

-- Insert sample data
INSERT INTO Students11 (student_id, name, age, gender, department) VALUES
(1, 'Riya Mehta', 20, 'Female', 'Computer Science'),
(2, 'Arjun Singh', 21, 'Male', 'Mechanical'),
(3, 'Neha Patil', 22, 'Female', 'IT'),
(4, 'Raj Verma', 20, 'Male', 'Civil'),
(5, 'Simran Joshi', 23, 'Female', 'Electronics');

INSERT INTO Courses (course_id, course_name, instructor) VALUES
(1, 'Database Management', 'Dr. Sharma'),
(2, 'Operating Systems', 'Prof. Iyer'),
(3, 'Data Structures', 'Dr. Nair'),
(4, 'Machine Learning', 'Dr. Rao');

INSERT INTO Marks (mark_id, student_id, course_id, marks) VALUES
(1, 1, 1, 85),
(2, 1, 2, 78),
(3, 2, 1, 92),
(4, 2, 3, 74),
(5, 3, 4, 88),
(6, 4, 2, 81),
(7, 5, 3, 95),
(8, 5, 4, 89);



-- 1. Display all students
SELECT * FROM Students11;

-- 2. Display all courses
SELECT * FROM Courses;

-- 3. Display student marks with course name
SELECT s.name, c.course_name, m.marks
FROM Marks m
JOIN Students11 s ON m.student_id = s.student_id
JOIN Courses c ON m.course_id = c.course_id;

-- 4. Average marks per student
SELECT s.name, ROUND(AVG(m.marks),2) AS average_marks
FROM Students11 s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.name;

-- 5. Students scoring above 85
SELECT s.name, c.course_name, m.marks
FROM Marks m
JOIN Students11 s ON m.student_id = s.student_id
JOIN Courses c ON m.course_id = c.course_id
WHERE m.marks > 85;

-- 6. Department-wise student count
SELECT department, COUNT(*) AS student_count
FROM Students11
GROUP BY department;

-- 7. Highest marks per course
SELECT c.course_name, MAX(m.marks) AS top_score
FROM Marks m
JOIN Courses c ON m.course_id = c.course_id
GROUP BY c.course_name;

-- 8. Top 3 students by average marks
SELECT s.name, ROUND(AVG(m.marks),2) AS avg_marks
FROM Students11 s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.name
ORDER BY avg_marks DESC
LIMIT 3;

-- 9. Average marks per department
SELECT s.department, ROUND(AVG(m.marks),2) AS dept_avg
FROM Students11 s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.department;

-- 10. Courses with average marks above 80
SELECT c.course_name, ROUND(AVG(m.marks),2) AS avg_course_marks
FROM Marks m
JOIN Courses c ON m.course_id = c.course_id
GROUP BY c.course_name
HAVING avg_course_marks > 80;
