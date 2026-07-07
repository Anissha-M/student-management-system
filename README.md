# Student Management System

A simple CRUD REST API built with **Spring Boot**, **MySQL**, and **Spring Data JPA**, testable via **Postman**.

## Project Structure

```
student-management/
├── pom.xml
├── database/
│   └── schema.sql                 # DB + table creation script
├── postman/
│   └── Student_Management.postman_collection.json
└── src/main/
    ├── java/com/example/studentmanagement/
    │   ├── StudentManagementApplication.java
    │   ├── model/Student.java
    │   ├── repository/StudentRepository.java
    │   ├── service/StudentService.java
    │   └── controller/StudentController.java
    └── resources/
        └── application.properties
```

## 1. Setup MySQL Database

1. Install MySQL if you haven't already.
2. Run the script in `database/schema.sql` (via MySQL Workbench or CLI):

```sql
CREATE DATABASE student_management;
USE student_management;

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100),
    marks DECIMAL(5, 2)
);
```

## 2. Configure the Application

Edit `src/main/resources/application.properties` and set your MySQL username/password:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/student_management
spring.datasource.username=root
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

## 3. Run the Project

You need **Java 17+** and **Maven** installed.

```bash
cd student-management
mvn spring-boot:run
```

The app starts on **http://localhost:8080**.

> Note: Since `spring.jpa.hibernate.ddl-auto=update`, Hibernate will also auto-create/update the `student` table if it doesn't already exist — running `schema.sql` manually is optional but recommended for clarity.

## 4. Test the API with Postman

Import `postman/Student_Management.postman_collection.json` into Postman, or test manually:

| Action | Method | URL |
|---|---|---|
| Create student | POST | `http://localhost:8080/api/students` |
| Get all students | GET | `http://localhost:8080/api/students` |
| Get student by ID | GET | `http://localhost:8080/api/students/{id}` |
| Update student | PUT | `http://localhost:8080/api/students/{id}` |
| Delete student | DELETE | `http://localhost:8080/api/students/{id}` |

### Sample Create (POST) body

```json
{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "course": "Computer Science",
  "marks": 85.5
}
```

### Sample Update (PUT) body

```json
{
  "name": "Jane Doe",
  "email": "jane.doe@example.com",
  "course": "Mathematics",
  "marks": 91.0
}
```

## Dependencies (added via Spring Initializr)

- Spring Web
- Spring Data JPA
- MySQL Driver
- Spring Boot DevTools
