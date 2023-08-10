
-- Create the database at the specified location with initial size and auto growth settings
CREATE DATABASE OurExerciseDb
ON PRIMARY (
    NAME = N'OurExerciseDb',
    FILENAME = N'F:\Training Stuff\Database_ASP.NET\Assignments\1\OurExerciseDb.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON (
    NAME = N'OurExerciseDb_log',
    FILENAME = N'F:\Training Stuff\Database_ASP.NET\Assignments\1\OurExerciseDb.ldf'
);

-- Use the newly created database
USE OurExerciseDb

-- Create the StudentRegistrations table with the specified columns
CREATE TABLE StudentRegistrations (
    StudentId INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    PRIMARY KEY (StudentId, CourseCode)
);

-- Insert records into the StudentRegistrations table
INSERT INTO StudentRegistrations (StudentId, CourseCode, RegistrationDate)
VALUES
    (1, N'CS101', '2023-08-01'),
    (2, N'MATH201', '2023-08-02'),
    (3, N'ENG101', '2023-08-03'),
    (4, N'PHY301', '2023-08-04'),
    (5, N'HIST101', '2023-08-05');
	
-- For show the data .
	SELECT * from StudentRegistrations