-- Create the CompanyDB database
CREATE DATABASE CompanyDB;
GO

-- Switch to the CompanyDB database
USE CompanyDB;
GO

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    JobTitle NVARCHAR(50),
    Department NVARCHAR(50),
    HireDate DATE
);
GO

-- Insert sample data into the Employees table
INSERT INTO Employees (FirstName, LastName, Email, JobTitle, Department, HireDate)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', 'Software Developer', 'IT', '2021-06-15'),
    ('Jane', 'Smith', 'jane.smith@example.com', 'HR Manager', 'HR', '2020-01-20'),
    ('Emily', 'Jones', 'emily.jones@example.com', 'Project Manager', 'Operations', '2019-11-01'),
    ('Michael', 'Brown', 'michael.brown@example.com', 'Data Analyst', 'IT', '2022-08-10'),
    ('Sarah', 'Davis', 'sarah.davis@example.com', 'Marketing Specialist', 'Marketing', '2018-09-25');
GO
