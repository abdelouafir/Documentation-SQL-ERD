--EXECESE 1 ;
INSERT INTO patient (firstName, lastName, gender, Data_of_brth, phone_number, email, adresse)
VALUES
('Alex', 'Johnson', 'Male', '1990-07-15', '1234567890', 'alex.johnson@example.com', 'USA, Oled Talb Char Na'),
('Maria', 'Smith', 'Female', '1985-03-22', '9876543210', 'maria.smith@example.com', 'Canada, Maple Street 123'),
('John', 'Doe', 'Male', '1992-11-08', '5678901234', 'john.doe@example.com', 'UK, London Bridge 45'),
('Sara', 'Connor', 'Female', '2000-09-10', '8901234567', 'sara.connor@example.com', 'USA, New York Central 12'),
('Liam', 'Brown', 'Male', '1995-01-30', '3456789012', 'liam.brown@example.com', 'Australia, Sydney Harbour 88');
SELECT * FROM patient

-- EXERCICE 2 
SELECT departmentName,location
FROM departments

-- exercece 3 
SELECT * FROM patient
ORDER BY Data_of_brth DESC

-- exercice 4 
SELECT * FROM doctors
LIMIT 3

-- exercece 5 
SELECT * FROM patient 
WHERE Data_of_brth <'2000-12-31'

-- exercece 6 
WHERE spisialisation = 'CARDIOLOGY' OR spisialisation = 'NEUROLOGY'

--  exercece 7 
SELECT *
FROM patient
WHERE Data_of_brth BETWEEN '1990-12-01' AND '2000-12-07';

-- exereces 8 
SELECT * FROM admissions
WHERE admissionDate
BETWEEN '2023-12-01' AND '2024-02-07'

-- exerces 9 
SELECT *,
CASE 
WHEN age < 20 THEN 'Enfant'
ELSE 'Senior'
END AS catigorer 
FROM patient;

--rxerces 10 
SELECT COUNT(*) AS total_rendezvous
FROM appointments;
-- exerces 11 
SELECT departmentID, COUNT(*) AS number_of_doctors
FROM doctors
GROUP BY departmentID;
-- exereces 12 
SELECT AVG(age) AS average_age
FROM patient;
--exercese 13
SELECT MAX(appointmentDate) AS last_appointment_date
FROM appointments;
--exereces 14
SELECT roomID, COUNT(*) AS total_admissions
FROM admissions
GROUP BY roomID;
-- exerces 15 
SELECT * FROM patient
WHERE email = '' or email IS NULL 
--EXERCES 16 
DELETE FROM appointments
WHERE appointmentsDate < '2024-01-01'

--EXERCES 18 
UPDATE departments 
SET departmentName = 'Cancer Treatment'
WHERE departmentName = 'Oncology'
 
 -- EXERCESE 19
SELECT gender, COUNT(*) AS patient_count
FROM patient
GROUP BY gender
HAVING COUNT(*) >= 2;

-- exercece 20
CREATE VIEW active_admissions AS
SELECT patientID, roomID, admissionDate, dishrgeDate
FROM admissions
WHERE dishrgeDate >= CURDATE();