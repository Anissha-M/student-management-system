-- Step 1: Create Database
CREATE DATABASE student_management;

-- Step 2: Use the database
USE student_management;

-- Step 3: Create the student table
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100),
    marks DECIMAL(5, 2)
);
