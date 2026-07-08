CREATE DATABASE student_management;

USE student_management;


CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100),
    marks DECIMAL(5, 2)
);
