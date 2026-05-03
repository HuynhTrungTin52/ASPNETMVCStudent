Create database StudentsDB;
use StudentsDB;

CREATE TABLE tblStudents (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    EnrollmentDate DATE NOT NULL
); 

INSERT INTO tblStudents (FirstName, LastName, Email, EnrollmentDate) VALUES
('Trung', 'Pham', 'trung.pham@seuni.com', '2024-01-15'); 
INSERT INTO tblStudents (FirstName, LastName, Email, EnrollmentDate) VALUES
('Michael', 'Pham', 'michael.pham@seuni.com', '2024-02-20'); 

-- Database: SchoolDB[cite: 1]
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    Budget DECIMAL(18, 2) NOT NULL,
    StartDate DATE NOT NULL
); 

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL
); 

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Departments (DepartmentID)
); 

CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    EnrollmentDate DATE NOT NULL
); 

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    CourseID INT FOREIGN KEY REFERENCES Courses (CourseID),
    StudentID INT FOREIGN KEY REFERENCES Students (StudentID),
    Grade DECIMAL(3, 2)
); 

INSERT INTO Departments (Name, Budget, StartDate) VALUES ('Computer Science', 120000.00, '2023-01-01'); 
INSERT INTO Instructors (FirstName, LastName, HireDate) VALUES ('John', 'Doe', '2020-08-15'); 
INSERT INTO Courses (Title, Credits, DepartmentID) VALUES ('Introduction to Programming', 3, 1); 
INSERT INTO Students (FirstName, LastName, EnrollmentDate) VALUES ('Jane', 'Smith', '2023-09-01'); 
INSERT INTO Enrollments (CourseID, StudentID, Grade) VALUES (1, 1, 3.5); 


