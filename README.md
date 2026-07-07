# 🎓 Student Management System

A **Student Management System** built using **Spring Boot**, **Spring Data JPA**, and **MySQL** that provides RESTful APIs to perform **Create, Read, Update, and Delete (CRUD)** operations on student records.

This project demonstrates backend development concepts including REST APIs, layered architecture, database integration, and API testing using Postman.

---

## 🚀 Features

* Add a new student
* View all students
* View a student by ID
* Update student details
* Delete a student
* RESTful API architecture
* MySQL database integration
* Spring Data JPA for database operations
* API testing with Postman

---

## 🛠️ Tech Stack

* Java 17
* Spring Boot
* Spring Data JPA
* MySQL
* Maven
* Postman
* Spring Tool Suite (STS)

---

## 📂 Project Structure

```text
student-management/
├── pom.xml
├── database/
│   └── schema.sql
├── postman/
│   └── Student_Management.postman_collection.json
└── src/
    └── main/
        ├── java/
        │   └── com/example/studentmanagement/
        │       ├── controller/
        │       │   └── StudentController.java
        │       ├── service/
        │       │   └── StudentService.java
        │       ├── repository/
        │       │   └── StudentRepository.java
        │       ├── model/
        │       │   └── Student.java
        │       └── StudentManagementApplication.java
        └── resources/
            └── application.properties
```

---

## ⚙️ Database Setup

Create a MySQL database:

```sql
CREATE DATABASE student_management;
USE student_management;
```

Create the table:

```sql
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100),
    marks DECIMAL(5,2)
);
```

---

## ⚙️ Configure MySQL

Update `src/main/resources/application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/student_management
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

> If you are using XAMPP, the default password is usually blank.

---

## ▶️ Run the Application

Clone the repository:

```bash
git clone https://github.com/your-username/student-management-system.git
```

Navigate to the project:

```bash
cd student-management-system
```

Run using Maven:

```bash
mvn spring-boot:run
```

Or open the project in **Spring Tool Suite (STS)** and run:

```
StudentManagementApplication.java
```

The application will start on:

```
http://localhost:8080
```

> If port 8080 is already in use, change the port in `application.properties`.

---

## 📬 API Endpoints

| Method | Endpoint             | Description       |
| ------ | -------------------- | ----------------- |
| POST   | `/api/students`      | Create a student  |
| GET    | `/api/students`      | Get all students  |
| GET    | `/api/students/{id}` | Get student by ID |
| PUT    | `/api/students/{id}` | Update student    |
| DELETE | `/api/students/{id}` | Delete student    |

---

## 📌 Sample Request

### Create Student

```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "course": "Computer Science",
  "marks": 90.5
}
```

### Response

```json
{
  "id": 1,
  "name": "John Doe",
  "email": "john@example.com",
  "course": "Computer Science",
  "marks": 90.5
}
```

---

## 🧪 Testing

The APIs can be tested using:

* Postman
* Thunder Client (VS Code)

A ready-to-use Postman collection is included in the `postman` folder.

---

## 📦 Maven Dependencies

* Spring Boot Starter Web
* Spring Boot Starter Data JPA
* MySQL Connector/J
* Spring Boot DevTools

---

## 📚 Concepts Demonstrated

* REST API Development
* CRUD Operations
* Spring Boot
* Spring Data JPA
* Repository Pattern
* Service Layer
* Dependency Injection
* MySQL Database Connectivity
* Maven Project Structure

---


