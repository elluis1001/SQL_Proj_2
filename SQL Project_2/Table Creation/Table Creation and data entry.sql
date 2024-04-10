---CREATION OF PATIENT TABLES AND INSERTING OF INFORMATION COPY OF CODE---

--Create A Patient Demographic Table:

CREATE TABLE Patient_Dem
	(PatientID int,
	First_Name varchar (50),
	Last_Name varchar (50),
	Gender varchar (50),
	Age int,
	Insurance varchar (50)
	)

--Create a patients' results table:
CREATE TABLE Patient_Res
	(PatientID int,
	First_Name varchar (50),
	Last_Name varchar (50),
	Glucose int,
	bmi int,
	HgA1c int
	)

--Insert Patient Demographics:

INSERT INTO Patient_Dem VALUES
	(01, 'Jamal', 'Ferguson', 'Male', 24, 'Tricare'),
	(02, 'Imani', 'Diaz', 'Female', 24, 'Tricare'),
	(03, 'Joyce', 'Witherspoon', 'Female', 36, 'Trinity'),
	(04, 'Miguel', 'Sanchez', 'Male', 42, 'Tricare'),
	(05, 'Valeria', 'Santos', 'Female', 29, 'Trinity'),
	(06, 'Tom', 'Riddle', 'Male', 21, 'Trinity-West'),
	(07, 'Jason', 'Douglas', 'Male', 27, 'Trinity'),
	(08, 'John', 'Peterson', 'Male', 19, 'Tricare-West'),
	(09, 'Marcus', 'Ferguson', 'Male', 28, 'Tricare-West'),
	(10, 'Peter', 'Joy', 'Male', 34, 'Tricare-East'),
	(11, 'Manny', 'Manuel', 'Male', 26, 'Tricare-West'),
	(12, 'Liam', 'Patel', 'Male', 37, 'Aetna'),
	(13, 'Sophia', 'Nguyen', 'Female', 19, 'Medicaid'),
	(14, 'Ethan', 'Rodriguez', 'Male', 42, 'Cigna'),
	(15, 'Ava', 'Lee', 'Female', 51, 'Medicare'),
	(16, 'Noah', 'Gonzalez', 'Male', 28, 'Blue Cross Blue Shield'),
	(17, 'Isabella', 'Gupta', 'Female', 63, 'United Healthcare'),
	(18, 'Mason', 'Kim', 'Male', 33, 'Humana'),
	(19, 'Mia', 'Singh', 'Female', 47, 'Kaiser Permanente'),
	(20, 'William', 'Hernandez', 'Male', 56, 'Anthem'),
	(21, 'Emma', 'Tran', 'Female', 22, 'Uninsured'),
	(22, 'Benjamin', 'Jackson', 'Male', 39, 'Aetna'),
	(23, 'Charlotte', 'Mehta', 'Female', 45, 'Cigna'),
	(24, 'Elijah', 'Wong', 'Male', 31, 'Tricare'),
	(25, 'Amelia', 'Garcia', 'Female', 58, 'Medicare'),
	(26, 'James', 'Chen', 'Male', 26, 'Blue Cross Blue Shield'),
	(27, 'Harper', 'Patel', 'Female', 49, 'United Healthcare'),
	(28, 'Lucas', 'Kim', 'Male', 35, 'Humana'),
	(29, 'Evelyn', 'Nguyen', 'Female', 60, 'Kaiser Permanente'),
	(30, 'Henry', 'Gomez', 'Male', 29, 'Medicaid'),
	(31, 'Ella', 'Gupta', 'Female', 53, 'Anthem')

--Insert Patient information and Results:
INSERT INTO Patient_Res VALUES
	(01, 'Jamal', 'Ferguson', 100, 25, 5),
	(02, 'Imani', 'Diaz', 120, 28, 6),
	(03, 'Joyce', 'Witherspoon', 95, 23, 4),
	(04, 'Miguel', 'Sanchez', 110, 27, 5),
	(05, 'Valeria', 'Santos', 130, 30, 6),
	(06, 'Tom', 'Riddle', 90, 22, 4),
	(07, 'Jason', 'Douglas', 115, 26, 5),
	(08, 'John', 'Peterson', 105, 24, 5),
	(09, 'Marcus', 'Ferguson', 125, 29, 6),
	(10, 'Peter', 'Joy', 98, 23, 5),
	(11, 'Manny', 'Manuel', 140, 31, 7),
	(12, 'Liam', 'Patel', 92, 24, 4),
	(13, 'Sophia', 'Nguyen', 118, 27, 6),
	(14, 'Ethan', 'Rodriguez', 108, 26, 5),
	(15, 'Ava', 'Lee', 135, 32, 7),
	(16, 'Noah', 'Gonzalez', 102, 25, 5),
	(17, 'Isabella', 'Gupta', 128, 29, 6),
	(18, 'Mason', 'Kim', 95, 23, 4),
	(19, 'Mia', 'Singh', 122, 28, 6),
	(20, 'William', 'Hernandez', 112, 27, 5),
	(21, 'Emma', 'Tran', 132, 30, 6),
	(22, 'Benjamin', 'Jackson', 98, 24, 5),
	(23, 'Charlotte', 'Mehta', 117, 26, 5),
	(24, 'Elijah', 'Wong', 106, 25, 5),
	(25, 'Amelia', 'Garcia', 139, 33, 7),
	(26, 'James', 'Chen', 93, 23, 4),
	(27, 'Harper', 'Patel', 126, 29, 6),
	(28, 'Lucas', 'Kim', 101, 24, 5),
	(29, 'Evelyn', 'Nguyen', 134, 31, 7),
	(30, 'Henry', 'Gomez', 96, 22, 4),
	(31, 'Ella', 'Gupta', 121, 28, 6);

--Joining of both tables:
SELECT
    pd.PatientID,
    pd.First_Name,
    pd.Last_Name,
    pd.Gender,
    pd.Age,
    pd.Insurance,
    pr.Glucose,
    pr.bmi,
    pr.HgA1c
FROM
    Patient_Dem pd
    JOIN Patient_Res pr ON pd.PatientID = pr.PatientID;
	
	