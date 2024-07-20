use collegemanagementsystem;
CREATE TABLE Faculty (
    F_id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Mobile_No VARCHAR(15),
    Salary DECIMAL(10, 2),
    Department VARCHAR(100)
);

CREATE TABLE Student (
    S_id INT PRIMARY KEY,
    Sname VARCHAR(100),
    Contact_no VARCHAR(15),
    Email VARCHAR(100),
    Gender VARCHAR(10),
    F_id INT,
    FOREIGN KEY (F_id) REFERENCES Faculty(F_id)
);

CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
    D_name VARCHAR(100)
);

CREATE TABLE Course (
    Course_id INT PRIMARY KEY,
    Course_name VARCHAR(100),
    Duration INT,
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

CREATE TABLE Subjects (
    Subject_id INT PRIMARY KEY,
    Subject_name VARCHAR(100),
    F_id INT,
    FOREIGN KEY (F_id) REFERENCES Faculty(F_id)
);

CREATE TABLE Exams (
    Exam_code INT PRIMARY KEY,
    Room_no VARCHAR(10),
    Time TIME,
    Date DATE,
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

